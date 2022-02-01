(leetcode.cc)[https://leetcode-cn.com/problems/route-between-nodes-lcci/submissions/]
```python
class Solution:
    def findWhetherExistsPath(self, n: int, graph: List[List[int]], start: int, target: int) -> bool:
        # dirs = [[0,1],[1,0],[0,-1],[-1,0]]
        # ROW = len(graph)
        # COL = len(graph[0])
        # starting_xy = []

        #  for r in range(ROW):
        #     for c in range(COL):
        #         if graph[r][c]==start: 
        #             starting_xy.append([r,c])
        
        # def isValidPosition(x, y):
        #     return x >= 0 and y >= 0 and x < ROW and y < COL and graph[x][y] == start

        # def bfs(starting_xy) -> bool:
        #     graph[x][y] = start
        #     queue = starting_xy
        #     while queue:
        #         new_queue = []
        #         for cx, cy in queue:
        #             for dx, dy in dirs:
        #                 nx, ny = cx+dx, cy+dy
        #                 if isValidPosition(nx, ny):
        #                     new_queue.append([nx, ny])
        #                     graph[nx][ny] = start
        #         queue = new_queue  

        # return res

        dic = collections.defaultdict(list)
        for r, c in graph:
            dic[r].append(c)
        visited = set()
        queue = deque()
        queue.append(start)

        while queue:
            pos = queue.popleft()
            if pos == target:
                return True
            for _next in dic[pos]:
                if _next not in visited:
                    visited.add(_next)
                    queue.append(_next)
        return False

```
