[leetcode.cc](https://leetcode-cn.com/problems/n-ary-tree-preorder-traversal/submissions/)
```python
"""
# Definition for a Node.
class Node:
    def __init__(self, val=None, children=None):
        self.val = val
        self.children = children
"""

class Solution:
    def preorder(self, root: 'Node') -> List[int]:
        ret = []
        def dfs(root):
            if not root: return None 
            ret.append(root.val)
            for c in root.children:
                dfs(c)
        dfs(root)
        return ret 

```