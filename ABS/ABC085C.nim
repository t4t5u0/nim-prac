import strutils, sequtils, strformat


var N, Y: int
(N, Y) = stdin.readLine.split.map(parseInt)
Y = Y div 1000
var x1, x2, x3: int
(x1, x2, x3) = (0, 0, Y)
var res = x3 - N
while res > 0:
    if res mod 9 == 0:
        x1 += res div 9
        x3 -= res div 9 * 10
        res -= 9
        break
    else:
        x2 += 1
        x3 -= 5
        res -= 4

if (x1 + x2 + x3) == N and allIt([x1, x2, x3], it >= 0):
    echo fmt"{x1} {x2} {x3}"
else:
    echo "-1 -1 -1"