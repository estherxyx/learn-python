[leetcode.cc](https://leetcode-cn.com/problems/remove-duplicate-node-lcci/submissions/)
```python
# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, x):
#         self.val = x
#         self.next = None

class Solution:
    def removeDuplicateNodes(self, head: ListNode) -> ListNode:
        if not head: return head 
        dic = set()
        cur  = head
        pre = None 
        while cur: 
            if cur.val in dic: 
                pre.next = cur.next
            else:
                dic.add(cur.val)
                pre = cur 
            cur = cur.next 
            
        return head

```