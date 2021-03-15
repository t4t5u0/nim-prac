import strutils, sequtils, algorithm

var
    N: int
    A: seq[int]

N = stdin.readLine.parseInt
A = stdin.readLine.split.map(parseInt)

A = A.sorted(Descending)
var result = 0
for i, item in A:
    if i mod 2 == 0:
        result += item
    else:
        result -= item

echo result