
class djmixer {
  //variables - position and size  
  float x;
  float y;
  float rsize;
  //variables for playing the sounds

  int trigger = millis();

  int duration = 200;
//variables for the color
  int filldjmixer = int(random(10));
  
//construct the object  

  djmixer(float x, float y, float rsize) {
    this.x = x;
    this.y = y;
    this.rsize = rsize;
  }

  void drawboard() {
//style the object with colors
  fill(fillcolor[filldjmixer]);

 stroke(255);
 strokeWeight(0.5);
       //play/stop function for the sound. If the mouse is inside the object to activate.
    if (dist(mouseX, mouseY, x+rsize/2, y+rsize/2) < rsize/2) {
      if (mousePressed & mouseButton == LEFT) {
  fill(255);
  
        if (millis() > trigger) {

          if (file[filldjmixer].isPlaying()) {
            file[filldjmixer].stop();
          }

         file[filldjmixer].play(1, 1);
             trigger = millis() + duration;
      }
    }
    }
    //the object
    rect(x, y, rsize, rsize);
  }
}
