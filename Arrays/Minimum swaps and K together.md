# [Minimum swaps and K together ](https://practice.geeksforgeeks.org/problems/minimum-swaps-required-to-bring-all-elements-less-than-or-equal-to-k-together4847/1)

# Approach
[GFG] sliding subarray technique, count all arr[i]>k, now in the first subarry from 0 to count(of ele<k)check ele>k. that many swap are required, now ans=bad, now slide the subarray ,i=0,j=count to j<n if arr[i]>k then bad-- as we are sliding the array to right, and now check the last element of subarray i.e arr[j]>k bad++, check min(bad , ans) for every subarry.
 
# Solution

```cpp
    int minSwap(int arr[], int n, int k) {
        // Complet the function
        int res=0;
        int ans=0;
        int count=0;
        for(int i=0;i<n;i++){
            if(k>=arr[i]){
                count++;
            }
        }
        
        
        for(int i=0;i<count;i++){
            if(arr[i]>k){
                ans++;
            }
        }
        res=ans;
        int i=0,j=count;
        while(j<n){
            if(arr[i]>k){
                ans--;
            }
            if(arr[j]>k){
                ans++;
            }
            
            res=min(ans,res);
            i++;
            j++;
        }
        
        return res;
    }
