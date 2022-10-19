Walker[] bob;
void setup()
{
  size (300, 300);
  bob= new Walker [1000];
  for (int i=0; i<bob.length;i++){
    bob[i]=new Walker();
  }
}

void draw ()
{
  background(255);
  for (int i=0; i<bob.length;i++){
    bob[i].show();
    bob[i].walk();
  }
}
class Walker
{
  int myX, myY;
  int myColor;
   Walker(){
      myX=myY=250;
      myColor = color((int)(Math.random()*254), (int)(Math.random()*254), (int)(Math.random()*254));
   }
   void walk()
   {
     myX = myX+(int)(Math.random()*7)-3;
     myY = myY+(int)(Math.random()*7)-3;
   }
   void show()
   {
     fill(myColor);
     ellipse(myX,myY, 30, 30);
     fill(0);
     noStroke();
     ellipse(myX-4,myY-3, 5, 5);
     ellipse(myX+4,myY-3, 5, 5);
     arc(myX, myY+6, 10, 10, 0, 3.14);
     
   }
}
