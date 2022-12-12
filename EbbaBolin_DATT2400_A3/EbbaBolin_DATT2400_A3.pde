PFont Font;
import processing.sound.*;

//Create array of mulible objects
djmixer[]drums;

//array of the sound. imported from the file
SoundFile[] file;

//array of 10 diferent colors
color fillcolor[] = new color[10];
//number of sounds
int numsounds = 10;
//number of rows and coloums in the grid
int cols = 8;
int rows = 8;
//grid
int stepx;
int stepy;
//number of objects
int num = cols*rows;


void setup() {
  size(800, 800);
    //difining the size on the grid
  stepx = 550 / cols ;
  stepy = 550 / rows;

  drums = new djmixer[num];
//
  for (int i = 0; i < num; i++) {
   //x and y position 
    float x = i%num%cols;
    float y = i%num/cols;


    drums[i] = new djmixer(x*stepx+150, y*stepy+150,62);
  }
  
  file = new SoundFile[numsounds];
   for (int i = 0; i < numsounds; i++) {

    file[i] = new SoundFile(this, "Electronickickdrums/"+(i+1) + ".wav");
  }
  
  for (int i =0; i < fillcolor.length; i++) {
    fillcolor[i] = color(random(255), random(255), random(255));
  }

}
void draw () {
    //background color
  background(0);
  //draw objects at each index of array
  for (int i = 0; i < num; i++) {

    drums[i].drawboard();
  }
  //Display and design the title text.
    fill(255);
  Font = createFont("ARIAL BLACK",40); 
  textFont(Font);
 text("Electronic Kick Drums DJ-MIXER", width/2, height/7);
  textAlign(CENTER);

  
}
//change the colors of the objects when klicking the space key
void keyPressed(){
   if (keyPressed) {
      if( key == ' ')
  for (int i =0; i < fillcolor.length; i++) {
    fillcolor[i] = color(random(255), random(255), random(255));
  }
   }
}
