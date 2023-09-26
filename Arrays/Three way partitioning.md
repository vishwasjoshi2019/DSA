# [Three way partitioning ](https://practice.geeksforgeeks.org/problems/three-way-partitioning/1)

# Approach
for this type of question we use Three Pointer Approach, we take start=0,end=n-1 and iterate using i, while i<=end, if arr[i]<a, we simply swap(arr[start],arr[i]) start++,and i++, else if arr[i]>b we swap(arr[end],arr[i]) and end--, 
else we only increment i++, 
we moved ele<a to left most side, ele>b to right most side, element bw a and b will be automatically sorted.
# Solution

```cpp
void threeWayPartition(vector<int>& array,int a, int b)
    {
        // code here 
        int start=0;
        int i=0;
        int end=array.size()-1;
        
        while(i<=end){
            if(array[i]<a){
                swap(array[i],array[start]);
                start++;
                i++;
            }
            else if(array[i]>b){
                swap(array[i],array[end]);
                end--;
            }
            else{
                i++;
            }
        }
        
        
    }
