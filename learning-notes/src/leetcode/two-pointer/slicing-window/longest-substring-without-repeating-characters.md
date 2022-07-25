
[link](https://leetcode-cn.com/problems/longest-substring-without-repeating-characters)

```python
class Solution:
    def lengthOfLongestSubstring(self, s: str) -> int:
        ## sol 1:
        # ret = 0
        # n = len(s)
        # def isUnique(word):
        #     return len(word) == len(set(list(word)))

        # for i in range(n):
        #     for j in range(i, n):
        #         guess = s[i:j+1]
        #         if isUnique(guess):
        #             ret = max(ret, len(guess))
        # return ret

        ## sol 2:
        # acbc
        # [a]cbc,  {a: 0}, i=0,j=0
        # [ac]bc, {a:0, c:1}, i=0,j=1
        # [acb]c, {a:0, c:1, b:2}, i=0,j=2
        # ac[bc], {a:0, c:1, b:2}, c:3, i=1+1=2, j=3

        ret = 0
        j = 0
        i = 0
        dic = {} # {char: index} 
        while j < len(s):   
            char = s[j] 
            if char in dic:
                new_i = dic[char] + 1
                if new_i > i:
                    i = new_i
            dic[char] = j
            # print(s[i:j+1])
            ret = max(ret, j-i+1)
            j += 1
        return ret


```