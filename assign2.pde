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
PImage cabbageImg;

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
  cabbageImg = loadImage("img/cabbage.png");
  
  

  
 
}

void draw() {
	image(bgImg,0,0);
  image(soilImg, 0,160);
  image(lifeImg,10,10);
  image(lifeImg,80,10);
  image(lifeImg,150,10);
  image(groundhogIdleImg,320,80);
  image(soldierImg ,130,320);
  image(cabbageImg,560,160);
  
  
  //sun
  fill(255,255,0);
  ellipse(width-50,50,130,130);
  fill(253,184,19);
  ellipse(width-50,50,120,120);
  //
  switch(gameState){
      case GameStart:
      image(titleImg,0,0);
      image(startNormalImg,248,360);
      if(mouseX >=248&&mouseX<=392&&mouseY>=360&&mouseY<=420){
      image(startHoveredImg,248,360);
      if(mousePressed){
      gameState = GameRun;
    }
    }
  }
  

  
  
  
  

  
  

}

void keyPressed(){
}
////////
void keyReleased(){
}
