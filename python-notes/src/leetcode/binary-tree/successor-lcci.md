(leetcode.cc)[https://leetcode-cn.com/problems/successor-lcci/submissions/]
```python
# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None

class Solution:
    def inorderSuccessor(self, root: TreeNode, p: TreeNode) -> TreeNode:
        #binary search 
        #this works due to the property of an inorder bst 
        ret = None 
        cur = root 

        while cur: 
            if cur.val <= p.val: 
                cur = cur.right 
            else: 
                ret = cur 
                cur = cur.left 
        return ret 
```