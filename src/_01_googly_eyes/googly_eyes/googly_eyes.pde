
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
  System.out.println(mouseY);
  
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
  
  int x = mouseX+10;
  if (mouseX >= 181 && mouseX <= 240 && mouseY >= 250 && mouseY <= 283){
  fill(0,0,0);
  ellipse(mouseX, mouseY, 10, 10);
  ellipse(mouseX + 180, mouseY, 10, 10);
  }
  else if (mouseX < 190){
  fill(0,0,0);
  ellipse(190, mouseY, 10, 10);
  ellipse(190 + 180, mouseY, 10, 10);
  }
  else if (mouseX > 240){
  fill(0,0,0);
  ellipse(240, mouseY, 10, 10);
  ellipse(240 + 170, mouseY, 10, 10);
  }
  //y limit 250, 283
}
