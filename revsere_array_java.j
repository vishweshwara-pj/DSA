//class name should be project folder name
class Main {
    public static void main(String[] args) {
        
        //example array
        int[] a = {1,2,3,4,5};
        a = reverse_array(a);
        for(int i=0;i<a.length;i++)
        {
            System.out.print(a[i]+" ");
        }
    }
    
    static int[] reverse_array(int arr[])
    {
        int l = arr.length-1;        //reverse array index counter goes from last index to first index
        int l2 = l;                 //constant value of length-1 is needed for the loop
        for(int i=0; i<=l2/2;i++)
        {
            int temp = arr[i];      //using temporary variable method to swap the first and last index items
            arr[i] = arr[l];
            arr[l] = temp;
            l--;
        }
        return arr;
    }
}
