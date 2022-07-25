[leetcode.cc](https://leetcode-cn.com/problems/sorted-matrix-search-lcci/submissions/)
```python
class Solution:
    def searchMatrix(self, matrix: List[List[int]], target: int) -> bool:
        if not matrix: return False 
        n = len(matrix)
        m = len(matrix[0])
        i = 0
        j = m-1
        while i <= n-1 and j >=0:
            if target == matrix[i][j]: 
                return True 
            elif target> matrix[i][j]: 
                i += 1
            else:
                j -= 1
        return False
```