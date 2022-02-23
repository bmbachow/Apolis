import UIKit

var greeting = "Hello, playground"


func findEvenSum(arr : [String]) -> Int {
    var integerArray = [Int]()
    
    for i in arr {
        integerArray.append(Int(i)!)
    }
    
    var answer = 0
    
    for i in integerArray {
        if i % 2 == 0{
            answer = answer + i
        }
    }
    
    return answer
}


//print(findEvenSum(arr: ["1", "2", "9", "6", "77"]))


func findEvenSumWithHOF(arr : [String]) -> Int {
    var integerArray = [Int]()
    
    for i in arr {
        integerArray.append(Int(i)!)
    }
    
    let even = integerArray.filter { $0 % 2 == 0 }
    
    let answer = even.reduce(0, +)
    
    return answer
}

print(findEvenSum(arr: ["1", "2", "9", "6", "77"] ))

