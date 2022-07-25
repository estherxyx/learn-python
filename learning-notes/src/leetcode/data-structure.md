## WIP
- [leetcode::study-plan::algorithms](https://leetcode-cn.com/study-plan/algorithms/?progress=2t9i8es)

## OOD - object-oriented-design
```python
# Instance -> Class
# Instance -> method/function, attribute/property
# Object -> JSON -> {"name": "Andy"}
class Car:
    def __init__(self, brand):
        self.speed = 0
        self.val = 2
        self.brand = brand
        
    def run(self, speed):
        self.speed = speed

class Truck(Car):
    def __init__(self, brand):
        super(brand)
        self.load = 200
        
car1 = Car("brand1") # {"speed": 0, "brand": "brand1"}
car2 = Car("brand2") # {"speed": 0, "brand": "brand2"}
print(car1.speed) # 0
car1.run(10)
print(car1.speed) # 10
car1 = Truck("brand1")

class Person:
    def __init__(self, dna="", child=None):
        self.dna = dna
        self.child = child
        
p1 = Person("aaaa")
p2 = Person("bbbb")
p3 = Person("cccc")
p1.child = p2
p2.child = p3

def reverseList(self, person: Person) -> Person:
    people = [] # ["aaaa",]
    
    god = Person()
    god.child = person
    
    while person: #p3
        people.append(person.dna)
        person = person.child
        
    p1 = god.child
        
reverseList(p1)
            

```

## Big-O
- `O(1)`
- `O(n)`: number of elements -> n
- `O(n^2)`

![](https://cdn-media-1.freecodecamp.org/images/1*KfZYFUT2OKfjekJlCeYvuQ.jpeg)

## Python Keywords
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
```python
# setting up new array with length n ouside of loops 
nums = [0]*length
# inside the loop no "append" or self needed
# see eg in squares-of-a-sorted-array
```

```python
# sort()
# returns the ordered array from min to max
prime_numbers = [11, 3, 7, 5, 2]

# sort the list
prime_numbers.sort()
print(prime_numbers)

# >>> [2, 3, 5, 7, 11]
```