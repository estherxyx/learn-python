(leetcode.cc)[https://leetcode-cn.com/problems/stack-of-plates-lcci/submissions/]
```python
class StackOfPlates:

    def __init__(self, cap: int):
        self.cap = cap 
        self.arr = []

    def push(self, val: int) -> None:
        if self.cap <= 0: return 
        elif not self.arr or len(self.arr[-1]) == self.cap:
            self.arr.append([])
            self.arr[-1].append(val)
        else: self.arr[-1].append(val)

    def pop(self) -> int:
        if not self.arr: return -1
        p = self.arr[-1].pop()
        if not self.arr[-1]:  
            del self.arr[-1]
        return p

    def popAt(self, index: int) -> int:
        if len(self.arr) < index + 1 : return -1 
        q = self.arr[index].pop()
        if not self.arr[index]: 
            del self.arr[index]
        return q

# Your StackOfPlates object will be instantiated and called as such:
# obj = StackOfPlates(cap)
# obj.push(val)
# param_2 = obj.pop()
# param_3 = obj.popAt(index)
```