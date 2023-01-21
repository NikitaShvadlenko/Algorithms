import XCTest
@testable import AlgorithmsFiles

final class SortingAlgorithmsTests: XCTestCase {

    let spec = SortingAlgorithms<Int>()

    let emptyArray = TestData.emptyArray
    let sortedArray = TestData.sortedArray
    let unsortedArray = TestData.unsortedArray

    func testBubbleSort() {
        // swiftlint:disable line_length
        XCTAssertEqual(spec.bubbleSort(emptyArray), TestData.expectedResultFor(emptyArray), "it must return an empty array")
        XCTAssertEqual(spec.bubbleSort(unsortedArray), TestData.expectedResultFor(unsortedArray), "it must sort an array <")
        XCTAssertEqual(spec.bubbleSort(sortedArray), TestData.expectedResultFor(sortedArray), "the array must remain sorted")
    }

    func testGnomeSort() {
        XCTAssertEqual(spec.gnomeSort(emptyArray), TestData.expectedResultFor(emptyArray), "it must return an empty array")
        XCTAssertEqual(spec.gnomeSort(unsortedArray), TestData.expectedResultFor(unsortedArray), "it must sort an array <")
        XCTAssertEqual(spec.gnomeSort(sortedArray), TestData.expectedResultFor(sortedArray), "the array must remain sorted")
    }

    func testSelectionSort() {
        XCTAssertEqual(spec.selectionSort(emptyArray), TestData.expectedResultFor(emptyArray), "it must return an empty array")
        XCTAssertEqual(spec.selectionSort(unsortedArray), TestData.expectedResultFor(unsortedArray), "it must sort an array <")
        XCTAssertEqual(spec.selectionSort(sortedArray), TestData.expectedResultFor(sortedArray), "the array must remain sorted")
    }

    func testQuickSort() {
        XCTAssertEqual(spec.quickSort(emptyArray), TestData.expectedResultFor(emptyArray), "it must return an empty array")
        XCTAssertEqual(spec.quickSort(unsortedArray), TestData.expectedResultFor(unsortedArray), "it must sort an array <")
        XCTAssertEqual(spec.quickSort(sortedArray), TestData.expectedResultFor(sortedArray), "the array must remain sorted")
    }

    func testMergeSort() {
        XCTAssertEqual(spec.mergeSort(emptyArray), TestData.expectedResultFor(emptyArray), "it must return an empty array")
        XCTAssertEqual(spec.mergeSort(unsortedArray), TestData.expectedResultFor(unsortedArray), "it must sort an array <")
        XCTAssertEqual(spec.mergeSort(sortedArray), TestData.expectedResultFor(sortedArray), "the array must remain sorted")
    }

    func testInsertionSort() {
        XCTAssertEqual(spec.insertionSort(emptyArray), TestData.expectedResultFor(emptyArray), "it must return an empty array")
        XCTAssertEqual(spec.insertionSort(unsortedArray), TestData.expectedResultFor(unsortedArray), "it must sort an array <")
        XCTAssertEqual(spec.insertionSort(sortedArray), TestData.expectedResultFor(sortedArray), "the array must remain sorted")
    }
}

private extension SortingAlgorithmsTests {
    enum TestData {
        static let emptyArray: [Int] = []
        static let unsortedArray = [1, 9, 2, 4, 88, 33, 22, 11, 90, 1111, 2332323, 1223145]
        static let sortedArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 15, 20, 25]

        static func expectedResultFor(_ array: [Int]) -> [Int] {
            return array.sorted(by: <)
        }
    }
}
