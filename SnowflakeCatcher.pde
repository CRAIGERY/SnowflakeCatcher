Snowflake [] winter;
void setup()
{
  size (500,500);
  background(0);
  winter = new Snowflake [750];
  for (int i = 0; i < winter.length; i++)
  {
  	winter [i] = new Snowflake();
  }
}
void draw()
{
  for (int i = 0; i < winter.length; i++)
  {
  	winter[i].erase();
  	winter[i].lookDown();
  	winter[i].move();
  	winter[i].wrap();
  	winter[i].show();
  }
}
void mouseDragged()
{
  if (mouseButton == LEFT)
  {
  	fill (0, 0, 255);
    noStroke();
  	ellipse (mouseX, mouseY, 10,10);
  }
  if (mouseButton == RIGHT)
  {
  	fill(0);
  	ellipse(mouseX, mouseY, 10,10);
  }
}

class Snowflake
{
  int x, y;
  boolean isMoving;
  Snowflake()
  {
    x = (int)(Math.random()*497)+2;
    y = (int)(Math.random()*497)+2;
    isMoving = true;
  }
  void show()
  {
    fill (255);
    noStroke();
    ellipse (x , y, 3, 3);
  }
  void lookDown()
  {
    if (get (x,y + 3) != color(0) && y > 0 && y < 480 )
    {
    	isMoving = false;
    } 
    else
    {
    	isMoving = true;
    } 
  }
  void erase()
  {
    stroke(0);
  	fill(0);
  	ellipse(x,y,5,5);

  }
  void move()
  {
    if (isMoving == true)
    {
    	y++;
    }
  }
  void wrap()
  {
    if (y > 490)
    {
      y = 0;
    }
  }
}


