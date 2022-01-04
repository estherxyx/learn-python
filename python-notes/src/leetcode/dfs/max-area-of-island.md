https://leetcode-cn.com/problems/max-area-of-island/submissions/
```python
class Solution:
    def maxAreaOfIsland(self, grid: List[List[int]]) -> int:
        dirs = [[0,1],[1,0],[0,-1],[-1,0]]
        ROW = len(grid)
        COL = len(grid[0])
        VISITED = -1
        area = [] 

        def isValidPosition(x, y):
            return x >= 0 and y >= 0 and x < ROW and y < COL and grid[x][y] == ISLAND

        def dfs(x, y):
            grid[x][y] = VISITED
            count = 1
            for dx, dy in dirs:
                nx, ny = x+dx, y+dy
                if isValidPosition(nx, ny):
                    count += dfs(nx,ny)
            return count 
             

        for r in range(ROW):
            for c in range(COL):
                if grid[r][c] == ISLAND:
                    count1 = dfs(r, c)
                    area.append(count1)

        if not area:
            return 0
        else: return max(area)
```