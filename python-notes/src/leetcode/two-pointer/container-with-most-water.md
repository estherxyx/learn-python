https://leetcode-cn.com/problems/container-with-most-water/submissions/
```python
class Solution:
    def maxArea(self, height: List[int]) -> int:
        i = 0
        j = len(height)-1 
        area = []

        while j>i:
            area.append(min(height[i],height[j])*(j-i))
            if height[i] <= height[j]:
                i += 1
            else: 
                j -= 1

        return max(area)
            
# Sol 1: timed out 
        # for i, n in enumerate(height):
        #     for j,m in enumerate(height):
        #         if n<=m:
        #             area.append(n * (j-i))
        #         else: 
        #             area.append(m * (j-i))
        #         j += 1
        #     i += 1
        # return max(area)
        
```