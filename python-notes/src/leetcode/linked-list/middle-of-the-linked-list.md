https://leetcode-cn.com/problems/middle-of-the-linked-list/comments/
```python
# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def middleNode(self, head: ListNode) -> ListNode:
        pointer_1 = head
        pointer_2 = head

        # pointer_1 1step at a time
        # pointer_2 2stpes at a time 
        # while pointer_2 finished the entire list return pointer_1 list 

        while pointer_2 and pointer_2.next: 
            pointer_1,pointer_2 = pointer_1.next,pointer_2.next.next
        return pointer_1

```
