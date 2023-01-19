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
}
