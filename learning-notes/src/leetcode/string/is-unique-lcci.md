[leetcode.cc](https://leetcode-cn.com/problems/is-unique-lcci/)
```python
class Solution:
    def isUnique(self, astr: str) -> bool:

        # solution #1 
        astr = sorted(astr)
        for i in range (1,len(astr)):
            if astr[i]==astr[i-1]:
                return False
        return True

        # # solution # 2
        # return len(set(astr))==len(astr) 

        ## solution #3 
        dic = [0]*26

        for i in range(len(astr)):
            dic[ord(astr[i])-ord("a")] += 1

        for i in range(len(dic)):
            if dic[i] >1: 
                return False
        return True 

```