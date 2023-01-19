import Foundation

class OtherAlgorithms {

    public func findLowerElements<T: Comparable>(_ array: [T], element: T) -> [T]? {
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

    public func factRecursively(_ number: Int) -> Int {
        if number <= 1 {
            return 1
        } else {
            return number * factRecursively(number-1)
        }
    }

    public func factIteratively(_ number: Int) -> Int {
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

    public func binarySearch<T: Comparable>(_ sortedArray: [T], element: T) -> Int? {
        var higherIndex = sortedArray.count - 1
        var lowerIndex = 0

        while lowerIndex <= higherIndex {
            let midIndex = (higherIndex + lowerIndex) / 2
            let guess = sortedArray[midIndex]
            if element == guess {
                return midIndex
            }

            if element > guess {
                lowerIndex = midIndex + 1
            } else if element < guess {
                higherIndex = midIndex - 1
            }
        }
        return nil
    }
}
