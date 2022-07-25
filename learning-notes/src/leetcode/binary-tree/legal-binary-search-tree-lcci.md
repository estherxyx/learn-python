(leetcode.cc)[https://leetcode-cn.com/problems/legal-binary-search-tree-lcci/submissions/]
```python
# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None

class Solution:
    def isValidBST(self, root: TreeNode) -> bool:
        ret = []
        def inorderTraversal(root): 
            if root:
                inorderTraversal(root.left)
                ret.append(root.val)
                inorderTraversal(root.right)
            # return ret
        inorderTraversal(root)
        return ret == sorted(set(ret))

```