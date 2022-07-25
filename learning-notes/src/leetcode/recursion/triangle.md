[leetcode.cn](https://leetcode-cn.com/problems/triangle/)
```python
class Solution:
    def minimumTotal(self, triangle: List[List[int]]) -> int:
        n = len(triangle)
        ret = [[0]*n for _ in range(n)]
        ret[0][0] = triangle[0][0]

        for i in range(1,n):
            ret[i][0] = triangle[i][0] + ret[i-1][0]
            for j in range(1,i):
                ret[i][j] =triangle[i][j] + min(ret[i-1][j-1], ret[i-1][j]) 
            ret[i][i] = triangle[i][i] + ret[i-1][i-1]

        return min(ret[n-1])
```