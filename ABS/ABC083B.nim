import strutils, sequtils

proc digit_sum(n: int): int = 
    (@ $n).mapIt(parseInt($it)).foldl(a + b)

    

var N, A, B: int
(N, A, B) = stdin.readLine.split.map(parseInt)

var sum = 0
for i in 1..N:
    let s = digit_sum(i)
    if A <= s and s <= B:
        sum += i

echo sum