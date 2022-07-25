[leecode](https://leetcode-cn.com/problems/merge-intervals/)
```python
class Solution:
    def merge(self, intervals: List[List[int]]) -> List[List[int]]:
        intervals.sort(key=lambda x: x[0])
        ret = []
        for i in (intervals):
            if not ret or ret[-1][1]<i[0]: 
                ret.append(i)
            else: 
                ret[-1][1] = max(ret[-1][1],i[1])
        return ret     


```