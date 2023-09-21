# [Trapping Rain Water ](https://www.geeksforgeeks.org/trapping-rain-water/)

# Approach
Array preprocessing, make left array and store max element to the left of ith element, similarly right array for maximum array to right of ith. then water trapped water+=min(left[i],right[i])  -arr[i]

# Solution

```cpp
class Solution{

    // Function to find the trapped water between the blocks.
    public:
    long long trappingWater(int arr[], int n){
        // code here
        long long  left[n], right[n];
        
        long long  max_l=arr[0];
        long long max_r=arr[n-1];
        
        for(int i=0;i<n;i++){
            if(arr[i]>=max_l){
                max_l=arr[i];
                
            }
            
            left[i]=max_l;
        }
        
        for(int j=n-1;j>=0;j--){
            if(arr[j]>=max_r){
                max_r=arr[j];
            }
            
            right[j]=max_r;
        }
        
        long long  water=0;
        
        for(int i=0;i<n;i++){
            water+=min(left[i],right[i])-arr[i];
        }
        return water;
    }
};
