import ddf.minim.*;
AudioPlayer player;
Minim minim;

//Phyllotaxis Array - "Clashing Cultures and Ideals" by Huey Chanchani

float i = 0;
float c = 10;
float a = 0;
float radius = 0;
float MWX = 0;
float MWY = 0;
float RMWX = 0;
float RMWY = 0;
float DX = 0;
float DY = 0;
float BIX = 0;
float BIY = 0;
float KX = 0;
float KY = 0;

void setup()
{
  size(1000, 1000);
  background(0);
  colorMode(HSB);
  //strokeWeight(1);

  minim = new Minim(this);
  player = minim.loadFile("Isaiah Rashad - Free Lunch (Instrumental).mp3", 2048);
  player.play();
}

void draw()
{

  float a = i * 29;
  float radius = c * sqrt(i);

  //Reverse Mike Wazowski Flower (Top Right)
  float RMWX = radius * cos(a) + 800;
  float RMWY = radius * sin(a) + 200;
  fill(50, 255, 255);
  ellipse(RMWX, RMWY, radius, 10);

  //Devil's Flower (Center)
  float DX = radius * cos(a) + 500;
  float DY = radius * sin(a) + 500;
  fill(255, 255, 255);
  ellipse(DX, DY, radius, 10);

  //Mike Wazowski Flower (Bottom Right)
  float MWX = radius * cos(a) + 800;
  float MWY = radius * sin(a) + 800;
  fill(100, 255, 255);
  ellipse(MWX, MWY, 10, radius);

  //Blue Ivy Flower (Bottom Left)
  float BIX = radius * cos(a) + 200;
  float BIY = radius * sin(a) + 800;
  fill(175, 255, 255);
  ellipse(BIX, BIY, radius, 10);

  //Kumquat Flower
  float KX = radius * cos(a) + 200;
  float KY = radius * sin(a) + 200;
  fill(25, 255, 255);
  ellipse(KX, KY, 10, radius);

  i++;

  if (i == 1000)
  {
    /*MWX = KX;
    MWY = KY;
    RMWX = MWX;
    RMWY = MWY;
    DX = RMWX;
    DY = RMWY;
    BIX = DX;
    BIY = DY;
    KX = BIX;
    KY = BIY;*/
    i = 0;
  }
}