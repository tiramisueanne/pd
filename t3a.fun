
fun factorial(n) {
    print n
    i = [0]
    v = 1
    while (i[0] < n) {
        i[0] = i[0] + 1
        v = v * i[0]
    }

    return v
}

fun main() {
    print factorial(0)
    print factorial(1)
    print factorial(2)
    print factorial(3)
    print factorial(4)
    print factorial(5)
    print factorial(6)
    print factorial(10)
}
