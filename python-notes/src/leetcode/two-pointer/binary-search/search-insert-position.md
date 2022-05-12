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
    # solution #2

    class Solution:
    def searchInsert(self, nums: List[int], target: int) -> int:
        if target >nums[len(nums)-1]:return len(nums)
        i = 0
        j = len(nums)-1
        while j>i:
            mid = (j-i)//2 +i
            if nums[mid] <target:
                i = mid +1
            else:
                j = mid
        return j


```
