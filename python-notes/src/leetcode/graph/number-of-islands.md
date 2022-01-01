```python
# https://leetcode-cn.com/problems/number-of-islands/
class Solution:
    def numIslands(self, grid: List[List[str]]) -> int:
        dirs = [[0,1],[1,0],[0,-1],[-1,0]]
        ROW = len(grid)
        COL = len(grid[0])
        count = 0

        def isValidPosition(x, y):
            return x >= 0 and y >= 0 and x < ROW and y < COL and grid[x][y] == '1'

        def dfs(x, y):
            grid[x][y] = '-1'
            for dx, dy in dirs:
                nx, ny = x+dx, y+dy
                if isValidPosition(nx, ny):
                    dfs(nx, ny)

        def bfs(x, y):
            queue = [[x, y]]
            while queue:
                new_queue = []
                for cx, cy in queue:
                    grid[cx][cy] = '-1'
                    for dx, dy in dirs:
                        nx, ny = cx+dx, cy+dy
                        if isValidPosition(nx, ny):
                            new_queue.append([nx, ny])
                            grid[nx][ny] = '-1'
                queue = new_queue
            
        for r in range(ROW):
            for c in range(COL):
                if grid[r][c] == '1':
                    count += 1
                    bfs(r, c)
        
        return count
```