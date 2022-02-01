(leetcode.cc)[https://leetcode-cn.com/problems/implement-queue-using-stacks-lcci/submissions/]
```python
class MyQueue: # FIFO

    def __init__(self):
        self.stack_in = []
        self.stack_out = []


    def push(self, x: int) -> None:
        self.stack_in.append(x)


    def pop(self) -> int:

        if len(self.stack_out)==0:
            for i in range(len(self.stack_in)):
                self.stack_out.append(self.stack_in.pop())
        return self.stack_out.pop()


    def peek(self) -> int:
        
        if len(self.stack_out)==0:
            for i in range(len(self.stack_in)):
                self.stack_out.append(self.stack_in.pop())
        temp = self.stack_out.pop()
        self.stack_out.append(temp)
        return temp
        

    def empty(self) -> bool:
        return len(self.stack_in)==0 and len(self.stack_out)==0



# Your MyQueue object will be instantiated and called as such:
# obj = MyQueue()
# obj.push(x)
# param_2 = obj.pop()
# param_3 = obj.peek()
# param_4 = obj.empty()
```