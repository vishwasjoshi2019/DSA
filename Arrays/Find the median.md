# [Find the median ](https://practice.geeksforgeeks.org/problems/find-the-median0527/1)

# Approach
 Sort the array check if len is even then (arr[len/2-1]+arr[n/2])/2 if odd len then arr[n/2]
# Solution

```cpp
int find_median(vector<int> v)
  {
      
  // Code here.
    sort(v.begin(),v.end());
    int len=v.size();
      
  if(len%2==0){
      return (v[len/2-1]+v[len/2])/2;
   }
   else{
       return v[len/2];
   }
      
  }
