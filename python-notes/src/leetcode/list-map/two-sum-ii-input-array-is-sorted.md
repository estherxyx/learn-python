https://leetcode-cn.com/problems/two-sum-ii-input-array-is-sorted/submissions/
- solution #1 copied codes from two-sum 
- solution #2 tried to two pointers method 
```python
class Solution:
    def twoSum(self, numbers: List[int], target: int) -> List[int]:
        # Solution #1
        # copied codes from two-sum 
        # added "+1" when return
        # needed = {}
        # for i, n in enumerate(numbers):
        #     if n in needed:
        #         return [needed[n]+1, i+1]

        #     reminder = target - n
        #     needed[reminder] = i
        # return [-1, -1]

        #Solution #2 two pointers
        # i from head to tail 
        # j from tail move backwards 
        i = 0 
        j = len(numbers)-1

        while j>i:
            val = numbers[j] + numbers[i]
            if val == target:
                return[i+1,j+1]
            elif val > target:
                j -= 1
            else:
                i += 1
        return [-1, -1]
```