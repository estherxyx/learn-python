https://leetcode-cn.com/problems/search-insert-position/
```python
class Solution:
    def searchInsert(self, nums: List[int], target: int) -> int:
        i = 0
        j = len(nums) -1
        if nums[i] >= target: 
            return i 
        elif nums[j] < target: 
            return j +1

        while j-i >1:
            pivot = (j - i) // 2 + i
            val = nums[pivot] 
            if val > target:
                j = pivot
            elif val < target:
                i = pivot 
            else:
                return pivot
            
        return j
```
