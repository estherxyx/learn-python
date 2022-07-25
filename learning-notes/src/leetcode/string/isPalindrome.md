(leetcode.top-interview-questions-easy)[https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xne8id/]
```python
class Solution:
    def isPalindrome(self, s: str) -> bool:
        s_lower = ""
        for c in s:
            if "a"<=c<="z" or "A"<=c<= "Z" or "0" <= c <="9":
                s_lower += c.lower()

        i = 0
        j = len(s_lower) -1 
        while i <j: 
            if s_lower[i] == s_lower[j]:
                i += 1 
                j -=1 
            else: 
                return False
        return True

```

```python
# solution #2 from EPI book solution
def tolower(s):
            s_lower = ""
            for c in s:
                if "a"<=c<="z" or "A"<=c<="Z" or "0"<=c<="9":
                    s_lower += c.lower()
            return s_lower
        c = tolower(s)
        print(c)
        return all(c[i]==c[~i] for i in range(len(c)//2))
```