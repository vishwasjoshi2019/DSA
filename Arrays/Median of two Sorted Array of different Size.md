# [Median of two Sorted Arrays of Different Sizes](https://www.geeksforgeeks.org/median-of-two-sorted-arrays-of-different-sizes/)

# Approach
for solving this we are using merge sort like approach with 2 pointer i, j respectively for each, as median can be avg or only one element based on length of arrays is even or odd, we are maintaing m1 and m2 as temp to store 2 elements at at time,
and keep on updating them. we only loop count<(l1+l2)/2 as we will get median in half traversal, straightforward. 

# Solution

```cpp
double MedianOfArrays(vector<int>& arr1, vector<int>& arr2)
    {
        // Your code goes here
        int l1=arr1.size();
        int l2=arr2.size();
        
        int i=0,j=0;
        int count =0;
        
        int m1=-1,m2=-1;
        
        while(count<=(l1+l2)/2){
            m2=m1;
            if(i<l1 and j<l2){
                m1=arr1[i]>arr2[j]?arr2[j++]:arr1[i++];
            }
            else if(i<l1){
                m1=arr1[i++];
            }
            else{
                m1=arr2[j++];
            }
            
            count++;

            
         
        }
        
        if((l1+l2)%2==0){
            return (m1+m2)/2.0;
        }
        else{
            return m1;
        }
        

        // This should not be reached if both arrays are non-empty.
        return 0.0; 
        
        
    }
