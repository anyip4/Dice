void setup()
{
	strokeWeight(2);
	size(430,430);
	noLoop();
}

void draw(){
	for(int y  = 10 ; y <= 410; y+= 60 ){
		for(int x = 10; x <= 410; x+= 60){
			Die bob = new Die (x,y);
			bob.roll();
			bob.show();


		}
	}
}
void mousePressed(){
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
		rect(myX , myY, 50, 50, 7);

		if(numRolled == 1){
			ellipse(myX + 25, myY + 25, 10, 10);
		}
		if(numRolled == 2){
			ellipse(myX + 15, myY + 15, 10, 10);
			ellipse(myX + 35, myY + 35, 10, 10);
		}
		if(numRolled == 3){

		}
		if(numRolled == 4){
			
		}
		if(numRolled == 5){
			
		}
		if(numRolled == 6){
			
		}
	}
}
