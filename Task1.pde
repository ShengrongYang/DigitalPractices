void setup() {
  size(1000, 1000);
  background(166, 67, 45);
}

int side = 1000;

void draw() {
  noStroke();
  // Layer 1
  fill(217, 208, 199);
  arc(side/2, side/2, side/2, side/2, radians(90), radians(270));
  fill(75, 137, 191);
  arc(side/2, side/2, side/2, side/2, radians(-90), radians(90));
  // Layer 2
  fill(38, 38, 38);
  arc(side/2, side/2, side/3, side/3, radians(90), radians(270));
  fill(217, 170, 82);
  arc(side/2, side/2, side/3, side/3, radians(-90), radians(90));
  // Layer 3
  fill(205, 133, 117);
  arc(side/2, side/2, side/6, side/6, radians(-90), radians(90));
  // Layer 4
  fill(166, 67, 45);
  triangle(side/2-6, side/2+6/3*4/2, side/2, side/2-6/3*4/2, side/2, side/2+6/3*4/2);
  fill(38, 38, 38);
  triangle(side/2+6, side/2+6/3*4/2, side/2, side/2-6/3*4/2, side/2, side/2+6/3*4/2);
}
