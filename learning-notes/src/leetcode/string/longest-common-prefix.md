(leetcode.top-interview-questions-easy)[https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnmav1/]
```python
class Solution:
    def longestCommonPrefix(self, strs: List[str]) -> str:
        if not strs: return ""
        for i in range(len(strs[0])):
            char = strs[0][i]
            for j in range(1,len(strs)):
                if i == len(strs[j]) or strs[j][i] != char:
                    return strs[0][:i]
        return strs[0]
```