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

void draw()
{
	if(isPressed == true)
	{
		stroke((float)(Math.random()*255),(float)(Math.random()*255),(float)(Math.random()*255));
		//background((float)(Math.random()*255),(float)(Math.random()*255),(float)(Math.random()*255));
		branch(startX,startY,endX,endY);
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
	startX = mouseX;
	startY = 0;
	endX = (int)(Math.random())+mouseX;
	endY = (int)((Math.random()*18)-9);
}
void lines()
{
	line(startX,startY,endX,endY);
	startX = endX;
	startY = endY;
	endX += (int)((Math.random()*18)-9);
	endY += (int)((Math.random()*9));
}
void branch(int bStartX,int bStartY,int bEndX,int bEndY)
{
		stroke(255,0,0);
		line(bStartX,bStartY,bEndX,bEndY);
		startX = bEndX;
		startY = bEndY;
		endX += (int)((Math.random()*18)-9);
		endY += (int)((Math.random()*9));
}

