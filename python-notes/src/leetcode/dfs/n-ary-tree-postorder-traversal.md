[leetcode.cc](https://leetcode-cn.com/problems/n-ary-tree-postorder-traversal/submissions/)
```python
"""
# Definition for a Node.
class Node:
    def __init__(self, val=None, children=None):
        self.val = val
        self.children = children
"""

class Solution:
    def postorder(self, root: 'Node') -> List[int]:
        ret = []
        def dfs(root):
            if not root: return None 
            for c in root.children: 
                dfs(c)
            ret.append(root.val)
        dfs(root)
        return ret

```
