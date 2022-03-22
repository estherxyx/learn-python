[leetcode](https://leetcode-cn.com/problems/remove-duplicates-from-sorted-array/)
```python
class Solution:
    def removeDuplicates(self, nums: List[int]) -> int:

        # eg
        # nums = [0,1,2,3,4,2,2,3,3,4]
        # nums = [0,1,2,3,1,2,2,3,3,4]
        #               i
        #                       j

        i = 0
        j = 0
        while j < len(nums):
            if nums[i] == nums[j]:
                j += 1
            else:
                i += 1
                nums[i] = nums[j]
        return i + 1
```