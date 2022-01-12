[link](https://leetcode-cn.com/problems/01-matrix/submissions/)
```python
class Solution:
    def updateMatrix(self, mat: List[List[int]]) -> List[List[int]]:
        
        ROW, COL = len(mat), len(mat[0])
        dirs = [(0, 1), (0, -1), (1, 0), (-1, 0)]
        dist = 0
        visited = [[0] * ROW for _ in range(COL)]# new ROW*COL matrix
        res = [[0] * ROW for _ in range(COL)]# new ROW*COL matrix
        queue = collections.deque() # double ended queue
        
        #create new queue with all the zeros from mat 
        for i in range(ROW):
            for j in range(COL):
                if mat[i][j] == 0:
                    queue.append((i, j))
                    visited[i][j] = 1 # since we cannot mark "-1" this time 
                    
        # bfs starts here
        while queue:
            for i in range(len(queue)):
                x, y = queue.popleft()
                if mat[x][y] == 1:
                    res[x][y] = dist
                for dx, dy in dirs:
                    nx, ny = x + dx, y + dy
                    if nx < 0 or nx >= ROW or ny < 0 or ny >= COL or visited[nx][ny] == 1:
                        continue
                    queue.append((nx, ny))
                    visited[nx][ny] = 1
            dist += 1
        return res
```