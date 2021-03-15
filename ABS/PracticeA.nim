import strutils, sequtils

var
    a, b, c: int
    s: string

a = stdin.readLine.parseInt
(b, c) = stdin.readLine.split.map(parseInt)
s = stdin.readLine

echo a + b + c
echo s