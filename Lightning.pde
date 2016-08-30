void setup()
{
  size(300,300);

}
int startX = mouseX;
int startY = 0;
int endX = (int)(Math.random())+mouseX;
int endY = (int)((Math.random()*18)-9);

boolean isPressed = false;

void draw()
{
	if(isPressed = true)
	{
		stroke((float)(Math.random()*255),(float)(Math.random()*255),(float)(Math.random()*255));
		//background((float)(Math.random()*255),(float)(Math.random()*255),(float)(Math.random()*255));
		lines();
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

