# [Triplet Sum in Array](https://practice.geeksforgeeks.org/problems/triplet-sum-in-array-1587115621/1)

# Approach
first sort, then use two pointer approach outer loop k =0 to n; new target will be X-A[k] now same approach as in find pair equal to sum.
# Solution

```cpp
  bool find3Numbers(int A[], int n, int X)
  {
      //Your Cs de Here
      sort(A,A+n);
      
      for(int k=0;k<n;k++){
          int i=k+1;
          int j=n-1;
          
          int target=X-A[k];
          while(i<j){
              if(A[i]+A[j]==target){
                  return true;
              }
              else if(A[i]+A[j]<target){
                  i++;
              }
              else{
                  j--;
              }
              
          }
      }
      
      return false;
      
      
  }
