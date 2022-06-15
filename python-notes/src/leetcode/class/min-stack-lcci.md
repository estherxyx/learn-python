(leetcode.cc)[https://leetcode-cn.com/problems/min-stack-lcci/]
```python
class MinStack:
    def __init__(self):
        self.stack = []
        self.MinStack = [math.inf]
    def push(self, x: int) -> None:
        self.stack.append(x)
        self.MinStack.append(min(x,self.MinStack[-1]))
    def pop(self) -> None:
        self.stack.pop()
        self.MinStack.pop()
    def top(self) -> int:
        return self.stack[-1]
    def getMin(self) -> int:
        return self.MinStack[-1]

# Your MinStack object will be instantiated and called as such:
# obj = MinStack()
# obj.push(x)
# obj.pop()
# param_3 = obj.top()
# param_4 = obj.getMin()
```