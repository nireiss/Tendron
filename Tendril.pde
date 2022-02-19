

// tendril.pde
class Tendril
{
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private int myNumSegments, myX, myY;
  private double myAngle;
 
  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(int len, double theta, int x, int y)
  {
    //your code here
    myNumSegments = len;
    myX = x;
    myY = y;
    myAngle = theta;

  }
  public void show()
  {
    double startX = myX;
    double startY = myY;
     for (int i = 0; i < myNumSegments; i++){
       myAngle = myAngle + (Math.random() * 0.4) - 0.2;
       double endX = startX + Math.cos(myAngle) * SEG_LENGTH;
       double endY = startY + Math.sin(myAngle) * SEG_LENGTH;
       line ((float)startX, (float)startY, (float)endX, (float)endY);
       startX = endX;
       startY = endY;
       
      }
     int crimblo = myNumSegments;
     if (myNumSegments <= 5){
  
       rect(2000,2,2,2);
     }
     else{
       if (sheesh() == 1)
       stroke(94, 15, 18);
       else if (sheesh() == 2)
       stroke(0, 0, 0);
       else if (sheesh() == 3)
       stroke(179, 68, 16);
       else if (sheesh() == 4)
       stroke(65, 9, 84);
       else
       stroke(173, 12, 3);
       Cluster cringe = new Cluster(myNumSegments / 2, (int)startX, (int)startY);
     }
     
  }
}
