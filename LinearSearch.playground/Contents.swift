func linearSearch<T: Equatable>(_ array: [T], _ object: T) -> Int? {
    for (index, obj) in array.enumerated() where obj == object {
        return index
    }
    return nil
}

let array = [1, 7, 6, 3, 9, 345, 244]
linearSearch(array, 9)
