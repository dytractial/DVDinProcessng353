//made by dytractHOME on GitHub
//original revision
//problems: DVD Logo goes off screen on right-handed X/Y coordinates.

//variables
float x = 400;
float y = 300;

float xSpeed = 5;
float ySpeed = 5;

PImage img;


// ran once
void setup ()  {
  size(800,600);
  img = loadImage("DVD.png");
}

// looped
void draw ()  {
  background(0);
  
  x += xSpeed;
  if( x > width || x < 0 )  {
    xSpeed *= -1;
    tint(random(255),random(255),random(255));
  }
  
    y += ySpeed;
  if( y > height || y < 0 )  {
    ySpeed *= -1;
    tint(random(255),random(255),random(255));
  }
  
  
  image(img,x,y,276,170);
  
}
