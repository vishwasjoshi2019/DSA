# [Chocolate Distribution Problem ](https://practice.geeksforgeeks.org/problems/chocolate-distribution-problem3825/1)

# Approach
sliding window kind of problem, sort the array, start=0,end=m-1, now check for every subarray's first and last element difference and compare minimum (sliding by start ++,end++) 


# Solution

```cpp
long long findMinDiff(vector<long long> a, long long n, long long m){
    sort(a.begin(),a.end());
    long long int start=0;
    long long int end=m-1;
    
    long long int ans=a[end]-a[start];
    
    
    while(end<n){
    
        ans=min(ans,a[end]-a[start]);
        end++;
        start++;
       
    }
    
    return ans;

}   
