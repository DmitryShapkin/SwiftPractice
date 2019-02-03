// Recursive sum of array

func findSum(_ a: [Int], n: Int, sum: Int) -> Int {
    
    if n < 0 {
        return sum
    }
    let innerSum = sum + a[n]
    return findSum(a, n: n - 1, sum: innerSum)
}

let array = [1, 2, 3, 4, 5]
findSum(array, n: array.count - 1, sum: 0)
