(leetcode.cc)[https://leetcode-cn.com/problems/sparse-array-search-lcci/submissions/]
```python
class Solution:
    def findString(self, words: List[str], s: str) -> int:
        
        if not words: return -1 
        for i,c in enumerate(words): 
            if c == s: 
                return i 
        return -1

```