[link](https://leetcode-cn.com/problems/populating-next-right-pointers-in-each-node/)

```python
"""
# Definition for a Node.
class Node:
    def __init__(self, val: int = 0, left: 'Node' = None, right: 'Node' = None, next: 'Node' = None):
        self.val = val
        self.left = left
        self.right = right
        self.next = next
"""

class Solution:
    def connect(self, root: 'Optional[Node]') -> 'Optional[Node]':
        # if not root or not root.left or not root.right: return root
        # ret = root 
        # while ret.left:
        #     head = ret.left
        #     while ret:
        #         ret.left.next = ret.right 
        #         if ret.next:
        #             ret.right.next = ret.next.left 

        #         ret = ret.next 
        #     ret = head
        # return root 

        def moveNext(nodes):
            head = nodes[0]
            for node in nodes[1:]:
                head.next = node
                head = node

        def bfs(node):
            queue = [node]
            while queue:
                moveNext(queue)
                new_queue = []
                for cur_node in queue:
                    for tmp_node in [cur_node.left, cur_node.right]:
                        if tmp_node:
                                new_queue.append(tmp_node)
                queue = new_queue
        if root:
            bfs(root)
        return root
    
            
```