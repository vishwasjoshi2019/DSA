# Detect cycle in an directed graph using BFS (Kahn's Algorithm)

## [Question](https://practice.geeksforgeeks.org/problems/detect-cycle-in-a-directed-graph/1)
Given an undirected graph with V vertices and E edges, check whether it contains any cycle or not. Graph is in the form of adjacency list where adj[i] contains all the nodes ith node is having edge with.
---

## Solution

```cpp
class Solution {
  public:
    // Function to detect cycle in a directed graph.

    bool isCyclic(int V, vector<int> adj[]) {
        // code her
        vector<int> indegree(V,0);
        // vector<int> visited(V,0);
        for(int i=0;i<V;i++){
            for(auto it:adj[i]){
                indegree[it]++;
                
            }
        }
        
        queue<int> q;
        
        for(int i=0;i<V;i++){
            if(indegree[i]==0){
                q.push(i);
            }
        }
        
        vector<int> topo;
        
        while(!q.empty()){
            int node=q.front();
            q.pop();
            
            topo.push_back(node);
            
            for(auto it:adj[node]){
                indegree[it]--;
                if(indegree[it]==0){
                    q.push(it);
                }
            }
        }
        
        
        if(topo.size()==V){
            return false;
        }
        return true;
        
    }
};
