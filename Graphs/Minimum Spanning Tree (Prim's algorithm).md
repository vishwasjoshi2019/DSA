# Minimum Spanning Tree (Prim's algorithm)

## [Question](https://practice.geeksforgeeks.org/problems/minimum-spanning-tree/1)
Given a weighted, undirected and connected graph of V vertices and E edges. The task is to find the sum of weights of the edges of the Minimum Spanning Tree.
---

## Solution

```cpp
    int spanningTree(int V, vector<vector<int>> adj[])
    {
        // code here
        vector<int> visited(V,0);
        
        priority_queue<pair<int,int>,vector<pair<int,int>>,greater<pair<int,int>>> pq;
        
        pq.push({0,0});
        
        
        int sum=0;
        while(!pq.empty()){
            auto it=pq.top();
            pq.pop();
            
            int node=it.second;
            int wt=it.first;
            
            
            if(visited[node]==1){
                continue;
            }
            else{
                sum+=wt;
                visited[node]=1;
                for(auto it:adj[node]){
                    int adjNode=it[0];
                    int edW=it[1];
                    if(!visited[adjNode]){
                        pq.push({edW,adjNode});
                    }
                }
            }
        }
        
        return sum;
    }
```
## Creator

This project was created by [Vishwas Joshi](https://github.com/vishwasjoshi2019).


[![GitHub](https://img.shields.io/badge/GitHub-%40vishwasjoshi2019-blue)](https://github.com/vishwasjoshi2019)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-%40vishwasjoshi2019-blue)](https://www.linkedin.com/in/vishwasjoshi2019/)
[![Gmail](https://img.shields.io/badge/Gmail-vishwasjoshi2019%40gmail.com-red)](mailto:vishwasjoshi2019@gmail.com)
[![Institute Email](https://img.shields.io/badge/Institute%20Email-vishwas.j%40iitgn.ac.in-red)](mailto:vishwas.j@iitgn.ac.in)
[![Instagram](https://img.shields.io/badge/Instagram-%40cursed__geek-orange)](https://www.instagram.com/cursed_geek/)
[![Twitter](https://img.shields.io/badge/Twitter-%40Vishwas79116150-blue)](https://twitter.com/Vishwas79116150)


