(leetcode.cc)[https://leetcode-cn.com/problems/sorted-merge-lcci/submissions/]
```python
class Solution:
    def merge(self, A: List[int], m: int, B: List[int], n: int) -> None:
        """
        Do not return anything, modify A in-place instead.
        """
         
        i = 0 
        j = 0 
        res = []
        while i <m or j<n: 
            if i==m: 
                res.append(B[j])
                j += 1
            elif j==n: 
                res.append(A[i])
                i += 1
            elif A[i] <= B[j]:
                res.append(A[i])
                i += 1
            else: 
                res.append(B[j])
                j += 1
        A[:] = res
        return 
```