import XCTest
@testable import math_to_generics

final class math_to_genericsTests: XCTestCase {

  let evenN = 4
  let oddN = 7
  let a = 8

  var evenNTimesA: Int!
  var oddNTimesA: Int!

  override func setUp() {
    evenNTimesA = evenN * a
    oddNTimesA = oddN * a
  }

  override func tearDown() {
    evenNTimesA = 0
    oddNTimesA = 0
  }

  func testHalfWhenEven() {
    // evenN = 0000 0100 = 4
    // >> 1  = 0000 0010 = 2
    XCTAssertEqual(2, half(4))
  }

  func testHalfWhenOdd() {
    // oddN = 0000 0111 = 7
    // >> 1 = 0000 0011 = 3
    XCTAssertEqual(3, half(7))
  }

  func testIsOddReturnsTrue() {
    //  99 = 0110 0011
    //   &   0000 0001
    //       =========
    //       0000 0001 = TRUE
    XCTAssertTrue(isOdd(99))
  }

  func testIsOddReturnsFalse() {
    // 100 = 0110 0100
    //   &   0000 0001
    //       =========
    //       0000 0000 = FALSE
    XCTAssertFalse(isOdd(100))
  }

  func testMultiply0() {
    XCTAssertEqual(evenNTimesA, multiply0(evenN, a: a))
  }

  func testMultiply0ByOne() {
    XCTAssertEqual(a, multiply0(1, a: a))
  }

  func testMultiply1ByOne() {
    XCTAssertEqual(a, multiply1(1, a: a))
  }

  func testMultiply1WhenEven() {
    XCTAssertEqual(evenNTimesA, multiply1(evenN, a: a))
  }

  func testMultiply1WhenOdd() {
    XCTAssertEqual(oddNTimesA, multiply1(oddN, a: a))
  }

  func testMultiplyBy15() {
    XCTAssertEqual(a * 15, multiplyBy15(a))
  }

  static var allTests = [
    ("testHalfWhenEven", testHalfWhenEven),
    ("testHalfWhenOdd", testHalfWhenOdd),
    ("testIsOddReturnsTrue", testIsOddReturnsTrue),
    ("testIsOddReturnsFalse", testIsOddReturnsFalse),
    ("testMultiplyV0", testMultiply0),
    ("testMultiplyV0ByOne", testMultiply0ByOne),
    ("testMultiply1ByOne", testMultiply1ByOne),
    ("testMultiply1WhenEven", testMultiply1WhenEven),
    ("testMultiply1WhenOdd", testMultiply1WhenOdd),
    ("testMultiplyBy15", testMultiplyBy15),
  ]
}
