[leetcode.cn](https://leetcode-cn.com/problems/power-of-two/)
```python
class Solution:
    def isPowerOfTwo(self, n: int) -> bool:
        # First try: failed lol 
        # bin_n = list(bin(n)[2:]) # this is wrong, we need a string in for loop!! 
        # print(bin_n)
        # for c in bin_n: # the bin_n has to be a string in this case 
        #     count = 0
        #     if c == "1": 
        #         count += 1
        # return n>0 and count ==1

        # second try: worked 
        # return n>0 and bin(n).count("1")==1

        # final round: 
        ## if we do "for c in bin(n)", the "bin(n)" has to be a string not a list!! 
        ret = 0
        for c in bin(n):
            if c == "1":
                ret += 1
        return n>0 and ret==1

```