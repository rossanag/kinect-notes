import org.openkinect.processing.*;

Kinect kinect; 
//Kinect2 kinect; 

boolean inColor = false;

void setup() {
   size(640, 480);
   kinect = new Kinect(this);
   kinect.initDepth(); // 
   //kinect.initDevice(); // Sólo para kinect2
}

void draw() {
   background(0);
   
   kinect.enableColorDepth(inColor);
   PImage img = kinect.getDepthImage();
   image(img, 0, 0);
}

void keyPressed() {
   inColor = !inColor;
}