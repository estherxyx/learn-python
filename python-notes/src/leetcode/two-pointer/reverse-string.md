https://leetcode-cn.com/problems/reverse-string/submissions/
```python
class Solution:
    def reverseString(self, s: List[str]) -> None:
        """
        Do not return anything, modify s in-place instead.
        """
        i = 0 
        j = len(s)-1

        while j>i: 
            s[j], s[i] = s[i] + s[j]
            j -= 1
            i += 1
```