(leetcode.cc)[https://leetcode-cn.com/problems/palindrome-permutation-lcci/]
```python
class Solution:
    def canPermutePalindrome(self, s: str) -> bool:

        count = [i for i in Counter(s).values() if i%2 == 1]
        return len(count) < 2

```