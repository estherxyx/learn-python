[leetcode](https://leetcode-cn.com/problems/find-longest-subarray-lcci/submissions/)
```python
class Solution:
    def findLongestSubarray(self, array: List[str]) -> List[str]:
        dic = {}
        dic[0] = -1 
        sum = 0
        resL = 0
        resR = 0
        longest = 0
        for i in range(len(array)):
            if array[i].isdigit():
                sum += 1
            else:
                sum -= 1     
            target = sum - 0  
            if target not in dic:
                dic[target] = i 
            else:
                right = i
                left = dic[target]
                if right - left > longest:
                    longest = right - left
                    resL = left + 1
                    resR = right +1
        if longest:
            return array[resL : resR]
        else:
            return []

```