(leetcode)[https://leetcode-cn.com/problems/kth-node-from-end-of-list-lcci/]
```python
# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, x):
#         self.val = x
#         self.next = None

class Solution:
    def kthToLast(self, head: ListNode, k: int) -> int:
        
        values = []
        while head: 
            values.append(head.val)
            head = head.next 
        n = len(values)

        return values[n-k]
```