
#include <iostream>

void reverse_array(int arr[], int len);

int main()
{
    std::cout<<"This is a program to reverse the given integer array"<<std::endl;
    std::cout<<"Enter the number of array items - ";
    int n=0;
    std::cin>>n;
    std::cout<<"Now enter the array items...."<<std::endl;
    int a[n] ={};
    for(int i=0;i<n;i++)
    {
        std::cin>>a[i];
    }
    reverse_array(a,n);
    
    return 0;
}

void reverse_array(int arr[], int len)
{
    int l=len;
    for(int i=0; i<len/2;i++)
    {
        int temp = arr[l-1];
        arr[l-1]=arr[i];
        arr[i]=temp;
        l--;
    }
    
    std::cout<<"Array after reversal - ";
    for(int i=0;i<len;i++)
    {
        std::cout<<arr[i]<<" ";
    }

}
