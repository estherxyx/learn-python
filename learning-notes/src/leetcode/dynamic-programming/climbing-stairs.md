[leetcode.cn](https://leetcode-cn.com/problems/climbing-stairs/)
```python
class Solution:
    def climbStairs(self, n: int) -> int:
        # dynamic_programming
        # dp = {1:1, 2:2, 3:3}
        dp = [0]*(n+2)
        dp[1] = 1
        dp[2] = 2
        if n<=2: return n
        i = 3

        while i <= n+1: 
            if n>=3:
                dp[i] = dp[i-1]+ dp[i-2]
            i += 1

        return dp[n]
```