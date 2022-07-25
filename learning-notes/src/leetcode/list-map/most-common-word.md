[leetcode](https://leetcode-cn.com/problems/most-common-word/submissions/)
```python
class Solution:
    def mostCommonWord(self, paragraph: str, banned: List[str]) -> str:
        n = len(paragraph)
        word = ""
        dic = collections.defaultdict(int)
        for i in range(n+1):
            if i<n and paragraph[i].isalpha():
                word += paragraph[i].lower()
            elif word: 
                if word not in banned:
                    dic[word] += 1
                word = ""
        _max = max(dic.values())
        for word,f in dic.items():
            if f == _max: 
                return word

```