[leetcode](https://leetcode-cn.com/problems/minimum-absolute-difference/submissions/)
```python
class Solution:
    def minimumAbsDifference(self, arr: List[int]) -> List[List[int]]:
        arr.sort()
        dic = collections.defaultdict(list)
        diff_min = float('inf')
        for i in range(len(arr)-1):
            _min = abs(arr[i+1]-arr[i])
            diff_min = min(diff_min,_min)
            dic[_min].append([arr[i],arr[i+1]])
        return dic[diff_min]

```