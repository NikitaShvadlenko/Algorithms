import Foundation

class OtherAlgorithms {

    func findLowerElements<T: Comparable>(_ array: [T], element: T) -> [T]? {
        if array.isEmpty {
            return nil
        }
        var newArray: [T] = []
        for index in 0..<array.count {
            if array[index] < element {
                newArray.append(array[index])
            }
        }
        return newArray
    }

    func factRecursively(_ number: Int) -> Int {
        if number <= 1 {
            return 1
        } else {
            return number * factRecursively(number-1)
        }
    }

    func factIteratively(_ number: Int) -> Int {
        var result = 1
        if number <= 1 {
            return 1
        } else {
            for integer in 1...number {
                result *= integer
            }
        }
        return result
    }
}
