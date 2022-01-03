https://leetcode-cn.com/problems/squares-of-a-sorted-array/submissions/
```python
class Solution:
    def sortedSquares(self, nums: List[int]) -> List[int]:
        i = 0
        j = len(nums)-1
        k = len(nums)-1
        nums_squared = [0]*len(nums)

        while i<= j:
            if nums[i] *nums[i] > nums[j] * nums[j]:
               nums_squared[k] =  nums[i] *nums[i]
               i += 1
            else:
                nums_squared[k] =  nums[j] *nums[j]
                j -= 1
            k -=1
        return nums_squared 
```