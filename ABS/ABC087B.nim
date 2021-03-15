import strutils, sequtils

proc coin_sum(ls: seq[int]): int =
    ls[0] * 500 + ls[1] * 100 + ls[2] * 50

var A, B, C, X: int
(A, B, C, X) = mapIt(0..<4, stdin.readLine.parseInt)

var cnt: int
for i in 0..A:
    for j in 0..B:
        for k in 0..C:
            var ls: seq[int] = @[i, j, k]
            if ls.coin_sum == X:
                cnt += 1
            
echo cnt