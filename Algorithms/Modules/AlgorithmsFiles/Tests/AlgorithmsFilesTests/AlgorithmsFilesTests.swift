import XCTest
@testable import AlgorithmsFiles

final class AlgorithmsFilesTests: XCTestCase {

    func testBubbleSort() {
        
    }
}

private extension AlgorithmsFilesTests {
    enum TestData {
        static let emptyArray: [Int] = []
        static let unsortedArray = [1, 9, 2, 4, 88, 33, 22, 11, 90, 1111, 2332323, 1223145]
        static let sortedArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 15, 20, 25]

        static func expectedResultFor(_ array: [Int]) -> [Int] {
            return array.sorted(by: >)
        }
    }
}
