(leetcode.cc)[https://leetcode-cn.com/problems/power-set-lcci/]
```python
class Solution:
    def subsets(self, nums: List[int]) -> List[List[int]]:
        res = [[],]
        if not nums: 
            return res
        for n in nums:
            res += [i+[n] for i in res]
        return res 
```