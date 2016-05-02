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



void setup()
{
 int xPos=0;
int xDir=1;
int speedX=5;
int speedX1=15;
int xPos1=1000;
int x= 45;
int y=30;
int right=0;
int left=0;
int up=0;
int down=0;
int s=4;


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
 
  
  ellipse(xPos1, 75, 15, 15);
  ellipse(xPos1, 125, 15, 15);
  ellipse(xPos1, 175, 15, 15);
  ellipse(xPos1, 225, 15, 15);
  ellipse(xPos1, 275, 15, 15);
  ellipse(xPos1, 375, 15, 15);
  ellipse(xPos1, 325, 15, 15);
 
 //moving square player
 //make rectagle
 rect(x,y,20,20);
 //setting up x varbles + right + left + 1
 x= x+right;
 x= x-left;
 //making y varbles + up + down + 1
 y= y-up;
 y= y+down;
 

//Keep track of the balls position
  //Makes a loop of th ball being redrawn by one position sideways on the x axis each time 
  //xPos=xPos+xDir*speed;
  xPos=xPos + speedX; 

  xPos1=xPos1 - speedX1; 


  float a = sq(x+15-xPos);
  float a1 = sq(x+15-xPos1);
  float b = sq(y+15-100);
  float b1 = sq(y+15-200);
  float b2 = sq(y+15-300);
  float b3 = sq(y+15-400);
  float b4 = sq(y+15-150);
  float b5 = sq(y+15-250);
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

 if (c<13||c1<13||c2<15||c3<15||c4<15||c5<15||c6<15||c7<15||c8<15||c9<15||c10<15||c11<15||c12<15||c13<15) {
    x= 45;
    y=30;
    
  }


  if (xPos<19)

  {

    speedX=10;
  }


  if (xPos1>1000 )

  {

    speedX1=-10;
  }

  if (xPos>1000)

  {

    speedX=-10;
  }

  if (xPos1<19 )

  {

    speedX1=10;
  }

  if (x<19) {
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
  if (y>420) {
    textSize(100);
    text("YOU WIN", 350, 200);
     textSize(25);
    noLoop();
  }
}



//int speedY= 7;
//int speedX = 7;

void keyPressed() {
  if(key==CODED) {
    if (keyCode==RIGHT){
      right=s;
      left=0;
    }
    if(keyCode==LEFT){
      left=s;
      right=0;
    }
  if(keyCode==UP){
    up=s;
    down=0;
  }
  if(keyCode==DOWN){
    down=s;
    up=0;
    }
  }
  if(key=='r'){
    loop();
    setup();
}
}

void keyReleased() {
  if(key==CODED) {
    if(keyCode==RIGHT){
    right=0;
  }
  if(keyCode==LEFT){
    left=0;
  }
  if(keyCode==UP){
    up=0;
  }
  if(keyCode==DOWN){
    down=0;
  }
}
}

  