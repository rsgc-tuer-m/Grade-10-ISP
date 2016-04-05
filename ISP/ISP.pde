// Keeps track of the balls of the X position
//Changing the value changes where the circles start
int xPos=100;

void setup()
{
  //Create canvas
  size (1000,500);
  smooth();
  //Make background black
  background(0);
  noStroke();
  fill(255,255,255);
}

 void draw()
{
  background(0);
  
 //Create the moving circles
 //Add xPos because it follows the terms at the top
ellipse(xPos, 0, 15, 15);
ellipse(xPos, 100, 15, 15);
ellipse(xPos, 200, 15, 15);
ellipse(xPos, 300, 15, 15);
ellipse(xPos, 400, 15, 15);
ellipse(xPos, 500, 15, 15);

//Keep track of the balls position
//Makes a loop of th ball being redrawn by one position sideways on the x axis each time 
 xPos=xPos+1;
 xPos=xPos+1 + speedX; 
 
 if (xPos>width-20)
 
 {
   
   xPos=500;
  }
}
 int speedY= 5;
int speedX = 2;