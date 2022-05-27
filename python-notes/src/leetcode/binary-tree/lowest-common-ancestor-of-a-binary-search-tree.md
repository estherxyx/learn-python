[leetcode](https://leetcode.cn/problems/lowest-common-ancestor-of-a-binary-search-tree/)
```python
# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None

class Solution:
    def lowestCommonAncestor(self, root: 'TreeNode', p: 'TreeNode', q: 'TreeNode') -> 'TreeNode':
        def findPath(root,target) ->List[TreeNode]:
            path = []
            node = root
            while node != target:
                path.append(node)
                if node.val > target.val:
                    node = node.left
                else:
                    node = node.right
            path.append(node)
            return path

        p_path = findPath(root,p)
        q_path = findPath(root,q)
        ret = None
        for i in p_path:
            for j in q_path:
                if i == j:
                    ret = i
                else: break
        return ret

```
