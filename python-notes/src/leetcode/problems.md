# Problems
[https://leetcode-cn.com/problemset/algorithms/](https://leetcode-cn.com/problemset/algorithms/)

## List
```python
# https://leetcode-cn.com/problems/two-sum/
class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        # eg
        # nums = [2,7,11,15], target = 9
        # 2 -> [7,11,15]
        # 7 -> [11,15]
        # ...

        ## sol1:
        # for i, n in enumerate(nums):
        #     for j, m in enumerate(nums):
        #         if j > i:
        #             if n + m == target:
        #                 return [i, j]
        # return [-1, -1]

        ## sol2:
        needed = {}
        for i, n in enumerate(nums):
            if n in needed:
                return [needed[n], i]

            reminder = target - n
            needed[reminder] = i
        return [-1, -1]

        ## demo
        # i: 1
        # n: 7
        # needed: {7: 0}
        # reminder: 7
```

## BFS
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

## DFS

## BST