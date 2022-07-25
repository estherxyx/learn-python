(leetcode.cc)[https://leetcode-cn.com/problems/hanota-lcci/submissions/]
```python
class Solution:
    def hanota(self, A: List[int], B: List[int], C: List[int]) -> None:
        """
        Do not return anything, modify C in-place instead.
        # """
        n = len(A)
        self.move_hanota(n,A,B,C)
        
    def move_hanota(self,n,A,B,C): 
        if n ==1: 
            C.append(A[-1])
            A.pop()
            return 
        else: 
            self.move_hanota(n-1,A,C,B)
            C.append(A[-1])
            A.pop()
            self.move_hanota(n-1,B,A,C)
```