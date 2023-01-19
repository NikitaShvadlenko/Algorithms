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
}

private extension OtherAlgorithmsTests {
    enum TestData {
        static let emptyArray: [Int] = []
        static let unsortedArray = [1, 9, 2, 4, 88, 33, 22, 11, 90, 1111, 2332323, 1223145]
        static let sortedArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 15, 20, 25]

        static let positiveInteger = 4
        static let positiveIntegerFact = 4 * 3 * 2 * 1
        static let negativeInteger = -1
        static let negativeIntegerFact = 1

        static func allLowerElements<T: Comparable>(_ array: [T], element: T) -> [T] {
            return array.filter { $0 < element }
        }
    }
}
