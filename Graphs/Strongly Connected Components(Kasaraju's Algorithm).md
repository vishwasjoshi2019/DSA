# Strongly Connected Components (Kosaraju's Algo)

## [Question](https://practice.geeksforgeeks.org/problems/strongly-connected-components-kosarajus-algo/1)
Given a Directed Graph with V vertices (Numbered from 0 to V-1) and E edges, Find the number of strongly connected components in the graph
---

## Solution

```cpp
void dfs(int node,stack<int> &st,vector<int> &visited, vector<vector<int>>&adj ){
	    visited[node]=1;
	    
	    for(auto i:adj[node]){
	        if(!visited[i]){
	            dfs(i,st,visited,adj);
	        }
	    }
	    
	    st.push(node);
	}
	
	void revdfs(int node,vector<int> &visited, vector<vector<int>>&transpose )
	{
		visited[node]=1;
	    
	    for(auto i:transpose[node]){
	        if(!visited[i]){
	            revdfs(i,visited,transpose);
	        }
	    }
	    
	}
	
    int kosaraju(int V, vector<vector<int>>& adj)
    {
        //code here
        stack<int> st;
        vector<int> visited(V,0);
        
        for(int i=0;i<V;i++){
            if(!visited[i]){
                dfs(i,st,visited,adj);
            }
        }
        
        
        vector<vector<int>> transpose(V);
        
        for(int i=0;i<V;i++){
            visited[i]=0;
            for(auto it:adj[i]){
                transpose[it].push_back(i);
            }
        }
        
        int count=0;
        
        while(!st.empty()){
            int node=st.top();
            st.pop();
            
            if(!visited[node]){
                revdfs(node,visited,transpose);
                count++;
            }

        }
        return count;
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


