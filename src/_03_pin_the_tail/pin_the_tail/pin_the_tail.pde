PImage donkey;
PImage tail;
boolean gameover = false;
int tailx;
int taily;
import ddf.minim.*;          //at the very top of your sketch
AudioSample woohooSound;          //at the top of your sketch
boolean playSound = true;          //at the top of your sketch
import javax.swing.JOptionPane;
void setup() {
donkey = loadImage("donkey.jpg");      //change the file name if you need to
tail = loadImage("tail.png");      //change the file name if you need to
size(800,600);
donkey.resize(width,height);
tail.resize(200, 200);     //replace width, height with your tail's dimensions
Minim minim = new Minim(this);     //In the setup method
woohooSound = minim.loadSample("homer-woohoo.wav");    
JOptionPane.showMessageDialog(null, "pin the tail on the donkey");
}

void draw() {
  if(gameover){
    background (donkey);
    image(tail, tailx, taily);
  }
  else{
  background (0,0,0);
  image(tail, mouseX, mouseY);
  
  if(dist(720,210,mouseX,mouseY) < 20){
    background (donkey);
    }
  }
}
void mouseClicked(){
  System.out.println("clicked");

  if (!gameover){
  tailx = mouseX;
  taily = mouseY;
  gameover = true;
    if(dist(720,210,tailx,taily) < 20){
       if (playSound) {
       woohooSound.trigger();
       playSound = false;
      }
    }
  }
}
