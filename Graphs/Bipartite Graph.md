# Bipartite Graph


## [Question](https://practice.geeksforgeeks.org/problems/bipartite-graph/1?utm_source=gfg&utm_medium=article&utm_campaign=bottom_sticky_on_article)
Given an adjacency list of a graph adj  of V no. of vertices having 0 based index. Check whether the graph is bipartite or not.
---

## Solution

```cpp
public:
    bool dfs(int node,int col,vector<int>& color,vector<int> adj[]){
        color[node]=col;
        
        for(auto it:adj[node]){
            if(color[it]==-1){
                if(dfs(it,!col,color,adj)==false){
                    return false;
                }
            }
            else if(color[it]==col){
                return false;
            }
        }
        return true;
    }
    
	bool isBipartite(int V, vector<int>adj[]){
	    // Code here
	    vector<int> color(V,-1);
	    
	    for(int i=0;i<V;i++){
	        if(color[i]==-1){
	            if(dfs(i,0,color,adj)==false){
	                return false;
	            }
	        }
	        
	    }
	    return true;
	    
	}

};


