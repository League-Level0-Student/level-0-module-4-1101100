
void setup() {
  PImage face = loadImage("bob.jpg");
  size(800,600);
  face.resize(width,height);
  background(face);
  fill(255,255,255);
  noStroke();
  ellipse(381, 266, 73, 60);
  fill(255,255,255);
  noStroke();
  ellipse(203, 268, 38, 53);
}

void draw() {
  System.out.println("x value " + mouseX + " y value " + mouseY);
  
  PImage face = loadImage("bob.jpg");
  size(800,600);
  face.resize(width,height);
  background(face);
    fill(255,255,255);
  noStroke();
  ellipse(381, 266, 73, 60);
  fill(255,255,255);
  noStroke();
  ellipse(203, 268, 38, 53);
  
  if (mouseX > 197 && mouseX < 240 && mouseY >= 250 && mouseY <= 283){
  fill(0,0,0);
  ellipse(mouseX, mouseY, 10, 10);
  ellipse(mouseX + 180, mouseY, 10, 10);
  }
  else if (mouseX <= 197){
  fill(0,0,0);
  ellipse(197, mouseY, 10, 10);
  ellipse(197 + 180, mouseY, 10, 10);
  }
  else if (mouseX >= 241){
  fill(0,0,0);
  ellipse(241, mouseY, 10, 10);
  ellipse(241 + 180, mouseY, 10, 10);
  }
  //y limit 250, 283
  else if (mouseY <= 250){
  fill(0,0,0);
  ellipse(mouseX, 250, 10, 10);
  ellipse(mouseX + 180, 250, 10, 10);
  }
  else if (mouseY >= 283){
  fill(0,0,0);
  ellipse(mouseX, 283, 10, 10);
  ellipse(mouseX + 180, 283, 10, 10);
  }
}
