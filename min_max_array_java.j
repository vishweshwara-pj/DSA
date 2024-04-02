import java.util.Scanner;
//change class name as per your project folder
class Main
{
    public static void main (String[] args) {
        System.out.println("This is a program to find min and max items from the array");
        System.out.print("Enter the number of items in the array - ");

        //using Scanner class for inputs from user
        Scanner sc = new Scanner(System.in);
        int n=0;

        //A demonstration of the Try-Catch block to catch input exceptions
        try {
            n = sc.nextInt();
            
        } catch(Exception e) {
            System.out.println("Please enter an integer number!!");
        }
        int[] arr = new int[n];
        System.out.println("Now enter "+n+" items....");
        for(int i=0;i<n;i++)
        {
            int x=0;
            try {
                x = sc.nextInt();
            } catch(Exception e) {
                System.out.println("Please enter an integer number!!");
            }
            finally
            {
               arr[i] = x; 
            }
        }

        System.out.println("The Min item = " + minimum(arr,n));
        System.out.println("The Max item = " + maximum(arr,n));
        
    }

    //user defined functions for minimum and maximum 
    static int minimum(int arr[], int len)
    {
        int min = arr[0];
        for(int i=1; i<len; i++)
        {
            if(arr[i]<min)
            {
                min=arr[i];
            }
        }
        return min;
    }
    
    
    static int maximum(int arr[], int len)
    {
        int max = arr[0];
        for(int i=1; i<len; i++)
        {
            if(arr[i]>max)
            {
                max=arr[i];
            }
        }
        return max;
    }
}
