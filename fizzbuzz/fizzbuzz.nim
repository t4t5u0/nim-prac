proc fizzbuzz(n: int) : string =
    result = ""
    if n mod 3 == 0:
        result &= "Fizz"
    if n mod 5 == 0:
        result &= "Buzz"
    if result == "":
        result = $n

proc main() = 
    for i in 1..30:
        echo fizzbuzz(i)

if isMainModule:
    main()