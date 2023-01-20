import XCTest
@testable import AlgorithmsFiles

final class OtherAlgorithmsTests: XCTestCase {
    let spec = OtherAlgorithms()
    let unsortedArray = TestData.unsortedArray
    let sortedArray = TestData.sortedArray
    let emptyArray = TestData.emptyArray

    let unsortedArrayRandomElement = TestData.unsortedArray.randomElement()
    let sortedArrayRandomElement = TestData.sortedArray.randomElement()

    func testAllLowerElements() {
        // swiftlint:disable line_length
        XCTAssertEqual(spec.findLowerElements(sortedArray, element: sortedArrayRandomElement!), TestData.allLowerElements(sortedArray, element: sortedArrayRandomElement!), "It must return all lower elements.")
        XCTAssertEqual(spec.findLowerElements(unsortedArray, element: unsortedArrayRandomElement!), TestData.allLowerElements(unsortedArray, element: unsortedArrayRandomElement!), "It must return all lower elements.")
        XCTAssertEqual(spec.findLowerElements(emptyArray, element: emptyArray.randomElement() ?? 0), nil, "it must return nil when an array is empty")
    }

    func testFactRecursively() {
        XCTAssertEqual(spec.factRecursively(TestData.positiveInteger), TestData.positiveIntegerFact, "It must return a factorial of a positive integer")
        XCTAssertEqual(spec.factRecursively(TestData.negativeInteger), TestData.negativeIntegerFact, "It must return 1, as a factorial of a negative integer")
        XCTAssertEqual(spec.factRecursively(0), 1, "It must return 1 when passed 0")
    }

    func testFactIteratevely() {
        XCTAssertEqual(spec.factIteratively(TestData.positiveInteger), TestData.positiveIntegerFact, "It must return a factorial of a positive integer")
        XCTAssertEqual(spec.factIteratively(TestData.negativeInteger), TestData.negativeIntegerFact, "It must return 1, as a factorial of a negative integer")
        XCTAssertEqual(spec.factIteratively(0), 1, "It must return 1 when passed 0")
    }

    func testBinarySearch() {
        // this test won't work if there are 2 same searched items in the array.
        // binary search does not check if an array is sorted. The array must be sorted for the search to work.
        XCTAssertEqual(spec.binarySearch(TestData.sortedArray, element: TestData.searchedExisitingItem), TestData.indexForSearchedItemSorted, "It must return index of a searched item")
        XCTAssertEqual(spec.binarySearch(sortedArray, element: TestData.searchedUnexistingItem), nil, "it must return nil if an item is not in the array")
    }

    func testLinearSearh() {
        XCTAssertEqual(spec.linearSearch(unsortedArray, item: TestData.searchedExisitingItem), TestData.indexForSearchedItemUnsorted, "It must return the index of the first searched element")
        XCTAssertEqual(spec.linearSearch(sortedArray, item: TestData.searchedExisitingItem), TestData.indexForSearchedItemSorted, "It must return the index of the first searched element")
        XCTAssertEqual(spec.linearSearch(unsortedArray, item: TestData.searchedUnexistingItem), nil, "It must return nil when element is not in the array")
    }

    func testSumAllItems() {
        XCTAssertEqual(spec.sumAllItems(sortedArray), TestData.sumOfAllArrayNumbersSortedArray, "It must combine all numbers")
        XCTAssertEqual(spec.sumAllItems(unsortedArray), TestData.sumOfAllArrayNumbersUnsortedArray, "It must combine all numbers")
        XCTAssertEqual(spec.sumAllItems(emptyArray), 0, "It must return 0 if an array is empty")
    }

    func testSumAllItemsRecursively() {
        XCTAssertEqual(spec.sumAllElementsRecursively(sortedArray, initialValue: 0), TestData.sumOfAllArrayNumbersSortedArray, "It must combine all numbers")
        XCTAssertEqual(spec.sumAllElementsRecursively(unsortedArray, initialValue: 0), TestData.sumOfAllArrayNumbersUnsortedArray, "It must combine all numbers")
        XCTAssertEqual(spec.sumAllItems(emptyArray), 0, "It must return 0 if an array is empty")
    }
}

private extension OtherAlgorithmsTests {
    enum TestData {
        static let emptyArray: [Int] = []
        static let unsortedArray = [1, 9, 2, 4, 20, 88, 33, 22, 11, 90, 1111, 2332323, 1223145]
        static let sortedArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 15, 20, 25]
        static let sumOfAllArrayNumbersSortedArray = sortedArray.reduce(0, +)
        static let sumOfAllArrayNumbersUnsortedArray = unsortedArray.reduce(0, +)

        static let searchedUnexistingItem = 99999
        static let searchedExisitingItem = 20
        static let indexForSearchedItemSorted = sortedArray.firstIndex(of: searchedExisitingItem)
        static let indexForSearchedItemUnsorted = unsortedArray.firstIndex(of: searchedExisitingItem)

        static let positiveInteger = 4
        static let positiveIntegerFact = 4 * 3 * 2 * 1
        static let negativeInteger = -1
        static let negativeIntegerFact = 1

        static func allLowerElements<T: Comparable>(_ array: [T], element: T) -> [T] {
            return array.filter { $0 < element }
        }
    }
}
