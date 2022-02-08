(leetcode.cc)[https://leetcode-cn.com/problems/words-frequency-lcci/]
```python
class WordsFrequency:
    #solution #1 dict {key,value}
    def __init__(self, book: List[str]):
        self.words = {}
        for w in book: 
            if w not in self.words.keys(): 
                self.words[w] = 1
            else: 
                self.words[w] += 1

    def get(self, word: str) -> int:
        if word not in self.words.keys(): 
            return 0
        else: 
            return self.words[word]

    # # solution #2  timedout 
    # def __init__(self, book: List[str]):
    #     self.book = book
    # def get(self, word: str) -> int:
    #     return self.book.count(word) # 这样不行 会爆掉



# Your WordsFrequency object will be instantiated and called as such:
# obj = WordsFrequency(book)
# param_1 = obj.get(word)
```