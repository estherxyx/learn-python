(leetcode.contest)[https://leetcode-cn.com/contest/weekly-contest-278/problems/all-divisions-with-the-highest-score-of-a-binary-array/]
```python
class Solution:
    def maxScoreIndices(self, nums: List[int]) -> List[int]:
#         # 0,0,1,0
        n = len(nums)
        dp = {}# {i:score}
        dp[0] = nums.count(1)
        ret = []
        _max = 0
        
        for i in range(n):
            if i >=1:
                score = nums[:i-1].count(0) + nums[i:].count(1)
                dp[i] = score
                _max = max(dp[i-1],dp[i])
                
        for i in range(n):
            if i>=1 and nums[:i-1].count(0) + nums[i:].count(1)==_max:
                ret.append(i+1)
                
        return ret
            # l = 0
            # r = sum(nums)
            # dic = {l+r: [0]} # {score: [index]}
            # _max = l+r
            # for i, n in enumerate(nums):
            #     if n == 0:
            #         l += 1
            #     elif n == 1:
            #         r -= 1
            #     score = l+r
            #     if score not in dic:
            #         dic[score] = []
            #     dic[score].append(i+1)
            #     _max = max(_max, score)
            # # print(dic)
            # return dic[_max]
                    
```