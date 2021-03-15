import strutils

var S = stdin.readLine

const T = ["dream", "dreamer", "erase", "eraser"]

var flag = true
while flag:
    flag = false
    for item in T:
        if S.endsWith(item):
            S.removeSuffix(item)
            flag = true

echo if S == "": "YES" else: "NO"