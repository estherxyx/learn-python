https://leetcode-cn.com/problems/merge-two-binary-trees/submissions/
```python
# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def mergeTrees(self, root1: TreeNode, root2: TreeNode) -> TreeNode:

        def dfs(root1,root2):
            root = TreeNode()
            if not root1: 
                return root2
            elif not root2: 
                return root1
            else:
                root.val = root1.val + root2.val
                root.left = dfs(root1.left, root2.left)
                root.right = dfs(root1.right, root2.right)
            return root

        return dfs(root1,root2)

```