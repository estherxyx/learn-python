(leetcode.contest)[https://leetcode-cn.com/contest/weekly-contest-278/problems/keep-multiplying-found-values-by-two/]
```python
for i in range(len(nums)):
            while original in nums: 
                original = original*2
        return original 
```