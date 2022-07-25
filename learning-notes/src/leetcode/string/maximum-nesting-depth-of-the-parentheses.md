[leetcode](https://leetcode-cn.com/problems/maximum-nesting-depth-of-the-parentheses/submissions/)
```python
class Solution:
    def maxDepth(self, s: str) -> int:
        count = 0
        ret = 0
        for b in s: 
            if b == "(":
                count += 1
                ret = max(count,ret)
            if b ==")": 
                count -=1 
        return ret 

```