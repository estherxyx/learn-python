[leetcode](https://leetcode.cn/problems/balanced-binary-tree/)
```python
# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def isBalanced(self, root: TreeNode) -> bool:
        def getHeight(root):
            if not root:return 0
            return max(getHeight(root.left),getHeight(root.right))+1

        if not root : return True
        return self.isBalanced(root.left) and self.isBalanced(root.right) and abs(getHeight(root.left)-getHeight(root.right))<=1
```

