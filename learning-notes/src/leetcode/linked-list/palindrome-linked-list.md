[leetcode](https://leetcode-cn.com/problems/palindrome-linked-list/solution/)
```python
# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def isPalindrome(self, head: ListNode) -> bool:
        if not head: return True 
        ret = []
        while head: 
            ret.append(head.val)
            head = head.next 
        n = len(ret)
        flag = True 
        for i in range(n):
            if ret[i] == ret[n-i-1]:
                flag = flag
            else:
                flag = False
        return flag
```