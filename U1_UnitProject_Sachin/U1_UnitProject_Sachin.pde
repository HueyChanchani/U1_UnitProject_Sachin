//Phyllotaxis Array by Sachin

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

void setup()
{
  size(1000, 1000);
  background(0);
  colorMode(HSB);
}

void draw()
{
  float a = i * 137.3;
  float radius = c * sqrt(i);

  float RMWX = radius * cos(a) - 600;
  float RMWY = radius * sin(a) + 200;
  fill(50, 255, 255);
  ellipse(RMWX, RMWY, 10, radius);

  float DX = radius * cos(a) + 500;
  float DY = radius * sin(a) + 500;
  fill(255, 255, 255);
  ellipse(DX, DY, 10, radius);
  
  float MWX = radius * cos(a) + width/2;
  float MWY = radius * sin(a) + height/2;
  fill(100, 255, 255);
  ellipse(MWX, MWY, 10, radius);

  
  i++;
  
  if (i == 1000)
  {
    stop();
  }
}