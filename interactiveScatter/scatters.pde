Scatter zoom_out            ;
Scatter zoom_more_out       ;
Scatter zoom_even_more_out  ;
Scatter tiny_island         ;
Scatter red_sea_2           ;
Scatter red_sea             ;
Scatter red_lake            ;
Scatter purple_corner       ;
Scatter party_3             ;
Scatter party_2             ;
Scatter party               ;
Scatter home                ;
Scatter blue_islands        ;
Scatter black_island_2      ;
Scatter black_island        ;
Scatter green_island_g      ;
Scatter green_island_g_2    ;
Scatter green_island_g_3    ;
Scatter green_island_g_4    ;
Scatter green_island_g_5    ;
Scatter green_island_g_6_1  ;
Scatter green_island_g_6_1_2;
Scatter green_island_g_6_2  ;
Scatter green_island_g_6_2_2;
Scatter green_island_g_6_2_3;
Scatter green_island_g_6_2_4;
Scatter green_island_g_6_3  ;
Scatter green_island_g_6_4  ;

class Scatter {
  String name;
  PImage img;
  float x0;
  float x1;
  float y0;
  float y1;
  ArrayList<Scatter> children;
  Scatter parent = null;

  Scatter(String name, float x0, float x1, float y0, float y1) {
    this.name = name;
    this.img = loadImage(dataPath(name + ".png"));
    this.x0 = x0;
    this.x1 = x1;
    this.y0 = y0;
    this.y1 = y1;
    this.children = new ArrayList<Scatter>();
  }

  void linkParent(Scatter parent) {
    parent.children.add(this);
    this.parent = parent;
  }
}

void setupScatters() {
  zoom_out             = new Scatter("zoom_out", 0, 1, 0, 1);
  zoom_more_out        = new Scatter("zoom_more_out", 0, 10, 0, 10);
  zoom_even_more_out   = new Scatter("zoom_even_more_out", 0, 100, 0, 100);
  tiny_island          = new Scatter("tiny_island", .0554, .0561, .0394, .04);
  red_sea_2            = new Scatter("red_sea_2", 1.4, 1.56, 3.95, 4.25);
  red_sea              = new Scatter("red_sea", 1, 2, 3.5, 4.5);
  red_lake             = new Scatter("red_lake", .055, .09, .065, .08);
  purple_corner        = new Scatter("purple_corner", 0.006, 0.0065, .0687, .0696);
  party_3              = new Scatter("party_3", .01975, .01984, .0182, .0183);
  party_2              = new Scatter("party_2", .0197, .0205, .0177, .0186);
  party                = new Scatter("party", .02, .026, .01, .02);
  home                 = new Scatter("home", 0, .1, 0, .1);
  blue_islands         = new Scatter("blue_islands", 0.003, 0.009, .06, .072);
  black_island_2       = new Scatter("black_island_2", .02112, .02124, .01632, .01646);
  black_island         = new Scatter("black_island", .021, .0213, .0163, .01675);
  green_island_g       = new Scatter("green_island/g", .055, .06, .035, .045);
  green_island_g_2     = new Scatter("green_island/g_2", .057, .0576, .042, .044);
  green_island_g_3     = new Scatter("green_island/g_3", .05725, .0573, .04358, .04372);
  green_island_g_4     = new Scatter("green_island/g_4", .057266, .057274, .043615, .043635);
  green_island_g_5     = new Scatter("green_island/g_5", .057269, .0572702, .043621, .043625);
  green_island_g_6_1   = new Scatter("green_island/g_6.1", .05726925, .05726935, .0436216, .043623);
  green_island_g_6_1_2 = new Scatter("green_island/g_6.1_2", .05726933, .057269345, .043622, .04362235);
  green_island_g_6_2   = new Scatter("green_island/g_6.2", .05726945, .0572696, .0436227, .0436236);
  green_island_g_6_2_2 = new Scatter("green_island/g_6.2_2", .057269465, .057269505, .04362288, .043623);
  green_island_g_6_2_3 = new Scatter("green_island/g_6.2_3", .057269464, .057269476, .0436229, .04362293);
  green_island_g_6_2_4 = new Scatter("green_island/g_6.2_4", .057269466, .0572694705, .043622917, .043622924);  // Float point error emerges
  green_island_g_6_3   = new Scatter("green_island/g_6.3", .0572695, .0572696, .043624, .0436244);
  green_island_g_6_4   = new Scatter("green_island/g_6.4", .05726956, .05726968, .0436232, .0436244);

  Scatter placeholder = green_island_g_5;

  zoom_out            .linkParent(zoom_more_out);
  zoom_more_out       .linkParent(zoom_even_more_out);
//zoom_even_more_out  .linkParent(null);
  tiny_island         .linkParent(green_island_g);
  red_sea_2           .linkParent(red_sea);
  red_sea             .linkParent(zoom_more_out);
  red_lake            .linkParent(home);
  purple_corner       .linkParent(blue_islands);
  party_3             .linkParent(party_2);
  party_2             .linkParent(party);
  party               .linkParent(home);
  home                .linkParent(zoom_out);
  blue_islands        .linkParent(home);
  black_island_2      .linkParent(black_island);
  black_island        .linkParent(party);
  green_island_g      .linkParent(home);
  green_island_g_2    .linkParent(green_island_g);
  green_island_g_3    .linkParent(green_island_g_2);
  green_island_g_4    .linkParent(green_island_g_3);
  green_island_g_5    .linkParent(green_island_g_4);
  green_island_g_6_1  .linkParent(green_island_g_5);
  green_island_g_6_1_2.linkParent(green_island_g_6_1);
  green_island_g_6_2  .linkParent(green_island_g_5);
  green_island_g_6_2_2.linkParent(green_island_g_6_2);
  green_island_g_6_2_3.linkParent(green_island_g_6_2_2);
  green_island_g_6_2_4.linkParent(green_island_g_6_2_3);
  green_island_g_6_3  .linkParent(green_island_g_5);
  green_island_g_6_4  .linkParent(green_island_g_5);
}
