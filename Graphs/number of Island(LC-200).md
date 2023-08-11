# Number of Islands

## [Question](https://leetcode.com/problems/number-of-islands/description/)
## Given an m x n 2D binary grid grid which represents a map of '1's (land) and '0's (water), return the number of islands. An island is surrounded by water and is formed by connecting adjacent lands horizontally or vertically. You may assume all four edges of the grid are all surrounded by water. 
Example 1:
Input: grid = [
  ["1","1","1","1","0"],
  ["1","1","0","1","0"],
  ["1","1","0","0","0"],
  ["0","0","0","0","0"]
]
Output: 1
Example 2:
Input: grid = [
  ["1","1","0","0","0"],
  ["1","1","0","0","0"],
  ["0","0","1","0","0"],
  ["0","0","0","1","1"]
]
Output: 3

---

## Solution

```cpp
class Solution {
public:

    void bfs(int row,int col,vector<vector<int>> &visited,vector<vector<char>> &grid){
        visited[row][col]=1;
        int n=grid.size();
        int m=grid[0].size();

        queue<pair<int,int>> q;
        q.push({row,col});


        while(!q.empty()){
            int r=q.front().first;
            int c=q.front().second;
            q.pop();
            

            int dr[]={0,1,0,-1};
            int dc[]={1,0,-1,0};

            for(int i=0;i<4;i++){
                int nrow=r+dr[i];
                int ncol=c+dc[i];
                if(nrow>=0 and nrow<n and ncol>=0 and ncol<m and grid[nrow][ncol]=='1' and !visited[nrow][ncol]){
                        visited[nrow][ncol]=1;
                        q.push({nrow,ncol});
                }

            }
        }
    }
    int numIslands(vector<vector<char>>& grid) {
        int n=grid.size();
        int m=grid[0].size();
        int count=0;
        vector<vector<int>> visited(n,vector<int>(m,0));

        for(int i=0;i<n;i++){
            for(int j=0;j<m;j++){
                if(!visited[i][j] and grid[i][j]=='1'){
                    count++;

                    bfs(i,j,visited,grid);
                }
            }
        }
        return count;
    }
};
