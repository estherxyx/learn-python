[leetcode](https://leetcode-cn.com/problems/jump-game/)
```python
class Solution:
    def canJump(self, nums: List[int]) -> bool:
        n = len(nums)
        sum = 0
        for i in range(n): 
            if i <= sum: 
                sum = max(sum,i+nums[i])
                if sum >= n-1: 
                    return True 
        return False 
```