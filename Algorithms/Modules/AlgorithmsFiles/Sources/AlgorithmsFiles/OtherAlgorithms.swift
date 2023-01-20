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

    public func linearSearch<T: Equatable>(_ array: [T], item: T) -> Int? {
        for index in 0..<array.count {
            if array[index] == item {
                return index
            }
        }
        return nil
    }

    public func sumAllItems<T: Numeric>(_ array: [T]) -> T {
        var result: T = 0
        for index in 0..<array.count {
            result += array[index]
        }
        return result
    }

    public func sumAllElementsRecursively<T: Numeric>(_ array: [T], initialValue: T) -> T {
        guard !array.isEmpty else {
            return initialValue
        }
        if array.count == 1 {
            return array[0] + initialValue
        }
        let newArray = Array(array.dropFirst())
        return sumAllElementsRecursively(newArray, initialValue: initialValue + array[0])
    }
}
