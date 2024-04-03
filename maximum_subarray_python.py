def maximum_subarray(arr):
    sum=0
    max=0

    for i in range(0,len(arr)):
        max = max+arr[i]
        if sum<max:
            sum=max
        
        if max<0:
            max=0
        


    return sum

print("This is a program to find the maximum contiguous sum using Kadane's Algo")
n = int(input("Enter the number of array items - "))
a=[0]*n
print("Now enter array items....")
for i in range(0,n):
    a[i]=int(input())

print("Maximum contiguous sum is", maximum_subarray(a))


