[leetcode](https://leetcode-cn.com/problems/shortest-distance-to-a-character/submissions/)
```python
class Solution:
    def shortestToChar(self, s: str, c: str) -> List[int]:
        n = len(s)
        ret = [0]*n
        j = -n
        for i in range(n):
            if s[i] ==c: 
                j = i
            ret[i] = i-j

        j = 2*n
        for i in range(n-1,-1,-1):
            if s[i] ==c: 
                j = i
            ret[i]= min(ret[i],j-i)
        return ret
          
```