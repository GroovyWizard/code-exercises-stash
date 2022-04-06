public class Kata
{
  public static int Grow(int[] x)
  { 
    int numberRegister = 1;
    
    foreach (int number in x)
    {
        numberRegister = number * numberRegister;
    }
    return numberRegister;
  }
}

//Given a non-empty array of integers, 
//return the result of multiplying the values together in order.