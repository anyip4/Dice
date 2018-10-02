void setup()
{
	strokeWeight(2);
	size(430,500);
	noLoop();
}

int counting = 0;

void draw(){
	background(150);
	for(int y  = 10 ; y <= 410; y+= 60 ){
		for(int x = 10; x <= 410; x+= 60){
			Die bob = new Die (x,y);
			bob.roll();
			bob.show();
			counting = counting + bob.numRolled;

		}
	}
	fill(0);
	textSize(40);
	text("Total " + counting, 20, 470);
}
void mousePressed(){
	counting = 0;
	redraw();

}
class Die //models one single dice cube
{
	int numRolled, myX, myY; 
	
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
	}
	void roll(){
		numRolled = (int)(Math.random() * 6) + 1;
		
	}
	void show(){
		fill(255);
		stroke(255);
		rect(myX , myY, 50, 50, 7);
		fill((int)(Math.random()*100)+100);

		if(numRolled == 1){
			ellipse(myX + 25, myY + 25, 10, 10);
		}
		if(numRolled == 2){
			ellipse(myX + 15, myY + 15, 10, 10);
			ellipse(myX + 35, myY + 35, 10, 10);
		}
		if(numRolled == 3){
			ellipse(myX + 13, myY + 13, 10, 10);
			ellipse(myX + 26, myY + 26, 10, 10);
			ellipse(myX + 39, myY + 39, 10, 10);
		}
		if(numRolled == 4){
			ellipse(myX + 15, myY + 15, 10, 10);
			ellipse(myX + 35, myY + 15, 10, 10);
			ellipse(myX + 15, myY + 35, 10, 10);
			ellipse(myX + 35, myY + 35, 10, 10);
		}
		if(numRolled == 5){
			ellipse(myX + 10, myY + 10, 10, 10);
			ellipse(myX + 40, myY + 10, 10, 10);
			ellipse(myX + 10, myY + 40, 10, 10);
			ellipse(myX + 40, myY + 40, 10, 10);
			ellipse(myX + 25, myY + 25, 10, 10);
		}
		if(numRolled == 6){
			ellipse(myX + 15, myY + 10, 10, 10);
			ellipse(myX + 15, myY + 25, 10, 10);
			ellipse(myX + 15, myY + 40, 10, 10);
			ellipse(myX + 35, myY + 10, 10, 10);
			ellipse(myX + 35, myY + 25, 10, 10);
			ellipse(myX + 35, myY + 40, 10, 10);
		}
	}
}
