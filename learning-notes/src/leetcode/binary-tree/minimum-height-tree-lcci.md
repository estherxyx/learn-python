(leetcode.cc)[https://leetcode-cn.com/problems/minimum-height-tree-lcci/]
```python
# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None

class Solution:
    def sortedArrayToBST(self, nums: List[int]) -> TreeNode:
        if not nums: return None 
        # dfs 
        pivot = len(nums)//2
        ret = TreeNode(nums[pivot])
        ret.left = self.sortedArrayToBST(nums[:pivot])
        ret.right = self.sortedArrayToBST(nums[pivot+1:])
        return ret 
```