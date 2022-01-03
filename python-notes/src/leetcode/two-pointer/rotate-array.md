```python
class Solution:
    def rotate(self, nums: List[int], k: int) -> None:
        """
        Do not return anything, modify nums in-place instead.
        """
        n = len(nums)
        if k > 0:
            reminder = n - k % n
            nums[:] = nums[reminder:] + nums[:reminder]
        else:
            nums[:] = nums[:]
```