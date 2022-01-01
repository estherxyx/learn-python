```python
# https://leetcode-cn.com/problems/binary-tree-level-order-traversal/

# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def levelOrder(self, root: TreeNode) -> List[List[int]]:
        self.ret = []
        def bfs(node):
            queue = [node]
            while queue:
                self.ret.append([n.val for n in queue])
                new_queue = []
                for cur_node in queue:
                    for tmp_node in [cur_node.left, cur_node.right]:
                        if tmp_node:
                                new_queue.append(tmp_node)
                queue = new_queue
        if root:
            bfs(root)
        return self.ret
```