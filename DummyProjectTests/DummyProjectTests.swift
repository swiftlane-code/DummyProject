//
//  DummyProjectTests.swift
//  DummyProjectTests
//
//  Created by vmzhivetev on 29.05.2023.
//

import XCTest
@testable import DummyProject

class DummyProjectTests: XCTestCase {
	
	var dummy: Dummy!
	
	override func setUp() {
		super.setUp()
		dummy = Dummy()
	}
	
	override func tearDown() {
		dummy = nil
		super.tearDown()
	}
	
	func testAddition() {
		dummy.add(5)
		XCTAssertEqual(dummy.result, 5, "Addition test failed")
	}
	
	func testSubtraction() {
		dummy.subtract(3)
		XCTAssertEqual(dummy.result, -3, "Subtraction test failed")
	}
	
	func testMultiplication() {
		dummy.add(2)
		dummy.multiply(4)
		XCTAssertEqual(dummy.result, 8, "Multiplication test failed")
	}
	
	func testDivision() throws {
		dummy.add(10)
		try dummy.divide(2)
		XCTAssertEqual(dummy.result, 5, "Division test failed")
	}
	
	func testDivisionByZero() {
		XCTAssertThrowsError(try dummy.divide(0), "Division by zero test failed") { error in
			XCTAssertEqual(error as? CalculationError, CalculationError.divisionByZero)
		}
	}
}
