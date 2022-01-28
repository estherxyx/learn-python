(leetcode.top-interview-questions-easy)[https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnr003/]
```python
class Solution:
    def strStr(self, haystack: str, needle: str) -> int:
        # # "hello"
        # #  i j
        # #   "ll"
        n = len(haystack)
        m = len(needle)
        i = 0
        if m>n: return -1 
        while i+m <= n:
            if haystack[i:i+m] == needle:
                return i 
            i += 1 
        return -1

```