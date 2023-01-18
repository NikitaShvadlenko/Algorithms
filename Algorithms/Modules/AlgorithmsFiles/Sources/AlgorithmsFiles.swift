import Foundation

public class SortingAlgorithms<T: Comparable> {

    public func bubbleSort(_ array: [T]) -> [T] {
        var swapped = true
        var array = array

        while swapped {
            swapped = false

            for index in 0..<array.count - 1 {
                if array[index] > array[index+1] {
                    array.swapAt(index, index+1)
                    swapped = true
                }
            }
        }
        return array
    }

    public func gnomeSort(_ array: [T]) -> [T] {
        var index = 0
        var array = array

        while index < array.count {
            if index == 0 {
                index += 1
            }

            if array[index] < array[index - 1] {
                array.swapAt(index, index - 1)
                index -= 1
            } else {
                index += 1
            }
        }
        return array
    }
}
