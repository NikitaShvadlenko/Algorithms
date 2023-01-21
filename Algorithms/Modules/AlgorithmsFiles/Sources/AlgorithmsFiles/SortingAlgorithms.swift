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

    public func mergeSort(_ array: [T]) -> [T] {
        guard array.count > 1 else {
            return array
        }

        let middleIndex = array.count/2
        let leftArray = mergeSort(Array(array[0..<middleIndex]))
        let rightArray = mergeSort(Array(array[middleIndex..<array.count]))

        return merge(leftArray: leftArray, rightArray: rightArray)

    }

    func merge(leftArray: [T], rightArray: [T]) -> [T] {
        var leftIndex = 0
        var rightIndex = 0
        var result: [T] = []

        while leftIndex<leftArray.count && rightIndex<rightArray.count {
            if leftArray[leftIndex] < rightArray[rightIndex] {
                result.append(leftArray[leftIndex])
                leftIndex += 1
            } else if rightArray[rightIndex] < leftArray[leftIndex] {
                result.append(rightArray[rightIndex])
                rightIndex += 1
            } else {
                result.append(leftArray[leftIndex])
                result.append(rightArray[rightIndex])
                leftIndex += 1
                rightIndex += 1
            }
        }

        while leftIndex < leftArray.count {
            result.append(leftArray[leftIndex])
            leftIndex += 1
        }

        while rightIndex < rightArray.count {
            result.append(rightArray[rightIndex])
            rightIndex += 1
        }
        return result
    }

    public func insertionSort(_ array: [T]) -> [T] {
        var array = array
        guard array.count > 0 else {
            return array
        }

        for currentSpace in 1..<array.count {
            var currentElementIndex = currentSpace
            while currentElementIndex < array.count {
                if array[currentElementIndex] < array[currentElementIndex-1] {
                    array.swapAt(currentElementIndex, currentElementIndex-1)
                    currentElementIndex -= 1
                } else {
                    break
                }
            }
        }
        return array
    }
}
