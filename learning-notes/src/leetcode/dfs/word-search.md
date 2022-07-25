[leetcode](https://leetcode-cn.com/problems/word-search/submissions/)
```python
class Solution:
    def exist(self, board: List[List[str]], word: str) -> bool:
        directions = [[0,1],[1,0],[0,-1],[-1,0]]
        m = len(board)
        n = len(board[0])
        self.flag = 0

        def dfs(x,y,index): 
            if self.flag or x<0 or x>=m or y<0 or y>=n or board[x][y]==0 or board[x][y]!=word[index]:return
            if index==len(word)-1:
                self.flag=1
                return
            for dx, dy in directions:
                nx,ny = x+dx, y+dy
                tmp = board[x][y] 
                board[x][y] = 1
                dfs(nx,ny,index+1) 
                board[x][y] = tmp
        for i in range(m):
            for j in range(n):
                if board[i][j]==word[0]:
                    dfs(i,j,0)
                    if self.flag:return True
        return False 


```