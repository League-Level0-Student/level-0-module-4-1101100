import javax.swing.JOptionPane;
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
  //eye ball movement
  if (mouseX > 197 && mouseX < 234 && mouseY >= 250 && mouseY <= 283){
  fill(0,0,0);
  ellipse(mouseX, mouseY, 10, 10);
  ellipse(mouseX + 180, mouseY, 10, 10);
  }
  else if (mouseX <= 197){
    if (mouseY >= 250 &&  mouseY <= 283) {
      fill(0,0,0);
      ellipse(197, mouseY, 10, 10);
      ellipse(197 + 180, mouseY, 10, 10);
    } 
    else if (mouseY < 250) {
      fill(0,0,0);
      ellipse(197, 250, 10, 10);
      ellipse(197 + 180, 250, 10, 10);
    }
    else if (mouseY > 283){
      fill(0,0,0);
      ellipse(197, 283, 10, 10);
      ellipse(197 + 180, 283, 10, 10);
    }
  }
  else if (mouseX >= 234){
    if (mouseY >= 250 &&  mouseY <= 283) {
      fill(0,0,0);
      ellipse(234, mouseY, 10, 10);
      ellipse(234 + 180, mouseY, 10, 10);
    } 
    else if (mouseY < 250) {
      fill(0,0,0);
      ellipse(234, 250, 10, 10);
      ellipse(234 + 180, 250, 10, 10);
    }
    else if (mouseY > 283){
      fill(0,0,0);
      ellipse(234, 283, 10, 10);
      ellipse(234 + 180, 283, 10, 10);
    }
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
  //owch
  if (mousePressed && mouseX > 197 && mouseX < 234 && mouseY >= 250 && mouseY <= 283){
    JOptionPane.showMessageDialog(null, "owch my eye, im closing this window becuase of this");
    System.exit(0);
  }
}
