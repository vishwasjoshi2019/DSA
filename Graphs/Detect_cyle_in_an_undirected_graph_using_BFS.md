# Detect cycle in an undirected graph using BFS

## [Question](https://practice.geeksforgeeks.org/problems/detect-cycle-in-an-undirected-graph/1)
Given an undirected graph with V vertices and E edges, check whether it contains any cycle or not. Graph is in the form of adjacency list where adj[i] contains all the nodes ith node is having edge with.
---

## Solution

```cpp
class Solution {
  public:
    // Function to detect cycle in an undirected graph.
    
    bool BFScycle(int src,vector<int> adj[], vector<int>&visited){
            queue<pair<int,int>> q;
            visited[src]=1;
        
            q.push({src, -1});
            while(!q.empty()){
                int node=q.front().first;
                int parent=q.front().second;
        
                q.pop();
        
                for(auto it:adj[node]){
                    if(!visited[it]){
                        visited[it]=1;
                        q.push({it,node});
                    }
                    else if(it!=parent){
                        return true;
                    }
                }
            }
            return false;
        
    }
    
    
    
    bool isCycle(int V, vector<int> adj[]) {
        vector<int> visited(V,0);

        for(int i=0;i<V;i++){
            if(!visited[i]){
                if(BFScycle(i,adj,visited)){
                    return true;
                }
            }
        }
        return false;
    }
};
