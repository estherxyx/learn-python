[leetcode.cc](https://leetcode-cn.com/problems/minimum-index-sum-of-two-lists/submissions/)
```python
class Solution:
    def findRestaurant(self, list1: List[str], list2: List[str]) -> List[str]:
        ret = []
        _sum = inf
        dic = {s: i for i,s in enumerate(list1)}
        for i, s in enumerate(list2):
            if s in dic: 
                if i + dic[s] < _sum: 
                    _sum = i +dic[s]
                    ret = [s]
                elif i + dic[s] == _sum: 
                    ret.append(s)
        return ret 

```