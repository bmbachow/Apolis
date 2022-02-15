import UIKit

var greeting = "Hello, playground"

//1. Find the first largest number from given array.
//2. Find the second largest number from given array.
//3. Find the first shortest number from given array.
//4. Find the second shortest number from given array.
//5.Generic function for each
//6. Merge sort
//var arr1 = [ 1, 3, 4, 5, 7 ]
//var arr2 = [ 2, 4, 6, 8 ]
//7.FiindMaxCharOfString(word: "xxaaaagggffffyy")
//8. Check string  is palindrome  or not


func findLargest(arr : [Int]) -> Int {
    var temp : Int?
    for i in arr {
        if temp == nil {
            temp = i
        }
        if i > temp! {
            temp = i
        }
    }

    return temp!
}

findLargest(arr: [1, 4, -1, -5, 2, 8, 5])

func findSecondLargest(arr: [Int]) -> Int {
    let sortedArray = arr.sorted()
    return sortedArray[sortedArray.count - 2]
}

findSecondLargest(arr: [1, 4, -1, -5, 2, 8, 5])

func findShortest(arr : [Int]) -> Int {
    let sortedArray = arr.sorted()
    return sortedArray[0]
}

findShortest(arr: [1, 4, -1, -5, 2, 8, 5])

func findSecondShortest(arr : [Int]) -> Int {
    let sortedArray = arr.sorted()
    return sortedArray[1]
}

findSecondShortest(arr: [1, 4, -1, -5, 2, 8, 5])



import XCTest


struct StackStructure {
    var startingStack = [Int]()
    mutating func addToStack(newElement: Int){
        startingStack.append(newElement)
    }
    mutating func elementPoppedFromStack() -> Int?{
        return startingStack.popLast()
    }

    mutating func showStack() -> [Int]?{
        return startingStack
    }

}

class StackTest: XCTestCase {

    var stack = StackStructure()

    override func setUpWithError() throws {

    }

    override func tearDownWithError() throws {

    }

    func testAddToStack() {
        stack.addToStack(newElement: 5)
        XCTAssert(stack.startingStack.count == 1)

    }

    func testElementPoppedFromStack() {

        stack.startingStack = [1, 2, 3]
        let poppedElement = stack.elementPoppedFromStack()
        XCTAssertEqual(poppedElement, 3)

    }
}


StackTest.defaultTestSuite.run()



struct FizzBuzz {
    func fizzBuzz(){
        for i in 1...100 {
            if i % 3 == 0 && i % 5 == 0 {
                print("FizzBuzz")
            }
            if i % 3 == 0 {
                print("Fizz")
            }
            if i % 5 == 0 {
                print("Buzz")
            } else {
                print(i)
            }
    }

}
}



class FizzBuzzTest: XCTestCase {

    var fizzBuzzInstance = FizzBuzz()

    override func setUpWithError() throws {

    }

    override func tearDownWithError() throws {

    }

    func testFizz() {
        fizzBuzzInstance.fizzBuzz()
        XCTAssertEqual("Fizz", "Third Printed Line")
    }

    func testBuzz() {
        fizzBuzzInstance.fizzBuzz()
        XCTAssertEqual("Buzz", "Fifth Printed Line")
    }

    func testFizzBuzz() {
        fizzBuzzInstance.fizzBuzz()
        XCTAssertEqual("FizzBuzz", "Fifteenth Printed Line")
    }

    func testNeitherFizzNorBuzz() {
        fizzBuzzInstance.fizzBuzz()
        XCTAssertEqual(1, 1)
    }


}

FizzBuzzTest.defaultTestSuite.run()
