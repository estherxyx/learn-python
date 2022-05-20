[leetcode](https://leetcode.cn/problems/convert-sorted-array-to-binary-search-tree/)
```python
# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def sortedArrayToBST(self, nums: List[int]) -> Optional[TreeNode]:
        if not nums: return None
        # dfs
        pivot = len(nums)//2
        ret = TreeNode(nums[pivot])
        ret.left = self.sortedArrayToBST(nums[:pivot])
        ret.right = self.sortedArrayToBST(nums[pivot+1:])
        return ret
```
