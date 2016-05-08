fun f(a,i,n) {
    print a[0]
    print a[1]
    print a[2]
    print i
    print n
    if (i == n) return a
    return f(a, i+1, n)
}

fun factorial(n) 
a = [n, n+1, n+2]
return f(a,1,n)

fun main() {
    z = factorial(5)
    print z[2]
}
