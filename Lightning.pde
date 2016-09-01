void setup()
{
  size(300,300);
}
int startX = mouseX;
int startY = 0;
int endX = (int)(Math.random())+mouseX;
int endY = (int)((Math.random()*18)-9);

int dudeX = 0;
int dudeY = 250;

boolean isPressed = false;

Branch trunk = new Branch(mouseX, 0, (int)(Math.random())+mouseX,(int)((Math.random()*18)-9));

void draw()
{
	if(isPressed == true)
	{
		//stroke((float)(Math.random()*255),(float)(Math.random()*255),(float)(Math.random()*255));
		//background((float)(Math.random()*255),(float)(Math.random()*255),(float)(Math.random()*255));
		trunk.grow();
		if(trunk.bStartY >= 0)
		{
			trunk.bStartX = mouseX;
		}
		//branch(endX,endY,endX+(int)((Math.random()*18)-9),endY+(int)((Math.random()*9)));

	}
	if(keyPressed == true && keyCode == UP)
	{
		background(255);
	}
}
void mousePressed()
{
	isPressed = true;
}
void lines()
{
	line(startX,startY,endX,endY);
	startX = endX;
	startY = endY;
	endX += (int)((Math.random()*18)-9);
	endY += (int)((Math.random()*9));
}
class Branch
{
	int bStartX, bStartY, bEndX, bEndY;

	Branch(int sx,int sy,int ex,int ey)
	{
		bStartX = sx;
		bStartY = sy;
		bEndX = ex;
		bEndY = ey;
	}
	void grow()
	{
		stroke(255,0,0);
		line(bStartX,bStartY,bEndX,bEndY);
		bStartX = bEndX;
		bStartY = bEndY;
		bEndX += (int)((Math.random()*18)-9);
		bEndY += (int)((Math.random()*9));
	}
}

