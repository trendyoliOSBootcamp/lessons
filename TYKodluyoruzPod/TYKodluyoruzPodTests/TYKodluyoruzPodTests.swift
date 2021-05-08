//
//  TYKodluyoruzPodTests.swift
//  TYKodluyoruzPodTests
//
//  Created by Kerim Caglar on 8.05.2021.
//

import XCTest
@testable import TYKodluyoruzPod

class TYKodluyoruzPodTests: XCTestCase {

    
    var tyKodluyoruzPod : TYKodluyoruzPod!
    
    override func setUp() {
        tyKodluyoruzPod = TYKodluyoruzPod()
    }

    func testSum() {
        XCTAssertEqual(tyKodluyoruzPod.sum(x: 3, y: 5), 8)
    }
    
    func testMultiply() {
        XCTAssertEqual(tyKodluyoruzPod.multiply(x: 3, y: 5), 15)
    }
    
}
