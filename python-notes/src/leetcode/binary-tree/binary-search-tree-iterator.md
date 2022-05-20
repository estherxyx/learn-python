[leetcode](# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class BSTIterator:

    def __init__(self, root: TreeNode):
        self.Q = collections.deque()
        self.inOrderTraverse(root)

    def inOrderTraverse(self,root:TreeNode):
        if not root: return
        self.inOrderTraverse(root.left)
        self.Q.append(root.val)
        self.inOrderTraverse(root.right)

    def next(self) -> int:
        return self.Q.popleft()


    def hasNext(self) -> bool:
        return len(self.Q)>0


# Your BSTIterator object will be instantiated and called as such:
# obj = BSTIterator(root)
# param_1 = obj.next()
# param_2 = obj.hasNext())