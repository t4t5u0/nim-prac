import strutils, sequtils

var
    N: int
    D: seq[int]

N = stdin.readLine.parseInt
D = mapIt(0..<N, stdin.readLine.parseInt)

echo D.deduplicate.len