//
//  ApiUnitTestDemoTests.swift
//  TestDesignPatternTests
//
//  Created by Apple on 2/10/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import XCTest
import UIKit
import Alamofire

//import Vi

class ApiUnitTestDemoTests: XCTestCase {
    
    var sut: URLSession!

    override func setUp() {
        super.setUp()
        sut = URLSession(configuration: .default)
    }

    override func tearDown() {
        sut = URLSession(configuration: .default)
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testLoginApiResponse() {
    
        let promise = expectation(description: "Status code 200")
//        Dataservice.instance.
        if let requestUrl = URL(string: "https://api.github.com/search/users?q=B") {
        
//            let data
        }

    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
