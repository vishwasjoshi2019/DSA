
# Topological sort using BFS(Kahn's Alogirthm)

## [Question](https://practice.geeksforgeeks.org/problems/topological-sort/1)
Given a Directed Acyclic Graph (DAG) with V vertices and E edges, Find any Topological Sorting of that Graph.
---

## Solution

```cpp
class Solution
{
	public:
	//Function to return list containing vertices in Topological order. 
	

	vector<int> topoSort(int V, vector<int> adj[]) 
	{
	    // code here
	    vector<int> topo;
	    
	    queue<int> q;
	    vector<int> indegree(V,0);
	    
	    for(int i=0;i<V;i++){
	        for(auto it:adj[i]){
	            indegree[it]++;
	        }
	    }
	    
	    for(int i=0;i<V;i++){
	        if(indegree[i]==0){
	            q.push(i);
	        }
	    }
	    
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
	    
	    return topo;
	}
};


