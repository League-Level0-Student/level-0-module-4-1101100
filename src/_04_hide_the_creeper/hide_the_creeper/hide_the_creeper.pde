PImage creeper;     //at the top of your program
int cX = 400;
int cY = 300;
void setup() {
  size(800, 600); //in setup method
  PImage minecraft = loadImage("minecraft.png");     //in setup method
  minecraft.resize(width, height);          //in setup method
  background(minecraft);          //in setup method
  creeper=loadImage("creeper.png");     //in setup method
  creeper.resize(10, 10);     //in setup method

}

void draw() {
 image(creeper, cX, cY);     
  if(mousePressed && isNear(mouseX, cX) && isNear(mouseY, cY)) {
    fill(0,255,0);
    noStroke();
    ellipse(mouseX, mouseY, 25, 25);
    println("You found it!");
  }

  else if(mousePressed) {
    fill(255,0,0);
    noStroke();
    ellipse(mouseX, mouseY, 25, 25);
  }
}
boolean isNear(int a, int b) {
if (abs(a - b) < 10)
     return true;
else
     return false;
}
