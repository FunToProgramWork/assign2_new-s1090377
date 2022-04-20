PImage bgImg;
PImage soilImg;
PImage lifeImg;
PImage soldierImg;
PImage groundhogDownImg;
PImage groundhogIdleImg;
PImage groundhogLeftImg;
PImage groundhogRightImg;
PImage startNormalImg;
PImage startHoveredImg;
PImage gameoverImg;
PImage titleImg;

final int GameStart = 0;
final int GameOver = 2;
final int GameRun = 1;
final int hogIdle = 0,hogDown = 1,hogRight = 2,hogLeft = 1;
  int hogDraw = hogIdle;
  int gameState = GameStart;
  float movementTimer;

int lifebar =2;
int hogx = 320,hogY = 80;
int speed = 80;
int soliderY,soliderX;
int cabbageX,cabbageY;

boolean upPressed = false;
boolean downPressed = false;
boolean leftPressed = false;
boolean rightPressed = false;


void setup() {
	size(640, 480, P2D);
  frameRate(60);
	// Enter Your Setup Code Here
  bgImg = loadImage("img/bg.jpg");
  soilImg = loadImage("img/soil.png");
  lifeImg= loadImage("img/life.png");
  soldierImg = loadImage("img/soldier.png");
  groundhogDownImg = loadImage("img/groundhogDown.png");
  groundhogIdleImg = loadImage("img/groundhogIdle.png");
  groundhogLeftImg = loadImage("img/groundhogLeft.png");
  groundhogRightImg =loadImage("img/groundhogRight.png");
  startHoveredImg = loadImage("img/startHovered.png");
  startNormalImg = loadImage("img/startNormal.png");
  gameoverImg = loadImage("img/gameover.jpg");
  titleImg = loadImage("img/title.jpg");
  
  
  
  int [] soliderYseeds = {160,240,320,400,480};
  soliderY = soliderYseeds[floor(random(0,4))];
  int [] cabbageY = {240,320,400,480};
  cabbageY = cabbageYseeds[floor(random(0,3))];
  int [] cabbageX = {80,160,240,328,400,480};
  cabbageX = cabbageXseeds[floor(random(0,5))];
    
  rect(hogX,hogY,80,80);
  rect(cabbageX,cabbageY,80,80);
  rect(soliderX,soliderY,80,80);
  
}

void draw() {
	image(bgImg,0,0);
  image(soilImg, 0,160);
  image(lifeImg,10,10);
  image(lifeImg,80,10);
  image(lifeImg,150,10);
  //sun
  fill(255,255,0);
  ellipse(width-50,50,130,130);
  fill(253,184,19);
  ellipse(width-50,50,120,120);
  //
  
  
  
  
  

  
  

}

void keyPressed(){
}
////////
void keyReleased(){
}
