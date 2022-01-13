[leetcode.cn](https://leetcode-cn.com/problems/rotting-oranges/submissions/)
```python
class Solution:
    def orangesRotting(self, grid: List[List[int]]) -> int:

        ROW, COL = len(grid), len(grid[0])
        dirs = [(0, 1), (0, -1), (1, 0), (-1, 0)]
        count = 0
        rotten = {(i,j) for i in range(ROW) for j in range(COL) if grid[i][j]==2}
        fresh = {(i,j) for i in range(ROW) for j in range(COL) if grid[i][j]==1}
        if not fresh: return 0
        # bfs starts here
        while fresh:
            if not rotten: return -1
            rotten = {(i + di, j + dj) for i, j in rotten for di, dj in [(0, 1), (0, -1), (1, 0), (-1, 0)] if (i + di, j + dj) in fresh}
            fresh -= rotten 
            count += 1
        return count

```