[leetcode.cc](https://leetcode-cn.com/problems/group-anagrams-lcci/submissions/)
```python
class Solution:
    def groupAnagrams(self, strs: List[str]) -> List[List[str]]:
        # dic = {}
        dic = collections.defaultdict(list)
        for s in strs: 
            key = "".join(sorted(s))
            dic[key].append(s)
        return list(dic.values())

```