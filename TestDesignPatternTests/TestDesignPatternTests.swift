//
//  TestDesignPatternTests.swift
//  TestDesignPatternTests
//
//  Created by Apple on 10/22/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import XCTest
import Alamofire
@testable import TestDesignPattern

class TestDesignPatternTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        let expectations = expectation(description: "The Response result match the expected results")

        if let requestUrl = URL(string: "https://api.github.com/search/users?q=B") {
            AF.request(requestUrl,method: .get).responseJSON { (response) in
                switch response.result{
                    
                case .success( _):
                    expectations.fulfill()
                    
                case .failure(_):
                    XCTFail("Server reponse failed:\(String(describing: response.error))")
                    expectations.fulfill()

                }
                
            }

        
        }
            
        waitForExpectations(timeout: 30) { (err) in
            if let error = err {
                print("Failed : \(error.localizedDescription)")
            }
        }

        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
