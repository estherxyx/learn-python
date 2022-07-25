[leetcode](https://leetcode-cn.com/problems/combination-sum/)
```python
class Solution:
    def combinationSum(self, candidates: List[int], target: int) -> List[List[int]]:
        ret = []
        tmp = []
        def dfs(s,target,start):
            if target ==sum(tmp):return ret.append(tmp[:])
            for i in range(start,len(s)):
                if s[i] + sum(tmp) >target:return
                tmp.append(s[i])
                dfs(s,target,i)
                tmp.pop()
        candidates.sort()
        dfs(candidates,target,0)
        return ret
```