// Fibonacci

func fibForNumSteps(_ numSteps: Int) -> [Int] {
    
    var sequence = [0, 1]
    
    for _ in 0...numSteps - 2 {
        let first = sequence[sequence.count - 2]
        let second = sequence.last!
        sequence.append(first + second)
    }
    return sequence
}

fibForNumSteps(7)
