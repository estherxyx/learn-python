[leetcode](https://leetcode.cn/problems/linked-list-cycle/)
```python
# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, x):
#         self.val = x
#         self.next = None

class Solution:
    def hasCycle(self, head: Optional[ListNode]) -> bool:
        # hash map
        # seen = set()
        # while head:
        #     if head in seen:
        #         return True
        #     seen.add(head)
        #     head = head.next
        # return False

        # slow fast pointer
        if not head or not head.next : return False

        slow = head
        fast = head.next
        while slow != fast:
            if not fast or not fast.next: return False
            slow = slow.next
            fast = fast.next.next
        return True

```