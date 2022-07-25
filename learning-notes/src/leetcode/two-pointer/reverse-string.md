https://leetcode-cn.com/problems/reverse-string/submissions/
https://leetcode-cn.com/problems/reverse-words-in-a-string-iii/submissions/
## reverse string as in list 
```python
class Solution:
    def reverseString(self, s: List[str]) -> None:
        """
        Do not return anything, modify s in-place instead.
        """
        i = 0 
        j = len(s)-1

        while j>i: 
            s[j], s[i] = s[i] + s[j]
            j -= 1
            i += 1
```
## reverse string as string ""
- split("") to split " I love pizza" as per word list: ["I","love","pizza"]
- split("")[::-1] to reverse each word in list ["I","evol","azzip"]
- .join(split("")[::-1]) to make it as string 
- and .join(split("")[::-1])[::-1] to reverse the whole thing 
```python
class Solution:
    def reverseWords(self, s: str) -> str:
        return " ".join(s.split(" ")[::-1])[::-1]     
```