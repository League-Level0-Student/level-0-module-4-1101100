import ddf.minim.*;
Minim minim = new Minim(this); 
AudioSample doh;
AudioSample woohoo;
import static javax.swing.JOptionPane.*;
void setup() {
  PImage waldo = loadImage("waldo.jpg"); // Change this to match your file name.
  size(1400, 966);
  waldo.resize(width,height);
  background(waldo);
  image(waldo, 0, 0);
  doh = minim.loadSample("homer-doh.wav"); //drag and drop from project onto sketch
  woohoo = minim.loadSample("homer-woohoo.wav"); //drag and drop from project onto sketch } 
  showMessageDialog(null, "welcome to where's waldo, if you find him click on the tip of his nose it may take a couple of tries to click the right spot, wait a couple milliseconds for the sound");
}


void draw() {
      // Use this print statement to find out the coordinates of Waldo
      println("X: " + mouseX + " Y: " + mouseY); 

      // If the mouse is on Waldo, print “Waldo found!”
      if (mousePressed && mouseX == 595 && mouseY == 173){
        playWoohoo();
        System.out.println("you found him");

      }
      else if (mousePressed && mouseX != 1 && mouseY != 2){
      playDoh(); 
      }  
      
      // If Waldo is found, also use the method below to play “Woohoo”
      // Change the name of the sound file if you need to 
      // If the mouse is pressed and they’re not on Waldo, play “Doh”
      // Change the name of the sound file if you need to 
}

void playWoohoo() {
     woohoo.stop();
     woohoo.trigger();
}

void playDoh() {
     doh.stop();
     doh.trigger();
}
