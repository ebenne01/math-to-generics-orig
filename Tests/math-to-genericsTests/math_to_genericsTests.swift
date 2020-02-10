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
  
  func testMultiply1() {
    XCTAssertEqual(36 * 99, multiply1(36, a: 99))
  }

  func testMultiply1WhenOdd() {
    XCTAssertEqual(oddNTimesA, multiply1(oddN, a: a))
  }

  func testMultiplyBy15() {
    XCTAssertEqual(a * 15, multiplyBy15(a))
  }
  
  func testMultiplyAccumulate0() {
    XCTAssertEqual(evenNTimesA, multiplyAccumulate0(0, n: evenN, a: a))
  }
  
  func testMultiplyAccumulate0ByOne() {
    XCTAssertEqual(a, multiplyAccumulate0(0, n: 1, a: a))
  }
  
  func testMultiplyAccumulate1() {
    XCTAssertEqual(evenNTimesA, multiplyAccumulate1(0, n: evenN, a: a))
  }
  
  func testMultiplyAccumulate1ByOne() {
    XCTAssertEqual(a, multiplyAccumulate1(0, n: 1, a: a))
  }
  
  func testMultiplyAccumulate2() {
    XCTAssertEqual(evenNTimesA, multiplyAccumulate2(0, n: evenN, a: a))
  }
  
  func testMultiplyAccumulate2ByOne() {
    XCTAssertEqual(a, multiplyAccumulate2(0, n: 1, a: a))
  }
  
  func testMultiplyAccumulate3() {
    XCTAssertEqual(evenNTimesA, multiplyAccumulate3(0, n: evenN, a: a))
  }
  
  func testMultiplyAccumulate3ByOne() {
    XCTAssertEqual(a, multiplyAccumulate3(0, n: 1, a: a))
  }
  
  func testMultiplyAccumulate4() {
    XCTAssertEqual(evenNTimesA, multiplyAccumulate3(0, n: evenN, a: a))
  }
  
  func testMultiplyAccumulate4ByOne() {
    XCTAssertEqual(a, multiplyAccumulate3(0, n: 1, a: a))
  }
  
  func testMultiply2() {
    XCTAssertEqual(evenNTimesA, multiply2(evenN, a: a))
  }
  
  func testMultiply2ByOne() {
    XCTAssertEqual(a, multiply2(1, a: a))
  }
  
  func testMultiply3() {
    XCTAssertEqual(evenNTimesA, multiply3(evenN, a: a))
  }
  
  func testMultiply3ByOne() {
    XCTAssertEqual(a, multiply3(1, a: a))
  }
  
  func testMultiply4() {
    XCTAssertEqual(evenNTimesA, multiply4(evenN, a: a))
  }
  
  func testMultiply4ByOne() {
    XCTAssertEqual(a, multiply4(1, a: a))
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
    ("testMultiplyAccumulate0", testMultiplyAccumulate0),
    ("testMultiplyAccumulate0ByOne", testMultiplyAccumulate0ByOne),
    ("testMultiplyAccumulate1", testMultiplyAccumulate1),
    ("testMultiplyAccumulate1ByOne", testMultiplyAccumulate1ByOne),
    ("testMultiplyAccumulate2", testMultiplyAccumulate2),
    ("testMultiplyAccumulate2ByOne", testMultiplyAccumulate2ByOne),
    ("testMultiplyAccumulate3", testMultiplyAccumulate3),
    ("testMultiplyAccumulate3ByOne", testMultiplyAccumulate3ByOne),
    ("testMultiplyAccumulate4", testMultiplyAccumulate4),
    ("testMultiplyAccumulate4ByOne", testMultiplyAccumulate4ByOne),
    ("testMultiply2", testMultiply2),
    ("testMultiply2ByOne", testMultiply2ByOne),
    ("testMultiply3", testMultiply3),
    ("testMultiply3ByOne", testMultiply3ByOne),
    ("testMultiply4", testMultiply4),
    ("testMultiply4ByOne", testMultiply4ByOne),
  ]
}
