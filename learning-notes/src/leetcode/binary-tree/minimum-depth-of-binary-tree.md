[leetcode](https://leetcode.cn/problems/minimum-depth-of-binary-tree/submissions/)
```python
# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def minDepth(self, root: TreeNode) -> int:
        if not root: return 0
        if not root.left and not root.right: return 1
        min_depth = 10**5
        if root.left:
            min_depth = min(self.minDepth(root.left),min_depth)
        if root.right:
            min_depth = min(self.minDepth(root.right),min_depth)
        return min_depth+1
```