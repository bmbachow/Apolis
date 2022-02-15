import UIKit


//Question 1

func countOccurrences(string: String){

    var count = 0
    for _ in string {
        count += 1
    }
print(count)
}

countOccurrences(string: "Brian")

//prints 5



//Question 2


func sortArrayOfIntegers(array : [Int]) {
    let sortedArray = array.sorted()
    print(sortedArray)
}


sortArrayOfIntegers(array:[1000, 50, 100, 3, 821])


//Question 3

//  Type safety
//  Optionals
//  Type inference
//  Generics
//  Protocols



//Question 4

// loadView
    // Invoked when view starts loading.  We do not call this method directly.
// viewDidLoad
    // Called when view finished loading.  We usually override this method to perform additional initialization.
// viewWillAppear
    // Notifies view controller that the view is about to be added to the view hierarchy.
    // Can be used to change orientation of items on view to go with change in phone orientation.
// viewDidAppear
    // Called once a view appears on screen.  Is different from viewDidLoad
    // because viewDidLoad will only call on initial appearance, but viewDidAppear
    // is called every time the view appears, whether the first time or later times.
// viewWillDisappear
    // Called when view is about to disappear.  Often to revert changes made in viewDidAppear.
// viewDidDisappear
    // Called when view is removed.
 

//Question 5

// Class vs Struct

// Classes are reference types, while Structs are value types
// Classes can use inheritance, while Structs cannot
// To change internal members of a Struct, you must use the mutating keyword
// Classes are more resource intensive
// Structs are thread safe
// Changes to Classes can cause side effects
// Classes use deinitializers, Structs do not



class PersonClass {
    var name: String
    var age : Int
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

class StudentClass : PersonClass {
    var grade : Int
    init(name: String, age: Int, grade: Int){
        self.grade = grade
        super.init(name: name, age: age)
    }
}

struct StudentStruct {
    var name : String
    var grade : Int
    var age : Int
}


//Question 6

//UITableViewDelegate
//UITableViewDataSource
//UIViewController
//UITableViewCell      do not need to explicitly create one


//Question 7

func numberOfUniqueNumbers(array : [Int]) {
    let mappedItems = array.map{($0, 1)}
    let counts = Dictionary(mappedItems, uniquingKeysWith: +)
    print(counts.count)
}

numberOfUniqueNumbers(array: [1, 1, 2, 2, 3])
//prints 3

//Question 8

struct Goals {
    var score: Int
}
    
var score1 = Goals(score: 5)
var score2 = score1
score2.score += 1

print(score1.score)


//score1.score = 5 because changes to score2 do not affect score1 because Structs are value types and do not share the same part of memory


//Question 9


struct Person {
    var address: String?
    let name: String
    init (name: String) {
        self.name = name
        self.address = nil }
    mutating func changeAddress(addr: String) {
        self.address = addr }
}

//1. False
//2. False
//3. True
//4. False
//5. False



// Question 10

//A. Optional.  Indicates that a variable can be nil.
//B. Nil Coalescing Operator.  Evaluates left side, if true it continues, if false it evaluates to the right side.  Can be used to safely unwrap optionals.
//C. Force unwrap.  Used to unwrap optionals.  Should only be used if we absolutely know there will be a value.  Typically used for IBOutlets


//var hobby: String?
//var newHobby = hobby ?? "default hobby"
//  @IBOutlet weak var tblView: UITableView!


//Question 14

//var defaults = UserDefaults.standard
//var name = defaults.string(forKey: "name")!
//printString(string: name)
//func printString(string: String) { print(string)
//}


let defaults = UserDefaults.standard
var name = defaults.string(forKey: "name") ?? "NA"
print(name)
