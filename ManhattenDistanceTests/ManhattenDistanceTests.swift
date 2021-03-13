//  File           : ManhattenDistanceTests.swift
//  Description    : This is the file that holds Unit Tests.
//                   testDistance compares the calculated values to the expected values.
//
//   Author        : Roman Tuzhilkin
//   Last Modified : 03.12.2021


import XCTest

var plotTests: Graph = Graph()

class ManhattenDistanceTests: XCTestCase {

    func testDistance() throws {
        plotTests.fillPoints(forA: 1, forA: 2, forB: 0, forB: 0)
        XCTAssert(3 == plotTests.getDistance())
        plotTests.fillPoints(forA: -1, forA: -2, forB: 0, forB: 0)
        XCTAssert(3 == plotTests.getDistance())
        plotTests.fillPoints(forA: -1, forA: 2, forB: 0, forB: 0)
        XCTAssert(3 == plotTests.getDistance())
        plotTests.fillPoints(forA: 1, forA: -2, forB: 0, forB: 0)
        XCTAssert(3 == plotTests.getDistance())
        plotTests.fillPoints(forA: 0, forA: 0, forB: 0, forB: 0)
        XCTAssert(0 == plotTests.getDistance())
    }

}
