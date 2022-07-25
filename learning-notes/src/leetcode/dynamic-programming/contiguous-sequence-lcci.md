(leetcode.cc)[https://leetcode-cn.com/problems/contiguous-sequence-lcci/]
```python
class Solution:
    def maxSubArray(self, nums: List[int]) -> int:
        if not nums: return None 
        _max = nums[0]
        cur = nums[0]
        for i in range(1,len(nums)):
            cur = max(cur+nums[i],nums[i])
            _max = max(_max,cur)
        return _max 
```