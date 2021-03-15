import strutils, sequtils

let n = stdin.readLine.parseInt
var a = stdin.readLine.split.map(parseInt)

var cnt = 0

while true:
    if allIt(a, it mod 2 == 0):
        cnt += 1
        a = a.mapIt(it div 2)
    else: 
        break

echo cnt