[leetcode.cn](https://leetcode-cn.com/problems/single-number/submissions/)
```python
class Solution:
    def singleNumber(self, nums: List[int]) -> int:
        n = len(nums)
        ret = 0

        for i in range(n):
            ret = ret^nums[i]
        return ret
        
```