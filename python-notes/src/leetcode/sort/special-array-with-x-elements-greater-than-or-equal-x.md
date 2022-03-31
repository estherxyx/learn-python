[leetcode](https://leetcode-cn.com/problems/special-array-with-x-elements-greater-than-or-equal-x/submissions/)
```python
class Solution:
    def specialArray(self, nums: List[int]) -> int:
        nums.sort()
        for i in range(len(nums)+1):
            if nums[-i] <i: 
                if nums[-i] <i-1:
                    return i-1
                else: return -1 
        return len(nums) 

```