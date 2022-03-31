[leetcode](https://leetcode-cn.com/problems/balanced-binary-tree/submissions/)
```python
# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def isBalanced(self, root: TreeNode) -> bool:
        def tree_height(root):
            if not root: return 0  
            _max = max(tree_height(root.left), tree_height(root.right))+1
            return _max 
        if not root: return True
        height_diff = abs(tree_height(root.left)-tree_height(root.right))
        return height_diff<=1 and self.isBalanced(root.left) and self.isBalanced(root.right)
        
```