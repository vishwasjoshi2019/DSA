
# Topological sort using DFS


## [Question](https://practice.geeksforgeeks.org/problems/topological-sort/1)
Given a Directed Acyclic Graph (DAG) with V vertices and E edges, Find any Topological Sorting of that Graph.
---

## Solution

```cpp
class Solution
{
	public:
	//Function to return list containing vertices in Topological order. 
	
	void dfs(int node,vector<int>& visited,vector<int> adj[],stack<int>&st){
	    visited[node]=1;
	    
	    for(auto it:adj[node]){
	        if(!visited[it]){
	            dfs(it,visited,adj,st);
	        }
	        
	    }
	    st.push(node);
	}
	vector<int> topoSort(int V, vector<int> adj[]) 
	{
	    // code here
	    vector<int> visited(V,0);
	    stack<int> st;
	    for(int i=0;i<V;i++){
	        if(!visited[i]){
	            dfs(i,visited,adj,st);
	        }
	    }
	    
	    vector<int>ans;
	    while(!st.empty()){
	        ans.push_back(st.top());
	        st.pop();
	    }
	    
	    return ans;
	}
};
