
# Negative weight cycle

## [Question](https://practice.geeksforgeeks.org/problems/negative-weight-cycle3504/1)
Given a weighted directed graph with n nodes and m edges. Nodes are labeled from 0 to n-1, the task is to check if it contains a negative weight cycle or not.
Note: edges[i] is defined as u, v and weight.---

## Solution

```cpp
	int isNegativeWeightCycle(int n, vector<vector<int>>edges){
	    // Code here(i.e di
        // Code here
        vector<int> dist(n,1e8);
        dist[0]=0;
        
        for(int i=0;i<n-1;i++){
            for(auto it:edges){
                int u=it[0];
                int v=it[1];
                int w=it[2];
                if(dist[u]!=1e8 and dist[u]+w<dist[v]){
                    dist[v]=dist[u]+w;
                }
                
            }
        }
        
        for(auto it:edges){
            int u=it[0];
            int v=it[1];
            int w=it[2];
            if(dist[u]+w<dist[v]){
                return 1;
            }
        }
        return 0;

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

