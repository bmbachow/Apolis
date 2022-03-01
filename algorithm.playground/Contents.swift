//import UIKit
//
//var greeting = "Hello, playground"
//
////1. Find the first largest number from given array.
////2. Find the second largest number from given array.
////3. Find the first shortest number from given array.
////4. Find the second shortest number from given array.
////5.Generic function for each
////6. Merge sort
////var arr1 = [ 1, 3, 4, 5, 7 ]
////var arr2 = [ 2, 4, 6, 8 ]
////7.FiindMaxCharOfString(word: "xxaaaagggffffyy")
////8. Check string  is palindrome  or not
//
//
//func findLargest(arr : [Int]) -> Int {
//    var temp : Int?
//    for i in arr {
//        if temp == nil {
//            temp = i
//        }
//        if i > temp! {
//            temp = i
//        }
//    }
//
//    return temp!
//}
//
//findLargest(arr: [1, 4, -1, -5, 2, 8, 5])
//
//func findSecondLargest(arr: [Int]) -> Int {
//    let sortedArray = arr.sorted()
//    return sortedArray[sortedArray.count - 2]
//}
//
//findSecondLargest(arr: [1, 4, -1, -5, 2, 8, 5])
//
//func findShortest(arr : [Int]) -> Int {
//    let sortedArray = arr.sorted()
//    return sortedArray[0]
//}
//
//findShortest(arr: [1, 4, -1, -5, 2, 8, 5])
//
//func findSecondShortest(arr : [Int]) -> Int {
//    let sortedArray = arr.sorted()
//    return sortedArray[1]
//}
//
//findSecondShortest(arr: [1, 4, -1, -5, 2, 8, 5])
//
//
//
//import XCTest
//
//
//struct StackStructure {
//    var startingStack = [Int]()
//    mutating func addToStack(newElement: Int){
//        startingStack.append(newElement)
//    }
//    mutating func elementPoppedFromStack() -> Int?{
//        return startingStack.popLast()
//    }
//
//    mutating func showStack() -> [Int]?{
//        return startingStack
//    }
//
//}
//
//class StackTest: XCTestCase {
//
//    var stack = StackStructure()
//
//    override func setUpWithError() throws {
//
//    }
//
//    override func tearDownWithError() throws {
//
//    }
//
//    func testAddToStack() {
//        stack.addToStack(newElement: 5)
//        XCTAssert(stack.startingStack.count == 1)
//
//    }
//
//    func testElementPoppedFromStack() {
//
//        stack.startingStack = [1, 2, 3]
//        let poppedElement = stack.elementPoppedFromStack()
//        XCTAssertEqual(poppedElement, 3)
//
//    }
//}
//
//
//StackTest.defaultTestSuite.run()
//
//for i in 1...100{
//    print(fizzBuzz(num : i))
//}
//
//func isDivisibleByThree(num : Int) -> Bool {
//    if num % 3 == 0 {
//        return true
//    }
//    return false
//}
//
//func isDivisibleByFive(num : Int) -> Bool {
//    if num % 5 == 0 {
//        return true
//    }
//    return false
//}
//
//func fizzBuzz(num : Int) -> String {
//    if isDivisibleByFive(num: num) && isDivisibleByThree(num: num){
//        return ("FizzBuzz")
//    } else if isDivisibleByThree(num : num) {
//        return ("Fizz")
//    } else if isDivisibleByFive(num: num){
//        return ("Buzz")
//    } else {
//        return (String(num))
//    }
//
//
//}
//
//
//class FizzBuzzTest: XCTestCase {
//
//    override func setUpWithError() throws {
//
//    }
//
//    override func tearDownWithError() throws {
//
//    }
//
//    func testIsDivisibleByThree() {
//        XCTAssertTrue(isDivisibleByThree(num : 6))
//        XCTAssertTrue(isDivisibleByThree(num : 9))
//        XCTAssertTrue(isDivisibleByThree(num : 18))
//    }
//
//    func testIsDivisibleByFive() {
//        XCTAssertTrue(isDivisibleByFive(num : 5))
//        XCTAssertTrue(isDivisibleByFive(num : 25))
//        XCTAssertTrue(isDivisibleByFive(num : 50))
//    }
//
//    func testFizzBuzz() {
//        XCTAssertEqual(fizzBuzz(num: 15), "FizzBuzz")
//    }
//
//
//}
//
//FizzBuzzTest.defaultTestSuite.run()


//
//func sum(n1:Int?, n2:Int?) -> Int {
//
//    guard let n1 = n1, let n2 = n2 else {return 0}
//
//    return n1 + n2
//}

var sum = { (n1: Int?, n2: Int?) -> Int in
    
    guard let n1 = n1, let n2 = n2 else {return 0}
    return n1 + n2
}

sum(1, 2)
