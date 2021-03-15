import strutils, sequtils

var a, b: int
(a, b) = stdin.readLine.split.map(parseInt)

if a mod 2 == 1 and b mod 2 == 1: 
    echo "Odd"
else: 
    echo "Even"