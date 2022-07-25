(leetcode.cc)[https://leetcode-cn.com/problems/three-in-one-lcci/submissions/]
```python

```class TripleInOne:

    def __init__(self, stackSize: int):
        self.tripleStack = [[]for i in range(3)]
        self.stackSize = stackSize

    def push(self, stackNum: int, value: int) -> None:
        if len(self.tripleStack[stackNum]) < self.stackSize:
            self.tripleStack[stackNum].append(value)

    def pop(self, stackNum: int) -> int:
        if self.tripleStack[stackNum] != []:
            popedValue = self.tripleStack[stackNum][-1]
            self.tripleStack[stackNum] = self.tripleStack[stackNum][:-1]
            return popedValue
        else: 
            return -1

    def peek(self, stackNum: int) -> int:
        if self.tripleStack[stackNum] != []:
            popedValue = self.tripleStack[stackNum][-1]
            return popedValue
        else: 
            return -1

    def isEmpty(self, stackNum: int) -> bool:
        return self.tripleStack[stackNum] == []



# Your TripleInOne object will be instantiated and called as such:
# obj = TripleInOne(stackSize)
# obj.push(stackNum,value)
# param_2 = obj.pop(stackNum)
# param_3 = obj.peek(stackNum)
# param_4 = obj.isEmpty(stackNum)