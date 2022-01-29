(leetcode.top-interview-questions-easy)[https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xne8id/]
```python
class Solution:
    def isPalindrome(self, s: str) -> bool:
        s_list = s.lower()
        valid_list = []

        for c in s_list:
            if "a"<= c <="z":
                valid_list.append(c)

        i = 0
        j = len(valid_list) -1 
        while i <j: 
            if valid_list[i] == valid_list[j]:
                i += 1 
                j -=1 
            else: 
                return False
        return True 

```