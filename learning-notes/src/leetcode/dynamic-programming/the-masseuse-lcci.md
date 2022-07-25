(leetcode)[https://leetcode-cn.com/problems/the-masseuse-lcci/]
```python
class Solution:
    def massage(self, nums: List[int]) -> int:
        ## exact same code as housing robbing 
        # dynamic_programming
        if not nums: return 0
        dp = {} 
        dp[0] = nums[0]
        if len(nums) == 1:
            return dp[0]
            
        dp[1] = max(nums[0], nums[1])
        if len(nums) == 2:
            return dp[1]
        
        for room, val in enumerate(nums): #room=2
            if room >= 2:
                dp[room] = max(
                    dp[room-1],
                    val+dp[room-2]
                )
        return max(dp.values())

```