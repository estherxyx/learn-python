(leetcode.cc)[https://leetcode-cn.com/problems/permutation-i-lcci/comments/]
```python
class Solution:
    def permutation(self, S: str) -> List[str]:
        res = []
        pivot = ""
        def helper(S,pivot,res)->List[str]:
            if S == "": 
                res.append(pivot)
                return 
            for i in range(len(S)):
                cur = S[i]
                helper(S[:i]+S[i+1:],pivot+cur,res)
        helper(S,pivot,res)
        return res

```