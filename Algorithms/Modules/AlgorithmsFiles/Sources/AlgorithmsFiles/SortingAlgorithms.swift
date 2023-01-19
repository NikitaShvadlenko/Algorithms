import Foundation

public class SortingAlgorithms<T: Comparable> {

    public func bubbleSort(_ array: [T]) -> [T] {
        guard !array.isEmpty else {
            return array
        }

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

    public func selectionSort(_ array: [T]) -> [T] {
        var array = array
        for index in 0..<array.count {
            let lowestIndex = index
            for element in lowestIndex..<array.count {
                if array[element] < array[lowestIndex] {
                    array.swapAt(element, lowestIndex)
                }
            }
        }
        return array
    }

    public func quickSort(_ array: [T]) -> [T] {
        guard array.count > 1 else {
            return array
        }
            let pivotElement = array[0]
            let smallerElements = array.filter { $0 < pivotElement }
            let largerElements = array.filter { $0 > pivotElement }
            return quickSort(smallerElements) + [pivotElement] + quickSort(largerElements)
    }
}
