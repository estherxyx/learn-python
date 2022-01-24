[leetcode.cc](https://leetcode-cn.com/problems/reverse-bits-lcci/submissions/)
```python
class Solution:
    def reverseBits(self, num: int) -> int:
        cur = 0 
        pivot = 0 
        ret = 1

        # for c in bin(num):  
        #     if num and c=="1": 
        for i in range(32):
            if num &(1<<i):
                cur += 1 
                pivot += 1
            else: 
                pivot = cur +1 
                cur = 0 
            ret = max(pivot, ret)
                
        return ret
```