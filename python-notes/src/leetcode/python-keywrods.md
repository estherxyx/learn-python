```python
# enumerate
for i, n in enumerate([10,20,30]): 
    print(i, n)

# >>> 0, 10
# >>> 1, 20
# >>> 2, 30
```

```python
# slice
[1,2,3][1:] # [2,3]
```

```python
# map
m = {}
m1 = { 1 : 'Yi'}
m[1] = 'one'

if lang == 'english':
    print(m[1])
else:
    print(m1[1])
```

```python
# List Comprehension
fruits = ["apple", "banana", "cherry", "kiwi", "mango"]
newlist = [x for x in fruits if "a" in x]
# >>> ['apple', 'banana', 'mango']
```
