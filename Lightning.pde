PImage img;
int startX = 300;
int startY = 180;
int endX = 300; 
int endY = 150;
void setup()
{
  size(300,300);
  background(0,0,0);
  strokeWeight(1);
  img = loadImage("https://i.pinimg.com/originals/a0/8a/a8/a08aa8b9582aeb613aab028c4a2f5e7b.png");
}
void draw()
{
  image(img,164,80, width/2.2, height/2.2);
  stroke(220 + (int)(Math.random()*36), (int)(Math.random()*240), 5 + (int)(Math.random()*36));
  while(endX > 0) {
     endX = startX - (int)(Math.random() * 10);
     endY = startY + (int)(Math.random() * 10) - 5;
     line(startX, startY, endX, endY);
     startX = endX;
     startY = endY;
  }
}
void mousePressed()
{
  startX = 300;
  startY = 150;
  endX = 300; 
  endY = 180;
}
