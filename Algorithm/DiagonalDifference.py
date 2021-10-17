n = int(input())

a = []
dd = 0
# diagonal both index same number or sum of index equal to n-1
for i in range(n):
    a.append([int(j) for j in input().split()])
    dd += a[i][i] - a[i][n-i-1]

print(abs(dd))

