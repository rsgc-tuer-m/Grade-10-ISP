// Keeps track of the balls of the X position
//Changing the value changes where the circles start
int xPos=0;
int xDir=1;
int speed=2;
int xPos1=1000;
void setup()
{
  //Create canvas
  size (1000, 500);
  smooth();
  //Make background black
  background(0);
  noStroke();
  fill(255, 255, 255);
  }

void draw()
{
  background(0);
  //Make background white
  fill(255);
  //Make top checkpoint line
  rect(10, 10, 90, 10);
  rect(100, 10, 10, 60);
  //verticle left line
  rect(10, 15, 10, 410);
  //bottom border
  rect(10, 420, 900, 10);
  //top across border
  rect(100, 60, 1000, 10);
  //line bototm right going down
  rect(900, 430, 10, 50);

  rect(900, 470, 100, 10);

  rect(990, 60, 10, 410);
  
   //Draw checkpoints
  fill(0, 255, 0);
  rect(20, 20, 80, 50);
  rect(910, 420, 80, 50);


  //Create the moving circles
  //Add xPos because it follows the terms at the top
  fill(255, 255, 255);
  ellipse(xPos, 100, 15, 15);
  ellipse(xPos, 200, 15, 15);
  ellipse(xPos, 300, 15, 15);
  ellipse(xPos, 400, 15, 15);

  ellipse(xPos1, 150, 15, 15);
  ellipse(xPos1, 250, 15, 15);
  ellipse(xPos1, 350, 15, 15);
 
 

//Keep track of the balls position
  //Makes a loop of th ball being redrawn by one position sideways on the x axis each time 
  //xPos=xPos+xDir*speed;
  xPos=xPos + speedX; 

  xPos1=xPos1 - speedX; 




  if (xPos>width-0 || xPos<20)

  {

    xPos=50;
  }

  if (xPos1<0 )

  {

    xPos1=1000;
  }
}

int speedY= 7;
int speedX = 7;
  
  