(leetcode)[https://leetcode-cn.com/problems/find-majority-element-lcci/submissions/]
```python
class Solution:
    def majorityElement(self, nums: List[int]) -> int:
        res = -1 
        count  = 0
        for n in nums: 
            if not count: 
                res = n 
            if n == res: 
                count += 1 
            else: 
                count -= 1 
        return res if count and nums.count(res)> len(nums)//2 else -1 
        
```