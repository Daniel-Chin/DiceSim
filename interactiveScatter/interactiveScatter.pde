static final int FPS = 30;
static final float TRANSITION_DURATION = 1f;

static final float _ORIGIN_X = .13;
static final float _ORIGIN_Y = .891;
static final float _I_HAT = .775;
static final float _J_HAT = -.815;
static float _I_TERM = _ORIGIN_X + _I_HAT;
static float _J_TERM = _ORIGIN_Y + _J_HAT;
static int ORIGIN_X;
static int ORIGIN_Y;
static int I_TERM;
static int J_TERM;

// Global states
Scatter theScatter;
float transition_progress;
int transition_direction;
Scatter biggerScatter;

void setup() {
  size(1400, 1000);
  println("SETUP");
  frameRate(FPS);
  ORIGIN_X = int(_ORIGIN_X * width);
  ORIGIN_Y = int(_ORIGIN_Y * height);
  I_TERM   = int(_I_TERM   * width);
  J_TERM   = int(_J_TERM   * height);

  rectMode(CORNERS);
  noStroke();
  fill(0, 0, 0, 100);

  setupScatters();

  theScatter = zoom_out;
  transition_direction = 0;
  println("DONE");
}

void draw() {
  background(255);
  if (transition_direction != 0) {
    transition_progress += transition_direction / float(FPS) / TRANSITION_DURATION;
    if (transition_progress >= 1 || transition_progress <= 0) {
      if (transition_direction == -1) {
        theScatter = biggerScatter;
      }
      transition_direction = 0;
    } else {
      drawTransition();
      return;
    }
  }
  image(theScatter.img, 0f, 0f, width, height);
  for (Scatter child : theScatter.children) {
    rect(
      map(child.x0, theScatter.x0, theScatter.x1, ORIGIN_X, I_TERM), 
      map(child.y0, theScatter.y0, theScatter.y1, ORIGIN_Y, J_TERM), 
      map(child.x1, theScatter.x0, theScatter.x1, ORIGIN_X, I_TERM), 
      map(child.y1, theScatter.y0, theScatter.y1, ORIGIN_Y, J_TERM)
    );
  }
}

void mousePressed() {
  float left  ; 
  float top   ; 
  float right ; 
  float bottom; 
  boolean hit = false;
  for (Scatter child : theScatter.children) {
    left   = map(child.x0, theScatter.x0, theScatter.x1, ORIGIN_X, I_TERM); 
    bottom = map(child.y0, theScatter.y0, theScatter.y1, ORIGIN_Y, J_TERM); 
    right  = map(child.x1, theScatter.x0, theScatter.x1, ORIGIN_X, I_TERM); 
    top    = map(child.y1, theScatter.y0, theScatter.y1, ORIGIN_Y, J_TERM);
    if (left < mouseX && mouseX < right) {
      if (top < mouseY && mouseY < bottom) {
        onClickChild(child);
        hit = true;
        break;
      }
    }
  }
  if (! hit) {
    onClickParent();
  }
  surface.setTitle(theScatter.name);
}

void onClickChild(Scatter child) {
  if (transition_direction != 0) return;
  transition_direction = 1;
  biggerScatter = theScatter;
  theScatter = child;
  transition_progress = 0f;
}

void onClickParent() {
  if (transition_direction != 0) return;
  if (theScatter.parent == null) return;
  transition_direction = -1;
  biggerScatter = theScatter.parent;
  transition_progress = 1f;
}

void drawTransition() {
  float skewed_progress = transition_progress;

  float the_width   = theScatter.x1 - theScatter.x0;
  float the_height  = theScatter.y1 - theScatter.y0;
  float bigger_width  = biggerScatter.x1 - biggerScatter.x0;
  float bigger_height = biggerScatter.y1 - biggerScatter.y0;
  float x_scale = exp(skewed_progress * log(bigger_width / the_width));
  float y_scale = exp(skewed_progress * log(bigger_height / the_height));
  
  float invariance_x = - (
    theScatter.x0 * biggerScatter.x1 - theScatter.x1 * biggerScatter.x0
  ) / (
    biggerScatter.x0 + theScatter.x1 - biggerScatter.x1 - theScatter.x0
  );
  float invariance_y = - (
    theScatter.y0 * biggerScatter.y1 - theScatter.y1 * biggerScatter.y0
  ) / (
    biggerScatter.y0 + theScatter.y1 - biggerScatter.y1 - theScatter.y0
  );

  pushMatrix();
  float _invar_x = map(invariance_x, biggerScatter.x0, biggerScatter.x1, ORIGIN_X, I_TERM); 
  float _invar_y = map(invariance_y, biggerScatter.y0, biggerScatter.y1, ORIGIN_Y, J_TERM); 
  translate(
    _invar_x * (1 - x_scale), 
    _invar_y * (1 - y_scale)
  );
  scale(x_scale, y_scale);

  //image(biggerScatter.img, 0, 0, width, height);

  tint(255, 255 * skewed_progress);
  image(theScatter.img, 
    map(
      theScatter.x0 - the_width * _ORIGIN_X / _I_HAT, 
      biggerScatter.x0, biggerScatter.x1, ORIGIN_X, I_TERM
    ), 
    map(
      theScatter.y0 - the_width * _ORIGIN_Y / _J_HAT, 
      biggerScatter.y0, biggerScatter.y1, ORIGIN_Y, J_TERM
    ), 
    map(
      theScatter.x1 + the_width * (1f - _ORIGIN_X - _I_HAT) / _J_HAT, 
      biggerScatter.x0, biggerScatter.x1, ORIGIN_X, I_TERM
    ), 
    map(
      theScatter.y1 + the_width * (1f - _ORIGIN_Y - _J_HAT) / _J_HAT, 
      biggerScatter.y0, biggerScatter.y1, ORIGIN_Y, J_TERM
    )
  );
  noTint();
  popMatrix();
}
