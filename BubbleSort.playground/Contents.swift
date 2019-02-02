// Bubble Sort

func bubbleSort<T: Comparable>(_ elements: [T]) -> [T] {
    
    var array = elements
    for i in 0..<array.count {
        for j in 1..<array.count - i {
            if array[j] < array[j-1] {
                let tmp = array[j-1]
                array[j-1] = array[j]
                array[j] = tmp
            }
        }
    }
    return array
}

var array = [3, 5, 7, 8, 10, 1, 0, 15, 156, 14, 23]
var newArray = bubbleSort(array)
