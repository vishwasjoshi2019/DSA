
# Detect cycle in an undirected graph using DFS

## [Question](https://practice.geeksforgeeks.org/problems/detect-cycle-in-an-undirected-graph/1)

Given an undirected graph with V vertices and E edges, check whether it contains any cycle or not. Graph is in the form of adjacency list where adj[i] contains all the nodes ith node is having edge with

---

## Solution

```cpp
class Solution {
  public:
    // Function to detect cycle in an undirected graph.
    
    bool cycle_check(int node, int parent,vector<int> adj[], vector<int>&visited){
        
        visited[node]=1;
        
        for(auto it:adj[node]){ // for(int i=0;i<adj[node].size();i++)
            
            if(visited[it]==0){
                if(cycle_check(it,node,adj,visited)){
                    return true;
                }
            }
            else if(it!=parent){
                return true;
            }
        }
        
        
        return false;
        
    }
    
    
    
    bool isCycle(int V, vector<int> adj[]) {
        vector<int> visited(V,0);
        
        for(int i=0;i<V;i++){
            if(!visited[i]){
                if(cycle_check(i,-1,adj,visited)){
                    return true;
                }
            }
        }
        return false;
        // Code here
        
    }
};
