typedef CompareRunners = int Function (int runnerA,int runnerB );

//This Functions matches that "shape"
 int checkSpeed(int a , int b) => a-b;

 void main (){
  // we can use our nickname to verify the function
  CompareRunners raceJudge = checkSpeed;
  print ("The judge is ready ")
 }