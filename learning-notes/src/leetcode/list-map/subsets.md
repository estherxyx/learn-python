[leetcode](https://leetcode-cn.com/problems/subsets/submissions/)
```python
class Solution:
    def subsets(self, nums: List[int]) -> List[List[int]]:
        ret = [[]]
        for n in nums: 
            ret += [[n]+ r for r in ret]
        return ret  
```