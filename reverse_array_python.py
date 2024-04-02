def reverse_array(arr, len):
    
    #len is the half lenght of the given array
    for i in range(len):
        arr[i],arr[-(i+1)] = arr[-(i+1)],arr[i]  #using tuple swap method to exchange the items
    return arr

print("This program helps to reverse the given array without using extra array.")
n = int(input("Enter the number of array elements - "))
a=[0]*n
print("Now enter array items....")
for i in range(n):
    a[i] = int(input())
reverse_array(a, n//2)
print(a)
