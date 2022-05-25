[leetcode](https://leetcode.cn/problems/largest-3-same-digit-number-in-string/submissions/)
```python
class Solution:
    def largestGoodInteger(self, num: str) -> str:
        ret = ""
        size = len(num)
        for i in range(size-2):
            if num[i]==num[i+1]==num[i+2]:
                tmp = num[i] + num[i+1] + num[i+2]
                ret = max(ret,tmp)
        return ret

```