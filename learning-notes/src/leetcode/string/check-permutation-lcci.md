[leetcode.cc](https://leetcode-cn.com/problems/check-permutation-lcci/)
```python
class Solution:
    def CheckPermutation(self, s1: str, s2: str) -> bool:
        dic1 = [0]*26
        dic2 = [0]*26 

        if len(s1) != len(s2): return False 

        for i in range(len(s1)): 
            dic1[ord(s1[i])-ord("a")] += 1
            dic2[ord(s2[i])-ord("a")] += 1
        return dic1 ==dic2

```