[leetcode](https://leetcode.cn/problems/intersection-of-multiple-arrays/)
```python
class Solution:
    def intersection(self, nums: List[List[int]]) -> List[int]:
        n = len(nums)
        ret = nums[0]
        for i in range(1,n):
            tmp = set()
            for n in nums[i]:
                if n in ret:
                    tmp.add(n)
            ret = tmp
        return sorted(ret)

```
