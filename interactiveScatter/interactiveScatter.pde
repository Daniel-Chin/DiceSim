static final int FRAMERATE = 60;
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
boolean during_transition;
float transition_progress;
Scatter destinationScatter;

void setup() {
  size(1400, 1000);
  frameRate(FRAMERATE);
  ORIGIN_X = int(_ORIGIN_X * width);
  ORIGIN_Y = int(_ORIGIN_Y * height);
  I_TERM   = int(_I_TERM   * width);
  J_TERM   = int(_J_TERM   * height);

  rectMode(CORNERS);
  noStroke();
  fill(0, 0, 0, 100);

  setupScatters();

  theScatter = zoom_out;
  during_transition = false;
}

void draw() {
  background(255);
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
  theScatter = child;
}

void onClickParent() {
  theScatter = theScatter.parent;
}
