[leetcode.cc](https://leetcode-cn.com/problems/permutation-ii-lcci/submissions/)
```python
class Solution:
    def permutation(self, S: str) -> List[str]:
        n = len(S)
        ret = []
        if not n: return [""]
        for i in range(n):
            if S[i] in S[:i]:
                continue 
            for s in self. permutation(S[:i]+S[i+1:]):
                ret.append(S[i]+s)
        return ret

```