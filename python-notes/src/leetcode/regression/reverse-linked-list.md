# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def reverseList(self, head: ListNode) -> ListNode:
        ## sol1:
        # nums = []     
        # dummy = ListNode()
        # dummy.next = head

        # while head:
        #     nums.append(head.val)
        #     head = head.next

        # head = dummy.next

        # for n in nums[::-1]:
        #     head.val = n
        #     head = head.next
        # return dummy.next

        ## sol2
        def helper(prev, cur):
            if cur.next:
                tmp = cur.next
                cur.next = prev
                return helper(cur, tmp)
            else:
                cur.next = prev
                return cur
        if head:
            return helper(None, head)
        else:
            return None