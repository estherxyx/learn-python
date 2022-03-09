(leetcode)[https://leetcode-cn.com/problems/missing-number-lcci/submissions/]
```python
class Solution:
    def missingNumber(self, nums: List[int]) -> int:
        # #solution #1 
        # i = 0
        # n = len(nums)
        # while i <=n: 
        #     if i in nums: 
        #         i += 1
        #     else: 
        #         return i
        # # solution #2 
        # return sum(range(len(nums)+1))-sum(nums)
        # solution #3 
        nums.sort()
        i = 0
        n = len(nums)
        if n != nums[n-1]: return n 
        while i<=n: 
            if i == nums[i]:
                i +=1 
            else: 
                return i
```