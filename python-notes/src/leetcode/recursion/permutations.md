[leetcode.cn](https://leetcode-cn.com/problems/permutations/)
```python
# solution #1
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
# solution #2
class Solution:
    def permute(self, nums: List[int]) -> List[List[int]]:
        def my_per(i):
            if i ==len(nums)-1:
                ret.append(nums.copy())
                return
            for j in range(i,len(nums)):
                nums[i], nums[j] = nums[j],nums[i]
                my_per(i+1)
                nums[i], nums[j] = nums[j],nums[i]
        ret = []
        my_per(0)
        return ret
```