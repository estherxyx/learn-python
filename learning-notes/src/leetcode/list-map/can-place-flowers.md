[leetcode.cc](https://leetcode-cn.com/problems/can-place-flowers/submissions/)
```python
class Solution:
    def canPlaceFlowers(self, flowerbed: List[int], n: int) -> bool:
        count = 0
        flower = [0] + flowerbed+ [0]
        for i in range(1,len(flower)-1): 
            if flower[i-1]==0 and flower[i]==0 and flower[i+1]==0 : 
                count += 1 
                flower[i] =1 
        return count>=n

```