```python
# https://leetcode-cn.com/problems/two-sum/
class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        # eg
        # nums = [2,7,11,15], target = 9
        # 2 -> [7,11,15]
        # 7 -> [11,15]
        # ...

        ## sol1:
        # for i, n in enumerate(nums):
        #     for j, m in enumerate(nums):
        #         if j > i:
        #             if n + m == target:
        #                 return [i, j]
        # return [-1, -1]

        ## sol2:
        needed = {}
        for i, n in enumerate(nums):
            if n in needed:
                return [needed[n], i]

            reminder = target - n
            needed[reminder] = i
        return [-1, -1]

        ## demo
        # i: 1
        # n: 7
        # needed: {7: 0}
        # reminder: 7
```