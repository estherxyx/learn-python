[leetcode](https://leetcode-cn.com/problems/rotate-string/submissions/)
```python
class Solution:
    def rotateString(self, s: str, goal: str) -> bool:
        return len(s)==len(goal) and goal in s+s 
```