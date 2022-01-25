(leetcode.cc)[https://leetcode-cn.com/problems/convert-integer-lcci/submissions/]
```python
class Solution:
    def convertInteger(self, A: int, B: int) -> int:
   
        c = A ^ B
        ret = 0
        # to find how many "1" in c 
        for i in range(32): 
            ret += c>>i&1 #rightshift and find 1
        return ret 
```
