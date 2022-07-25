[leetcode.cc](https://leetcode-cn.com/problems/construct-string-from-binary-tree/submissions/)
```python
# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def tree2str(self, root: Optional[TreeNode]) -> str:
        if not root: return ''
        ret = str(root.val)
        if not root.left and not root.right: 
            return ret
        _left = self.tree2str(root.left)
        _right = self.tree2str(root.right)
        ret += "(" + _left + ")"
        if _right: 
            ret += "(" + _right + ")"
        return ret 

```
