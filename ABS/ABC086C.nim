import strutils, sequtils

proc solve(txy: seq[seq[int]]): string =
    for i in 0..txy.len-2:
        var d0 = txy[i]
        var d1 = txy[i+1]
        var dt = d1[0] - d0[0]
        var diss = abs(d0[1] - d1[1]) + abs(d0[2] - d1[2])
        if diss > dt: return "No"
        if diss mod 2 != dt mod 2: return "No"
    return "Yes"

var n = stdin.readLine.parseInt
var txy = (0..<n).mapIt(stdin.readLine.split.map(parseInt))
txy = @[@[0, 0, 0]] & txy
echo solve(txy)

# var (t, xy) = unzip(txy) 
# xy.insert(@[(0, 0)], 0)


# var t_tmp = 0
# var diff_t : seq[int]
# for item in t:
#     diff_t.add(item - t_tmp)
#     t_tmp = item

# var tmp_xy = (0, 0)
# var diff_xy  : seq[int]
# for item in xy:
#     diff_xy.add(abs(tmp_xy[0] - item[0]) + abs(tmp_xy[1] - item[1]))
#     tmp_xy = item 
# diff_xy.delete(0)

# echo if zip(diff_t, diff_xy).all(proc(x: (int, int)): auto = x[0] mod 2 == x[1] mod 2 and x[0] >= x[1]):
#         "Yes"
#     else:
#         "No"
