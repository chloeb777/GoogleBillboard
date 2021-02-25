boolean primeFound = false;
boolean puzzle2Done = false;
int i = 2;
int j = 0;
double num = 0;
String primeNum = "";
String digits = "";
String[] Puzzle2 = new String[5];
double[] Digit = new double[10];

public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public void setup() {
  while((primeFound==false)||(puzzle2Done==false)){
    digits = e.substring(i,i+10);
    num = Double.parseDouble(digits);
    Digit[0] = Double.parseDouble(e.substring(i,i+1));
    Digit[1] = Double.parseDouble(e.substring(i+1,i+2));
    Digit[2] = Double.parseDouble(e.substring(i+2,i+3));
    Digit[3] = Double.parseDouble(e.substring(i+3,i+4));
    Digit[4] = Double.parseDouble(e.substring(i+4,i+5));
    Digit[5] = Double.parseDouble(e.substring(i+5,i+6));
    Digit[6] = Double.parseDouble(e.substring(i+6,i+7));
    Digit[7] = Double.parseDouble(e.substring(i+7,i+8));
    Digit[8] = Double.parseDouble(e.substring(i+8,i+9));
    Digit[9] = Double.parseDouble(e.substring(i+9,i+10));
    if(isPrime(num)==true){
      primeFound=true;
      primeNum = e.substring(i,i+10);
    }
    if((Digit[0]+Digit[1]+Digit[2]+Digit[3]+Digit[4]+Digit[5]+Digit[6]+Digit[7]+Digit[8]+Digit[9])==49){
      Puzzle2[j]= e.substring(i,i+10);
      j++;
    }
    if(j>=5){
      puzzle2Done = true;
    }
    i++;
  }
  System.out.println("Puzzle 1:");
  System.out.println("first 10-digit prime found in consecutive digits of 'e': " +primeNum);
  System.out.println("");
  System.out.println("Puzzle 2:");
  System.out.println("f(1): " + Puzzle2[0]);
  System.out.println("f(2): " + Puzzle2[1]);
  System.out.println("f(3): " + Puzzle2[2]);
  System.out.println("f(4): " + Puzzle2[3]);
  System.out.println("f(5): " + Puzzle2[4]);
}  
public void draw()  
{   
  //not needed for this assignment
}  

public boolean isPrime(double num) {
  boolean status = true;
  if (num == 1) {
    status = false;
  }
  for (int i=2; i<Math.sqrt(num)+1; i++) {
    if (num%i==0) {
      status = false;
    }
  }
  if (num==2) {
    status = true;
  }
  if (num<1) {
    status = false;
  }
  return status;
}
