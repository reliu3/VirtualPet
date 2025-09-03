import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

void setup(){
  size(750,750);
  arduino = new Arduino(this, Arduino.list()[0], 57600); //change the [0] to a [1] or [2] etc. if your program doesn't work
  background(24, 38, 79);
  noStroke();
}
void draw(){
  int x = arduino.analogRead(5);
  background(x/4, x/2, x);
  
  fill(166, 163, 184);
  arc(375,375,425,470,PI,6.28319);
  ellipse(375,375,425,100);
  bezier(238.75,375, 140,412.5, 263, 534, 122, 640);
  bezier(511.25,375, 422,412.5, 637, 534, 595, 640);
  bezier(303,375, 200,412.5, 375, 534, 322, 640);
  bezier(433,375, 498,412.5, 355, 534, 450, 640);
  fill(255,255,255); 
  pushMatrix();
  translate(520,378);
  //translate(mouseX,mouseY);
  rotate(6.02139);
  ellipse(0,0, 92,30);
  popMatrix();
  
  fill(61,94,144);
  ellipse(81,91,90,90);
  ellipse(677,245,90,90);
  ellipse(120,487,90,90);
}









//void setup(){
//  size(255,255);
//  noStroke();
//}
//void draw(){
//  colorMode(HSB);
//  background(mouseX,mouseY,(mouseX + mouseY)/2);
  
//}

//void mouseDragged() {
//  ellipse(127.5,127.5,90,90);
//}
