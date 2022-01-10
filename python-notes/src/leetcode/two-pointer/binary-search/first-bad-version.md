```python
# https://leetcode-cn.com/problems/first-bad-version/

# The isBadVersion API is already defined for you.
# @param version, an integer
# @return an integer
# def isBadVersion(version):

class Solution:
    def firstBadVersion(self, n):
        """
        :type n: int
        :rtype: int
        """
        i = 1
        j = n
        while j - i > 1:
            pivot = (j - i) // 2 + i
            if isBadVersion(pivot):
                j = pivot
            else:
                i = pivot + 1

        if isBadVersion(i):
            return i
        else:
            return j
```