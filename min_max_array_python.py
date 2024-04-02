def min_array_item(arr, length):
    min_val = arr[0]
    i = 1
    while i < length:
        if arr[i] < min_val:
            min_val = arr[i]
        i += 1
    return min_val

def max_array_item(arr, length):
    max_val = arr[0]
    i = 1
    while i < length:
        if arr[i] > max_val:
            max_val = arr[i]
        i += 1
    return max_val

print("This is a program to find min and max items in an Integer array")
n = int(input("\nEnter the number of array items - "))
arr = [0] * n
print("Enter", n, "items.....")
for i in range(n):
    x = int(input())
    arr[i] = x

print("The Max item =", max_array_item(arr, n))
print("The Min item =", min_array_item(arr, n))
