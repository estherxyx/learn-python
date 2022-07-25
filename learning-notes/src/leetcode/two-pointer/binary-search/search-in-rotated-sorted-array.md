[leetcode](https://leetcode.cn/problems/search-in-rotated-sorted-array/submissions/)
```python
class Solution:
    def search(self, nums: List[int], target: int) -> int:
        # not great solution
        for i in range(len(nums)):
            if nums[i] ==target:
                return i
        return -1
        # try to limit the time complexity into O(logn)
        i = 0
        j = len(nums)-1
        while i<j:
            mid = (i+j)//2
            if nums[mid] ==target:
                return mid
            if nums[0]<=nums[mid]:
                if nums[0]<target<nums[mid]:
                    j = mid -1
                else:
                    i = mid +1
            else:
                if nums[mid]<target<nums[len(nums)-1]:
                    i = mid +1
                else:
                    j = mid -1
        return -1


```