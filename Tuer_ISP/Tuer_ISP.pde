// Keeps track of the balls of the X position
//Changing the value changes where the circles start
int xPos;
int xDir;
int speedX;
int speedX1;
int xPos1;
int x;
int y;
int right;
int left;
int up;
int down;
int s;
int deaths;

void setup()
{
  xPos=0;
  xDir=1;
  speedX=5;
  speedX1=-15;
  xPos1=1000;
  x= 45;
  y=30;
  right=0;
  left=0;
  up=0;
  down=0;
  s=4;
  deaths=0;

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
  ellipse(xPos, 150, 15, 15);
  ellipse(xPos, 250, 15, 15);
  ellipse(xPos, 350, 15, 15);


  ellipse(xPos1, 75, 15, 15);
  ellipse(xPos1, 125, 15, 15);
  ellipse(xPos1, 175, 15, 15);
  ellipse(xPos1, 225, 15, 15);
  ellipse(xPos1, 275, 15, 15);
  ellipse(xPos1, 375, 15, 15);
  ellipse(xPos1, 325, 15, 15);


  //player
  rect(x, y, 20, 20);
  x=x+right;
  x=x-left;
  y=y-up;
  y=y+down;

  //Keep track of the balls position
  //Makes a loop of th ball being redrawn by one position sideways on the x axis each time 
  //xPos=xPos+xDir*speed;
  xPos=xPos + speedX; 

  xPos1=xPos1 + speedX1; 
//float is an int but more precice 

//It finds the distance from the middle of the ball to the square making a right angle triangle and finding the long side
//Float a and a1 are the two different rows of balls and all the float bs are the different hights
//The float cs are the distance and later it says. If float c<10 game over
//And if it is less the the radius of the ball then it means the ball it's touching the player and game over
  float a = sq(x+15-xPos);
  float a1 = sq(x+15-xPos1);
  float b = sq(y+15-100);
  float b1 = sq(y+15-200);
  float b2 = sq(y+15-300);
  float b3 = sq(y+15-400);
  float b4 = sq(y+15-150);
  float b5 = sq(y+15-500);
  float b6 = sq(y+15-350);
  float b7 = sq(y+15-125);
  float b8 = sq(y+15-175);
  float b9 = sq(y+15-225);
  float b10 = sq(y+15-275);
  float b11 = sq(y+15-325);
  float b12 = sq(y+15-375);
  float b13 = sq(y+15-75);
  float c = sqrt(a+b);
  float c1 = sqrt(a+b1);
  float c2 = sqrt(a+b2);
  float c3 = sqrt(a+b3);
  float c4 = sqrt(a+b4);
  float c5 = sqrt(a+b5);
  float c6 = sqrt(a+b6);
  float c7 = sqrt(a1+b8);
  float c8 = sqrt(a1+b9);
  float c9 = sqrt(a1+b10);
  float c10 = sqrt(a1+b11);
  float c11 = sqrt(a1+b12);
  float c12 = sqrt(a1+b7);
  float c13 = sqrt(a1+b13);


//this means if the square touches and of the circles then it will be reset to the checkpoint and the death count will increase by 1.
  if (c<13||c1<13||c2<15||c3<15||c4<15||c5<15||c6<15||c7<15||c8<15||c9<15||c10<15||c11<15||c12<15||c13<15) {
    x= 45;
    y=30;
    deaths=deaths+1;
  }
  //sets postion of the word death and types it at those cordinates 
  text("Deaths: "+deaths, 800, 20);

// changes smaller line how far to the left edge it goes
  if (xPos<19)

  {

    //this is the speed of the smaller lower line of moving circles
    speedX=10;
  }

//this changes how far to the right the line of circles goes for the first line.
  if (xPos1>1000)

  {
//changes top line how fast the circles go
    speedX1=-10;
  }

//changes bottom line how far to the right the bottom line circles go
  if (xPos>1000)

  {
//changes bottom line of circles its speed
    speedX=-10;
  }

//top line how far over the to the left edge it goes
  if (xPos1<19 )

  {
//changes top line circles speed
    speedX1=10;
  }

//That makes sure the player can't please the boarders
//The && means and so both its like 2 if statements in one

  if (x<18) {
    left=0;
    right=0;
    x=20;
  }
  if (x>970) {
    left=0;
    right=0;
    x=969;
  }
  if (y<19&&x<150) {
    up=0;
    down=0;
    y=19;
  }
  if (x>80&&y<60) {
    left=0;
    right=0;
    x=80;
  }
  if (y>400&&x<910) {
    up=0;
    down=0;
    y=400;
  }
  if (y<71&&x>100) {
    up=0;
    down=0;
    y=72;
  }
  
  //if you move the square to the checkpoint text YOU WIN will be drawn at those cordinates.
  //it will also take the death count and draw how many deaths it took it for you to get there.
  if (y>420) {
    textSize(100);
    text("YOU WIN", 350, 200);
     textSize(25);
    text("Deaths:"+deaths, 450, 235);
    noLoop();
  }
}



//int speedY= 7;
//int speedX = 7;

//key pressed to show when the keys are pressed
//key code Right for moving right
//when right is clicked it uses the varible S which stands for speed and is set to 4
// Add left varible 0 because when right it pressed we dont want it going left
void keyPressed() {
  if (key==CODED) {
    if (keyCode==RIGHT) {
      right=s;
      left=0;
    }
    //Same as above same idea
    if (keyCode==LEFT) {
      left=s;
      right=0;
    }
    if (keyCode==UP) {
      up=s;
      down=0;
    }
    if (keyCode==DOWN) {
      down=s;
      up=0;
    }
  }
  
 //code needs a loop function for the code to reset back
 //setup and loop makes the code loop back to the start and run void setup again.
 // when key "r" is pressed it restarts the game
   if (key=='r') {
      loop();
      setup();
    }
}
//key released is for when the key is released
//For example keycode RIGHT when that key is released it stops moving as seen when i set it to =0
void keyReleased () {
  if (key==CODED) {
    if (keyCode==RIGHT) {
      right=0;
    }
    if (keyCode==LEFT) {
      left=0;
    }
    if (keyCode==UP) {
      up=-0;
    }
    if (keyCode==DOWN) {
      down=0;
    }
  }
}