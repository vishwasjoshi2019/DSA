# [ Smallest subarray with sum greater than x ](https://www.geeksforgeeks.org/minimum-length-subarray-sum-greater-given-value/)

# Approach

It is also a kind of sliding window problem, we iterate through array, find first array whose sum is <= x, (also end<n)(and we increase len of our subarry using end++,
now in next loop we check if len of this subarray(end-start) is less than our min_len than we update our min_len , and we remove first element (Arr[start] from sum and increase start) ,
in last we check if min_len==n+1 then we return 0 as we didn't find any such subarray 

# Solution

```cpp
// Include any necessary headers

#include <iostream>

int smallestSubWithSum(int arr[], int n, int x)
{
    // Your code goes here   
    int start=0,end=0,min_len=n+1;
    int sum=0;
    while(end<n){
        while(sum<=x and end<n){
            sum+=arr[end];
            end++;
        }
        
        while(sum>x and start<n){
            if(end-start<min_len){
                min_len=end-start;
             
            }
            
            sum-=arr[start];
            start++;
        
        }
    }
    return (min_len==n+1)?0:min_len;
}
