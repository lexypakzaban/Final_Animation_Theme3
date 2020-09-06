PImage elephantPicture;
//https://www.stickers-factory.com/elephant-head-21934.html

void setup()
{
  size(800, 600);
  elephantPicture = loadImage("elephant.png");
  
}
int i = 0;
void draw()
{
  
  noStroke();
  fill(120,93,169);
  rect(0,0,800,800);
  for (int x = 5; x < 800; x = x + 10)
  {
   
    //squares descending across
   //getting greater in size and location
    fill(120,93,169);
    stroke(255);
    rect(x, x, x+800, x+800);
    rect(x, x, x+250, x+250);
    rect(x, x, x+200, x+200);
    rect(x, x, x+150, x+150);
    rect(x, x, x+100, x+100);
    rect(x, x, x+50, x+50);
    rect(x, x, x, x);
  }
  
  //elephant image
  pushMatrix();
  translate(400, 300);
  rotate(PI*0.02*i);
  image(elephantPicture, -200, -200);
  i = i + 1;
  popMatrix();
  
 //draws a circle of elephants
 translate(400,300);
 for (int angle = 0; angle < 360; angle = angle + 30)
 {
   pushMatrix();
   rotate(PI*angle/180);
   translate(200,0);
   scale(0.3);
   image(elephantPicture,0,0);
   popMatrix();
 }
  
}
