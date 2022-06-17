[leetcode.cc](https://leetcode-cn.com/problems/check-subtree-lcci/submissions/)
```python
# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None

class Solution:
    def checkSubTree(self, t1: TreeNode, t2: TreeNode) -> bool:
        def tree_dfs(t1,t2):
            if not t2:
                return True
            elif t1== None and t2!= None: 
                return False
            elif t1.val != t2.val:
                return False
            else: 
                return tree_dfs(t1.left,t2.left) and  tree_dfs(t1.right,t2.right)
        
        if not t2: return True 
        elif not t1: return False
        else: 
            return tree_dfs(t1,t2) or self.checkSubTree(t1.left,t2) or self.checkSubTree(t1.right,t2)
```