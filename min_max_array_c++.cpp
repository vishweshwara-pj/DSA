#include <iostream>

// Function prototypes
int minimum(int arr[], int size);
int maximum(int arr[], int size);

int main()
{
    std::cout << "This is a program to find min and max element of an array" << std::endl;
    std::cout << "Enter the number of items in the array: ";
    int n;
    std::cin >> n;
    int arr[n];
    std::cout << "Enter the items of the array:" << std::endl;
    for (int i = 0; i < n; ++i)
    {
        std::cin >> arr[i];
    }
    int max_item = maximum(arr, n);
    int min_item = minimum(arr, n);
    std::cout << "The min item = " << min_item << "\nThe max item = " << max_item << std::endl;
    return 0;
}

int minimum(int arr[], int size)
{
    int min = arr[0];
    for (int i = 1; i < size; ++i)
    {
        if (arr[i] < min)
        {
            min = arr[i];
        }
    }
    return min;
}

int maximum(int arr[], int size)
{
    int max = arr[0];
    for (int i = 1; i < size; ++i)
    {
        if (arr[i] > max)
        {
            max = arr[i];
        }
    }
    return max;
}
