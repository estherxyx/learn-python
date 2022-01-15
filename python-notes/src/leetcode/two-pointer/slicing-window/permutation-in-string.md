[leetcode.cn](https://leetcode-cn.com/problems/permutation-in-string/)
```python
class Solution:
    def checkInclusion(self, s1: str, s2: str) -> bool:
        # # s1 = "ab"
        # # s2 = "eidbaooo"
        # n = len(s1)
        # m = len(s2)
        # dic1 = []
        # dic2 = []
        # if n>m: return False

        # for i in range(n): 
        #     dic1[i] = s1[i]

        # for j in range(m):
        #     for j<j+n:
        #         if s2[j] in dic1:
        #             dic2.append(s2[j])
        #     j += 1
                
        #     if len(dic1) == len(dic2):
        #         return True 
        # return False
        
        if len(s1) > len(s2): return False
        m, n = len(s1), len(s2)
        dic1 = [0]*26
        dic2 = [0]*26
        # PartI: 初始化统计窗口字母表
        for i in range(m):
            dic1[ord(s1[i])-ord("a")] += 1 # s1
            dic2[ord(s2[i])-ord("a")] += 1 # s2
        if dic1 == dic2:
                return True
        # PartII: 滑动窗口字母表更新
        for i in range(m,n):
            dic2[ord(s2[i])-ord("a")] += 1 # 进
            dic2[ord(s2[i-m])-ord("a")] -= 1 # 出
            if dic1 == dic2:
                return True
        return False
```