import Foundation
let count = 10
var sum = 0

//for i in 1...count {
//    sum += i
//}


sum = 1
var lastSum = 0
for _ in 0..<count {
  let temp = sum
  sum += lastSum
  lastSum = temp
}

// mini exercise 1
/*
 Create a constant named range, and set it equal to a range starting at 1 and ending with 10 inclusive. Write a for loop that iterates over this range and prints the square of each number.
 */

let range = 1...10

for i in range {
    print(i*i)
}
/*
 Write a for loop to iterate over the same range as in the exercise above and print the square root of each number. You’ll need to type convert your loop constant.
 */
for i in range {
   let squareRoot = sqrt(Double(i))
    print(squareRoot)
}
/*
 Above, you saw a for loop that iterated over only the even rows like so:
 sum = 0
 for row in 0..<8 {
 if row % 2 == 0 {
 continue
   }
   for column in 0..<8 {
     sum += row * column
   }
 */
sum = 0
for row in 0..<8 where row % 2 != 0{
    for column in 0..<8 {
        sum += row * column
    }
    print(sum)
}

// mini exercise 2
/*
 Write a switch statement that takes an age as an integer and prints out the life stage related to that age. You can make up the life stages, or use my categorization as follows: 0-2 years, Infant; 3-12 years, Child; 13-19 years, Teenager; 20-39, Adult; 40-60, Middle aged; 61+, Elderly.
 */
let age = 22
var lifeStage = ""
switch age {
case 0...2:
    lifeStage = "infant"
case 3...12:
    lifeStage = "child"
case 13...19:
    lifeStage = "teenager"
case 20...39:
    lifeStage = "adult"
case 40...60:
    lifeStage = "middle aged"
default:
    lifeStage = "elderly"
}

/*
 Write a switch statement that takes a tuple containing a string and an integer. The string is a name, and the integer is an age. Use the same cases that you used in the previous exercise and let syntax to print out the name followed by the life stage. For example, for myself it would print out "Matt is an adult.".
 */
let person = (str: "weka", age: 22)
var lifeStage2 = ""

switch person.age {
case 0...2:
    lifeStage = "infant"
case 3...12:
    lifeStage = "child"
case 13...19:
    lifeStage = "teenager"
case 20...39:
    lifeStage = "adult"
case 40...60:
    lifeStage = "middle aged"
default:
    lifeStage = "elderly"
}
print("\(person.str) is \(lifeStage)")





// switch example
let num = 10
switch num {
case 10:
    print("it's a ten")
default:
    break
}

// switch with strings
let animal = "dog"
switch animal {
case "dog" , "cat":
    print("pet animal")
default:
    print("not pet animal")
}

// switch statement with range

let hourOfDay = 2
var timeOFDay = ""
switch hourOfDay {
case 4...8:
    timeOFDay = "early morning"
case 9...11:
    timeOFDay = "morning"
case 12...17:
    timeOFDay = "afternoon"
case 18...23:
    timeOFDay = "evening"
case 0...3: // this was from 24 to 3 and this is wrong
    timeOFDay = "late Evening"
default:
    timeOFDay = "INVALID"
}

// another switch example on partial matching

let coordinates = (x: 2, y: 3, z: 4)

switch coordinates {
case (0, 0, 0):
    print("orign")
case (_, 0, 0):
    print("on X axis")
case (0, _, 0):
    print("on Y axis")
case (0, 0, _):
    print("on Z axis")
default:
    print("some where on 3D plane")
}

// we can do it in another way like this:
let coordinates2 = (x: 25, y: 5, z: 0)

switch coordinates2 {
case (0, 0, 0):
    print("orign")
case (let x, 0, 0):
    print("on X axis = \(x)")
case (0, let y, 0):
    print("on X axis = \(y)")
case (0, 0, let z):
    print("on X axis = \(z)")
case let (x, y, z):
    print("some where on X = \(x) on Y = \(y) on Z = \(z)")
}

