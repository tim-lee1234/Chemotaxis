Bacteria[] bob;
int myCol = 0;
int myCol2 =0;
int myCol3 =0;
void setup() {
  size(500,500);
  bob = new Bacteria[25];
  for(int i =0; i < bob.length; i++) {
    bob[i] = new Bacteria();
  }
}
void draw() {
  fill(100);
  background(0);


  for(int i = 0; i < bob.length; i++) {
    myCol=(int) (Math.random()*255);
    myCol2= (int) (Math.random()*255);
    myCol3=(int) (Math.random()*255);
    bob[i].show();
    bob[i].walk();
  }
}
class Bacteria {
   int myX, myY;
   Bacteria() {
     myX = (int)(Math.random()*200+125);
     myY = (int)(Math.random()*200+125);
     
  }
  void walk() {
    if(myX < 25)
      myX += 10;
    else if(myX > 475)
      myX -= 10;
    if(myY < 75)
      myY += 10;
    else if(myY > 425)
      myY -= 10;
    if(mouseX > myX)
      myX = myX + (int)(Math.random()*7)-2;
    else
      myX = myX + (int)(Math.random()*7)-5;
    if(mouseY > myY)
      myY = myY + (int)(Math.random()*7)-2;
    else
      myY = myY + (int)(Math.random()*7)-5;
  }
  void show()
  {
    noStroke();
    fill(myCol, myCol2, myCol3);
    ellipse(myX,myY,20,20);
  }
}
