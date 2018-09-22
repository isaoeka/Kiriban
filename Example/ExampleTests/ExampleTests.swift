//
//  ExampleTests.swift
//  ExampleTests
//
//  Created by isaoeka on 2018/09/22.
//  Copyright © 2018年 isaoeka. All rights reserved.
//

import XCTest
@testable import Kiriban

class ExampleTests: XCTestCase {
    
    func testZorome() {
        let numbers: [Int: Bool] = [
            0: false,
            1: false,
            10: false,
            11: true,
            100: false,
            111: true,
            123: false,
            200: false,
            222: true,
            -100: false,
            -111: true,
            -123: false
        ]
        
        numbers.forEach {
            let (number, expected) = $0
            XCTAssertEqual(number.isZorome, expected)
        }
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
}
