[leetcode](https://leetcode.cn/problems/merge-two-sorted-lists/)
```python
# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def mergeTwoLists(self, L1: Optional[ListNode], L2: Optional[ListNode]) -> Optional[ListNode]:
        ret = dumy = ListNode()
        while L1 and L2:
            if L1.val <= L2.val:
                dumy.next = L1
                L1 = L1.next
            else:
                dumy.next = L2
                L2 = L2.next
            dumy = dumy.next
        dumy.next = L1 or L2
        return ret.next

```