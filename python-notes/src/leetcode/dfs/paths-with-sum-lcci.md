[leetcode.cc](https://leetcode-cn.com/problems/paths-with-sum-lcci/submissions/)
```python
# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None

class Solution:
    def pathSum(self, root: TreeNode, sum: int) -> int:
        count = Counter([0])
        self.ret = 0 
    
        def dfs(cur, prev):
            if not cur: return 
            prev += cur.val
            self.ret += count[prev-sum]
            count[prev] += 1
            dfs(cur.left, prev)
            dfs(cur.right,prev)
            count[prev] -= 1
            prev -= cur.val
        dfs(root,0)
        return self.ret

```