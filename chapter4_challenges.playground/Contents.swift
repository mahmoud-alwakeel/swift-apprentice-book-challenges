// challenge 1
/*
 In the following for loop, what will be the value of sum, and how many iterations will happen?
 ANSWER: sum = 15, iterations = 6
 */
var sum = 0
for i in 0...5 {
sum += i }

// challenge 2
/*
 In the while loop below, how many instances of “a” will there be in aLotOfAs? Hint: aLotOfAs.count tells you how many characters are in the string aLotOfAs.
 ANSWER: will have 10 characters of a
 */
var aLotOfAs = ""
while aLotOfAs.count < 10 {
  aLotOfAs += "a"
}


// challenge 3
/*
 Consider the following switch statement:
 What will this code print when coordinates is each of the following?
 let coordinates = (1, 5, 0) : On the x/y plane
 let coordinates = (2, 2, 2) : x = y = z
 let coordinates = (3, 0, 1) : "On the x/z plane
 let coordinates = (3, 2, 5) : Nothing special
 let coordinates = (0, 2, 4) : On the y/z plane
 */
let coordinates = (1, 5, 0)
switch coordinates {
case let (x, y, z) where x == y && y == z:
  print("x = y = z")
case (_, _, 0):
  print("On the x/y plane")
case (_, 0, _):
  print("On the x/z plane")
case (0, _, _):
  print("On the y/z plane")
default:
  print("Nothing special")
}
// challenge 4
/*
 A closed range can never be empty. Why?
 ANSWER: because it is between two numbers the first one must be smaller than second even by one and that means it must have at least one value or more
 */

// challenge 5
/*
 Print a countdown from 10 to 0. (Note: do not use the reversed() method, which will be introduced later.)
 */
for i in 0...10 {
    print(10 - i) // great one didn't know the answer
}


// challenge 6
/*
 Print 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0. (Note: do not use the stride(from:by:to:) function, which will be introduced later.)
 */

for i in 0...10 {
    print(Double(i) / 10)
}
