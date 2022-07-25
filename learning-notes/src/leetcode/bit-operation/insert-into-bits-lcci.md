(leetcode.cc)[https://leetcode-cn.com/problems/insert-into-bits-lcci/]
```python
class Solution:
    def insertBits(self, N: int, M: int, i: int, j: int) -> int:
       # N = 10000000000 
       # M =     10011
       # ret=[1000][10011][00]
       # i =  2 j = 6

        i_n = 0 
        i_m = 0 
        n = bin(N)[2:]
        m = bin(M)[2:]

        if len(m) == j-i+1: 
            ret = n[:-(j+1)] + m + n[len(n)-i:]
        else: 
            pivot_str = "0"*(j-i+1-len(m)) + m
            ret = n[:-(j+1)] + pivot_str + n[len(n)-i:]
        return int(ret,2)
```