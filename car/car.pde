class Car
{
  int xpos;
  int ypos;
  int xspeed;
  int yspeed;
  PImage carImg = loadImage("carImg.jpg");
  boolean visible = true;
  
  Car()
  {
  }
  
  Car(int xpos, int ypos, int xspeed, int yspeed)
  {
    this.xpos = xpos;
    this.ypos = ypos;
    this.xspeed = xspeed;
    this.yspeed = yspeed;
  }
  
  void move()
  {
    xpos += xspeed;
    ypos += yspeed;
  }
  
  void output()
  {
    if(visible) image(carImg, xpos, ypos, 50, 50);
  }
}

class MyCar extends Car {
  MyCar()
  {
    super();
  }
  void init()
  {
    super.xpos = mouseX;
    super.ypos = mouseY;
    super.xspeed = (int)random(-5, 5);
    super.yspeed = (int)random(-5, 5);
  }
}

Car []car;
MyCar []mycar;
int num=10;

void setup()
{
  size(400, 400);
  frameRate(30);
  mycar = new MyCar[num];
  background(255);
  if (mousePressed)
  {
    for (int i=0; i<num; i++) {
      mycar[i] = new MyCar();
      mycar[i].init();
    }
  }
}

void draw()
{
  background(255);
  for (int i=0; i<num; i++) {
      mycar[i].move();
      mycar[i].output();
  }
}

