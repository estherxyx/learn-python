[leetcode.cc](https://leetcode-cn.com/problems/compress-string-lcci/)
```python
class Solution:
    def compressString(self, S: str) -> str:
        if not S: return ""
        count = 0 
        c_0 = S[0]
        ret = ''

        for c in S: 
            if c == c_0: 
                count += 1 
            else: 
                ret += c_0 + str(count)
                c_0 = c 
                count = 1
        ret += c_0 + str(count)

        if len(ret)>= len(S):
            return S 
        else: 
            return ret

```