[leetcode](https://leetcode-cn.com/problems/pascals-triangle/submissions/)
```python
class Solution:
    def generate(self, numRows: int) -> List[List[int]]:
        ret = []
        for i in range(numRows):
            row = []
            for j in range(0,i+1):
                if j ==0 or j == i: 
                    row.append(1)
                else: 
                    row.append(ret[i-1][j-1]+ret[i-1][j])
            ret.append(row)
        return ret 
```