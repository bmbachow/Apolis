import UIKit

var greeting = "Hello, playground"

func addToQueue(num: Int, queue: [Int]) -> [Int]{
    var newQueue = queue
    newQueue.insert(num, at: 0)
    return newQueue
}

func addToStack(num: Int, stack: [Int]) -> [Int]{
    var newStack = stack
    newStack.append(num)
    return newStack
}






