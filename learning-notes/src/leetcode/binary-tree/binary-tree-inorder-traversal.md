## Tree Traversal
- preorder: mid left right
- inorder: left mid right
- postorder: left right mid

```python
# https://leetcode-cn.com/problems/binary-tree-inorder-traversal/

# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def inorderTraversal(self, root: Optional[TreeNode]) -> List[int]:
        # inorder: left mid right
        ret = []
        if root:
            ret += self.inorderTraversal(root.left)
            ret.append(root.val)
            ret += self.inorderTraversal(root.right)
        return ret
```