[leetcode.cc](https://leetcode-cn.com/problems/smallest-difference-lcci/)
```python
class Solution:
    def smallestDifference(self, a: List[int], b: List[int]) -> int:
        m, n = len(a),len(b)
        a.sort()
        b.sort()
        i, j = 0, 0 
        ret = float('inf')
        while i <m and j<n: 
            if a[i]<=b[j]: 
                ret = min(ret,b[j]-a[i])
                i += 1
            else: 
                ret =  min(ret,a[i]-b[j])
                j += 1
        return ret 
```
