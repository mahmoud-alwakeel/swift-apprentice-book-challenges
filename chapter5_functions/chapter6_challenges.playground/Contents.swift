// challenge 1
/*
 Which of the following are valid statements?
 var name: String? = "Ray" ANS: valid
 var age: Int = nil         ANS: not valid
 let distance: Float = 26.7      ANS: valid
 var middleName: String? = nil   ANS: valid
 */
// modified second one only
var name: String? = "Ray"
var age: Int? = nil
let distance: Float = 26.7
var middleName: String? = nil

// challenge 2
/*
 First, create a function that returns the number of times an integer can be divided by another integer without a remainder. The function should return nil if the division doesn’t produce a whole number. Name the function divideIfWhole.
 */
func divideIfWhole(number: Int, divider: Int) -> Int? {
    if number % divider != 0 {
        return nil
    } else {
        return number / divider
    }
}
divideIfWhole(number: 10, divider: 2)

if let answer = divideIfWhole(number: 10, divider: 2) {
    print("Yep, it divides 5 times.")
} else {
    print("NO")
}
if let answer = divideIfWhole(number: 10, divider: 3) {
    print("Yep, it divides \(answer) times.")
} else {
    print("Not divisible :[.")
}
// challenge 3
/*
 The code you wrote in the last challenge used if statements. In this challenge, refactor that code to use nil coalescing instead. This time, make it print "It divides X times" in all cases, but if the division doesn’t result in a whole number, then X should be 0.
 */
func divideIfWhole2(number: Int, divider: Int) -> Int? {
    if number % divider == 0 {
        return number / divider
    } else {
        return nil
    }
}
    
let res1 = divideIfWhole(number: 10, divider: 2) ?? 0
print("It divides \(res1 as Any) times")

let res2 = divideIfWhole(number: 10, divider: 3) ?? 0
print("It divides \(res2 as Any) times")


// challenge 4
/*
 Consider the following nested optional — it corresponds to a number inside a box inside a box inside a box.
 let number: Int??? = 10
 If you print number you get the following:
 print(number)
 // Optional(Optional(Optional(10)))
 print(number!)
 // Optional(Optional(10))
 Do the following:
 1. Fully force unwrap and print number.
 2. Optionally bind and print number with if let.
 3. Write a function printNumber(_ number: Int???) that uses guard to print the number only if it is bound.

 */
//1
let number: Int??? = 10
print(number!!!)

//2
// NOTE: thats great i didn't get it until i took a look on the answer
if let number = number {
    if let number = number {
        if let number = number {
            print(number)
        }
    }
}
// from answers
// Better way of optionally binding without all the {}
if let n1 = number,
   let n2 = n1,
   let n3 = n2 {
  print(n3)
}


//3
func printNumber(_ number: Int???) {
    guard let n1 = number, let n2 = n1, let n3 = n2 else {
        return
    }
    print(n3)
}
printNumber(number)
