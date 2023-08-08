# Depth First Traversal of a Connected Undirected Graph

## [Question](https://practice.geeksforgeeks.org/problems/depth-first-traversal-for-a-graph/1)

You are given a connected undirected graph. Perform a Depth First Traversal of the graph.
Note: Use a recursive approach to find the DFS traversal of the graph starting from the 0th vertex from left to right according to the graph.

---

## Solution

```cpp
void dfs_traversal(int node, vector<int> adj[], vector<int>& visited, vector<int>& dfs) {
    dfs.push_back(node);
    visited[node] = 1;

    for (int i = 0; i < adj[node].size(); i++) {
        int adjvertex = adj[node][i];
        if (!visited[adjvertex]) {
            dfs_traversal(adjvertex, adj, visited, dfs);
        }
    }
}

vector<int> dfsOfGraph(int V, vector<int> adj[]) {
    vector<int> visited(V, 0);
    vector<int> dfs;

    dfs_traversal(0, adj, visited, dfs);

    return dfs;
}
