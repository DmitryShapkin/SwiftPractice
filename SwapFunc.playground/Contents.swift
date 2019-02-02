var a = "Dmitry"
var b = "Shapkin"

print(a + " " + b)

func swap<T>(_ a: inout T, _ b: inout T) {
    let temp = a
    a = b
    b = temp
}

swap(&a, &b)
print(a + " " + b)
