## Bitwise Operators in python
### ~ operator 
```python
~12 
# >>> -13 
# bit complement of 12 
# bin(12): 00001100
# ~bin(12):11110011 
# 2's complement of -13 is 11110011
```
### & operator (bitwise 'and')
```python
12&13 
# >>> 12 
#   00001100
# & 00001101
# = 00001100
# therefor 12
```
### | operator (bitwise 'or')
```python
12|13 
# >>> 13 
#   00001100
# | 00001101
# = 00001101
# therefor 13
```
### ^ operator (bitwise 'xor')
```python
12^13 
# >>> 1
#   00001100
# ^ 00001101
# = 00000001
# therefor 1
```
### << operator (leftshift for how many bits)
```python
10<<2 
# >>> 40 
# bin(10) :  00001010
# <<2 :    0000101000 (two more zeros on the right side)
# therefore 40 in decimal 
```
### >> operator (rightshift for how many bits)
```python
10>>2 
# >>> 2
# bin(10) :  00001010
# <<2 :        000010
# therefore 2 in decimal 
```
### if break and if continue 
```python
for i in range(10):
    if i ==2: 
        break
# >>> 1 (escape 2 and followings)

for i in range(10):
    if i ==2:
        continue
>>>> 1 3 4 5 ...(only escape 2 )
```