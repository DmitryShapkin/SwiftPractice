// BinarySearch

func binarySearch<T: Comparable>(_ a: [T], key: T, range: Range<Int>) -> Int? {
    
    if range.lowerBound >= range.upperBound {
        // If we get here, then the search key is not present in the array.
        return nil
    } else {
        // Calculate where to split the array.
        let midIndex = range.lowerBound + (range.upperBound - range.lowerBound) / 2
        
        // Is the searh key in the left half?
        if a[midIndex] > key {
            return binarySearch(a, key: key, range: range.lowerBound ..< midIndex)
            
        // Is the search key in the right half?
        } else if a[midIndex] < key {
            return binarySearch(a, key: key, range: midIndex ..< range.upperBound)
            
        // If we get here, then we've found the search key!
        } else {
            return midIndex
        }
    }
}

let numbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67]
binarySearch(numbers, key: 4, range: 0 ..< numbers.count)
