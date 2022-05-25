[leetcode](https://leetcode.cn/problems/remove-digit-from-number-to-maximize-result/submissions/)
```python
class Solution:
    def removeDigit(self, number: str, digit: str) -> str:
        res = ""
        size = len(number)
        for i in range(size):
            if number[i]==digit:
                tmp = number[:i]+number[i+1:]
                res = max(res,tmp)
        return res
```