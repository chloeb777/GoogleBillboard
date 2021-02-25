boolean primeFound = false;
int i = 1;
double num = 0;
String digits = "";
public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public void setup() {
  while(primeFound==false){
    digits = e.substring(i,i+10);
    num = Double.parseDouble(digits);
    if(isPrime(num)==true){
      primeFound=true;
      System.out.print(num);
    }
    i++;
  }
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
