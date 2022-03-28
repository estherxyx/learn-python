[leetcode.cc](https://leetcode-cn.com/problems/range-addition-ii/submissions/)
```python
class Solution:
    def maxCount(self, m: int, n: int, ops: List[List[int]]) -> int:
        mina = m 
        minb = n 
        for a, b in ops: 
            mina = min(mina,a)
            minb = min(minb,b)
        return mina*minb
```