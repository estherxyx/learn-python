[leetcode.cc](https://leetcode-cn.com/problems/living-people-lcci/submissions/)
```python
class Solution:
    def maxAliveYear(self, birth: List[int], death: List[int]) -> int:
        # n, m = len(birth),len(death)
        # dic_1 = [0]*(n+mx)
        birth_count = collections.Counter(birth)
        death_count = collections.Counter(death)
        _alive = 0 
        _max = 0 
        res = 0
        for i in range(1900,2001):
            _alive += birth_count[i]
            _alive -= death_count[i-1]
            if _alive >_max: 
                _max = _alive
                res = i 
        return res

```