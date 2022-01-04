https://leetcode-cn.com/problems/flood-fill/
```python
class Solution:
    def floodFill(self, image: List[List[int]], sr: int, sc: int, newColor: int) -> List[List[int]]:

        ROW = len(image)
        COL = len(image[0])
        valid_pixel = image[sr][sc]

        def isValidPosition(x, y):
            return x >= 0 and y >=0 and x < ROW and y < COL and image[x][y]== valid_pixel

        def dfs(x, y):
            if image[x][y] == valid_pixel: 
                image[x][y] = newColor
                for nx,ny in [(x,y+1),(x+1,y),(x,y-1),(x-1,y)]:
                    if isValidPosition(nx,ny):
                        dfs(nx,ny)

        if valid_pixel != newColor:
            dfs(sr,sc)
            return image
        else: return image
```