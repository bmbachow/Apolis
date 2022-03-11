import UIKit
import XCTest


//The FizzBuzz task: Write a program that prints the numbers from 1 to 100. But for multiples of 3 print “Fizz” instead of the number and for the multiples of 5 print “Buzz“. For numbers which are multiples of both 3 and 5 print “FizzBuzz”.
                                                                                    
                                                                                    
var greeting = "Hello, playground"

struct fizzBuzz {

    func runLoop(from: Int, to: Int){
        guard from < to else { return }
        for i in from...to{
            checkNumber(i: i)
        }
    }
    
    func checkNumber(i : Int) -> String {
        if fizzBuzz(num: i) {
            return "FizzBuzz"
        } else if fizz(num: i) {
                return "Fizz"
            } else if buzz(num: i) {
                return "Buzz"
            } else {
                return String(i)
            }
    }
    
    func fizz(num : Int) -> Bool {
        if num % 3 == 0 {
            return true
        }
        return false
    }
    
    func buzz(num: Int) -> Bool {
        if num % 5 == 0 {
            return true
        }
        return false
    }
    
    func fizzBuzz(num: Int) -> Bool {
        if fizz(num: num) && buzz(num: num) {
            return true
        }
        return false
    }
    
}



class fizzBuzzMockTests: XCTestCase {
    
    var fizzbuzzobject : fizzBuzz?

    override func setUp() {
        super.setUp()
        fizzbuzzobject = fizzBuzz()
    }
    
    override func tearDown() {
        super.tearDown()
        fizzbuzzobject = nil
    }
    
    func testCheckNumber(){
        XCTAssertEqual("FizzBuzz", fizzbuzzobject?.checkNumber(i: 15))
        XCTAssertEqual("FizzBuzz", fizzbuzzobject?.checkNumber(i: 45))
        XCTAssertEqual("Fizz", fizzbuzzobject?.checkNumber(i: 9))
        XCTAssertEqual("Fizz", fizzbuzzobject?.checkNumber(i: 33))
        XCTAssertEqual("Buzz", fizzbuzzobject?.checkNumber(i: 50))
        XCTAssertEqual("Buzz", fizzbuzzobject?.checkNumber(i: 95))
    }
    
    func testPrintNumber(){
        XCTAssertEqual(7, 7)
        
    }
    
    func testPrintFizz(){
        XCTAssertEqual(true, fizzbuzzobject?.fizz(num: 3))
        XCTAssertEqual(true, fizzbuzzobject?.fizz(num: 9))
        XCTAssertEqual(true, fizzbuzzobject?.fizz(num: 15))
    }
    
    func testPrintBuzz(){
        XCTAssertEqual(true, fizzbuzzobject?.buzz(num: 5))
        XCTAssertEqual(true, fizzbuzzobject?.buzz(num: 25))
        XCTAssertEqual(false, fizzbuzzobject?.buzz(num: 24))
    }
    
    func testPrintFizzBuzz(){
        XCTAssertEqual(true, fizzbuzzobject?.fizzBuzz(num: 30))
        XCTAssertEqual(true, fizzbuzzobject?.fizzBuzz(num: 60))
        XCTAssertEqual(false, fizzbuzzobject?.fizzBuzz(num: 10))
    }
    
    func testRunLoop(){
        
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}

fizzBuzzMockTests.defaultTestSuite.run()
