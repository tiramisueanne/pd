fun main() {
	a = [0,0,0,0]
    a[0] = show(a[0]+3*4+5)
    a[1] = show((a[1]+a[1])*a[1]+a[1])
    a[2] = show(2+(3*4)+5)
    a[3] = show(a[0]+a[1]*(a[2]+5))
}

fun show(x) {
    print x
    return x
}
