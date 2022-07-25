(leetcode.cc)[https://leetcode-cn.com/problems/color-fill-lcci/submissions/]
```python
class Solution:
    def floodFill(self, image: List[List[int]], sr: int, sc: int, newColor: int) -> List[List[int]]:
        #dfs
        #bfs
        ROW = len(image)
        COL = len(image[0])
        entry_pixel = image[sr][sc]
        directions = [[1,0],[-1,0],[0,1],[0,-1]]
        
        def isValidPixel(r,c):
            return r >= 0 and c >= 0 and r < ROW and c < COL and image[r][c]== entry_pixel

        def dfs(x,y):
            if image[x][y] == entry_pixel:
                image[x][y] = newColor
                for dx, dy in directions:
                    nx,ny = x+dx, y+dy
                    if isValidPixel(nx,ny):
                        dfs(nx,ny)
        def bfs(x,y):
            if image[x][y] == entry_pixel:
                image[x][y] = newColor
                queue = [[x,y]]
                while queue: 
                    new_queue = []
                    for cx, cy in queue:
                        for dx, dy in directions:
                            nx,ny = cx+dx, cy+dy
                            if isValidPixel(nx,ny):
                                new_queue.append([nx,ny])
                                image[nx][ny] = newColor
                    queue = new_queue


        if entry_pixel==newColor:
            return image
        else:
            # dfs(sr,sc)
            bfs(sr,sc)
            return image 

```