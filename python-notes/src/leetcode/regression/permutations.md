[leetcode.cn](https://leetcode-cn.com/problems/permutations/)
```python
class Solution:
    def permute(self, nums: List[int]) -> List[List[int]]:
        res = []
        def helper(nums,tmp):
            if not nums:
                res.append(tmp)
                return 
            for i in range(len(nums)):
                helper(nums[:i] + nums[i+1:],tmp+[nums[i]])

        helper(nums,[])
        return res
```