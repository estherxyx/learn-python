[leetcode](https://leetcode-cn.com/problems/delete-characters-to-make-fancy-string/submissions/)
```python
class Solution:
    def makeFancyString(self, s: str) -> str:
        ret = ""
        if len(s) <=2 : return s 
        for c in s: 
            if len(ret)>=2 and c ==ret[-1]==ret[-2]:
                continue 
            ret += c
        return ret

```