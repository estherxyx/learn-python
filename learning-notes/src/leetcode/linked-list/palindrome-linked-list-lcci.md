[leetcode.md](https://leetcode-cn.com/problems/palindrome-linked-list-lcci/)
```python
# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, x):
#         self.val = x
#         self.next = None
class Solution:
    def isPalindrome(self, head: ListNode) -> bool:
        # # Solution #1 
        # ret = []
        # while head: 
        #     ret.append(head.val)
        #     head = head.next
        # return ret==ret[::-1]

        # Solution #2 
        # find the middle point of the list 
        # reverse the latter part of the list 
        # compare the first half and reversed the list 
        if not head: return True 

        def findMiddle(head):
            slow, fast = head, head 
            while fast.next.next and fast.next: 
                slow = slow.next 
                fast = fast.next.next
            return slow 

        def reverseList(head):
            prev = None 
            cur = head 
            while cur: 
                _next= cur.next
                cur.next = prev
                prev = cur
                cur = _next
            return prev

        first_half = findMiddle(head)
        second_half = reverseList(first_half.next)
        first = head
        second = second_half 

        while first and second: 
            if first.val !=second.val:
               return False
            first = first.next
            second = second.next 
        return True 
        
```