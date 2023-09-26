# [Minimum swaps and K together ](https://practice.geeksforgeeks.org/problems/minimum-swaps-required-to-bring-all-elements-less-than-or-equal-to-k-together4847/1)

# Approach

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
