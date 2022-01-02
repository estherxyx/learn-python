```python
# https://leetcode-cn.com/problems/binary-search/

class Solution:
    def search(self, nums: List[int], target: int) -> int:
        # eg
        # nums = [-1,0,3,5,9,12], n = 5
        # pivot = 2, val = 3 -> [3...4...5]
        # pivot = 4, val = 9

        i = 0
        j = len(nums) -1
        while j - i > 1:
            pivot = (j - i) // 2 + i
            val = nums[pivot]
            if val > target:
                j = pivot - 1
            elif val < target:
                i = pivot + 1
            else:
                return pivot

        if nums[i] == target:
            return i
        elif nums[j] == target:
            return j
        else:
            return -1
```