void setup()
{
	size(500,500);
	noLoop();
}


//Die newDice = new Die(x , y);

void draw(){
	for(int y  = 10 ; y <= 410; y+= 100 ){
		for(int x = 10; x <= 410; x+= 100){
			Die bob = new Die (x,y);
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
		numRolled = (int)(Math.random() * 6) + 1;
	}
	void roll(){
		
	}
	void show(){
		rect(myX , myY, 50, 50, 7);
		System.out.println(numRolled);
	}
}
