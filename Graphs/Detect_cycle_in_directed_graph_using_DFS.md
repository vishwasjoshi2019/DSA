
# Detect cycle in a directed graph using DFS

## [Question](https://practice.geeksforgeeks.org/problems/detect-cycle-in-a-directed-graph/1)
Given a Directed Graph with V vertices (Numbered from 0 to V-1) and E edges, check whether it contains any cycle or not
---

## Solution

```cpp
class Solution {
  public:
    // Function to detect cycle in a directed graph.
    
    bool isDFS(int node,vector<int>adj[] , vector<int>& visited,vector<int> &pathVis){
        visited[node]=1;
        pathVis[node]=1;
        
        for(auto it:adj[node]){
            if(!visited[it]){
                if(isDFS(it,adj,visited,pathVis)){
                    return true;
                }
            }
            else if(pathVis[it]){
                return true;
            }
        }
        
        pathVis[node]=0;
        
        return false;
    }
    bool isCyclic(int V, vector<int> adj[]) {
        // code here
        vector<int> visited(V,0);
        vector<int> pathVis(V,0);
        
        for(int i=0;i<V;i++){
            if(!visited[i]){
                if(isDFS(i,adj,visited,pathVis)){
                    return true;
                }
            }
        }
        return false;
    }
};

