import strutils, sequtils

var
    a, b, c: int
(a, b, c) = stdin.readLine.split.map(parseInt)
echo a, b, c

for (ix, i) in [1, 2, 3].pairs:
  echo (ix, i)
