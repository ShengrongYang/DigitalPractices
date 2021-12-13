void setup() {
  size(800, 800);
  background(256, 256, 256);
  //colorMode(RGB);
  //background(random(255), 255, 255);
  strokeWeight(1);
}

FloatList walk(float xloc, float yloc, float angle, float length) {
  FloatList loc = new FloatList();
  loc.append(xloc);
  loc.append(yloc);
  loc.append(length*cos(radians(angle))+xloc);
  loc.append(yloc-length*sin(radians(angle)));
  return loc;
}

float corner = 1000;
float steplength = 0.001;
int steps = 10000;

void draw() {
  FloatList dd = walk(width/2, height/2, 0, steplength);
  for (int i = 0; i < steps; i++) { //<>//
    //strokeWeight(random(3, 10));
    //stroke(random(255), random(255), random(255));
    if(i == 0){
      line(width/2, height/2, width/2+steplength, height/2);
    }
    else{
      line(dd.get(0), dd.get(1), dd.get(2), dd.get(3));
      dd = walk(dd.get(2), dd.get(3), i%corner*(360/corner), steplength*(i+1));
    }
  }
  noLoop();
  save("1000.jpg");
}
