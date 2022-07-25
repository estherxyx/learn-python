[leetcode.cn](https://leetcode-cn.com/problems/combinations/)
```python
class Solution:
    def combine(self, n: int, k: int) -> List[List[int]]:
        res = []

        def helper(start,route):
            if len(route) == k:
                res.append(route[:])
                return res

            for i in range(start, n+1):
                route.append(i)
                helper(i+1, route)
                route.pop()
        helper(1, [])
        return res


```