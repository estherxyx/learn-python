https://leetcode-cn.com/problems/remove-nth-node-from-end-of-list/submissions/
```python
# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next

class Solution:
    def removeNthFromEnd(self, head: ListNode, n: int) -> ListNode:

        def getLength(head: ListNode) -> int:
            length = 0        
            while head: 
                length+= 1
                head = head.next
            return length 

        L = getLength(head)
        # [1,2,3,4,5] L= 5 
        # if n = 2 the first three nodes are kept the same 
        # we wanna link the third(L-n) node to the fifth(L-n+2) 
        res = ListNode(0,head)
        cur_node = res

        for i in range(1,L-n+1):
            cur_node = cur_node.next
        cur_node.next = cur_node.next.next

        return res.next
```