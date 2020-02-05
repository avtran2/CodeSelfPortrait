/*
  Code Self-Portrait
  by Alvin Tran
  
  Draw a self-portrait via processing
*/

//Universal constants for color
color seashell=color(255,245,238);
color white=color(255,255,255);
color lightcoral=color(240,128,128);
color black=color(0,0,0);
color yellow=color(255,255,0);

//Constant for head
float headDiameter=1250;

//Constants for mouth
float mouthHeight=50;
float mouthWidth=150;

//Constants for nose
float noseX=750;
float noseY=750;

//Constants for eyes
float eyeDiameter=(headDiameter/10);

void setup() {
  size(1500, 1500);
  ellipseMode(CENTER);
  }

void draw() {//Main method to run program
  background(white);
  
  if(mousePressed)//Able to check coordinates with mouse
  {
    int x=mouseX;
    int y=mouseY;
    println("X: "+x+" Y: "+y);
  }
  
  drawHead();
  drawMouth();
  drawNose();
  drawEyes();
  drawEars();
  drawGlasses();
  drawHair();
 }

 void drawHead() { //Method that draws head
  fill(seashell);
  ellipse((width/2), (height/2), headDiameter, headDiameter);
 }

void drawMouth() {//Method that draws mouth
  fill(lightcoral);
  rect((width/2)-360, (height/2)+300, (height/2), mouthWidth, mouthHeight);
 }
 
 void drawNose() {//Method that draws nose
  fill(yellow);
  triangle(noseX, noseY, 680, 870, 850, 870);
 }
 
void drawEyes() {//Method that draws eyes
  fill(white);
  ellipse((width/2)-355, (height/2)-355, eyeDiameter, eyeDiameter);//Left eye 
  ellipse((width/2)-355+680, (height/2)-355, eyeDiameter, eyeDiameter);//Right eye
  
  fill(black);
  ellipse((width/2)-355, (height/2)-355, eyeDiameter, eyeDiameter/10);//Left pupil 
  ellipse((width/2)-355+680, (height/2)-355, eyeDiameter, eyeDiameter/10);//Right pupil

 }
 
 void drawEars(){//Method that draws ears
   line(228, 405, 185, 300);//Lines that trace out left ear
   line(228, 405, 150, 435);
   line(185, 300, 150, 435);
   
   fill(seashell);
   triangle(228, 405, 150, 435, 185, 300);//Left ear
   
   line(1265, 400, 1326, 300);//Lines that trace out right ear
   line(1265, 400, 1364, 435);
   line(1326, 300, 1364, 435);   
   
   fill(seashell);
   triangle(1265, 400, 1326, 300, 1364, 435);//Left ear
 }
 
 void drawGlasses(){//Lines to represent glasses
   line(455, 390, 1010, 390);//Center line
   line(330, 390, 185, 300);//Left eye
   line(1140, 390, 1326, 300);//Right eye
 }
 
 void drawHair(){//Method that draws hair   
   fill(black);
   triangle(337, 282, 1166, 282, 750, 120);
 }
