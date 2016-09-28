//Phyllotaxis by Sachin

float n = 0;
float c = 4;
float  = 0;
float Radius = 0;
float CircleX = 0;
float CirlceY = 0;

void setup()
{
  size(500, 500);
  background(0);
}

void draw()
{
  noStroke();
  float a = n * 137.5;
  float r = c * sqrt(n);
  float x = r * cos(a) + width/2;
  float y = r * sin(a) + height/2;
  fill(255);
  ellipse(x, y, 4, 4);
  n++;
}