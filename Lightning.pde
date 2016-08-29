void setup()
{
  size(300,300);
}

void draw()
{
	
void mousePressed()
{
	int startX = mouseX;
	int startY = 0;
	int endX = (int)(Math.random())+150;
	int endY = (int)((Math.random()*18)-9);
}
void line()
{
	line(startX,startY,endX,endY);
	startX = endX;
	startY = endY;
	endX += (int)((Math.random()*18)-9);
	endY += (int)((Math.random()*9));
}
}
