/*
 challenge 1
 What’s wrong with the following code?
 let firstName = "Matt"
 if firstName == "Matt" {
   let lastName = "Galloway"
 } else if firstName == "Ray" {
   let lastName = "Wenderlich"
 }
 let fullName = firstName + " " + lastName
 AMSWER: the error is that the lastName is declared in a scope and used after that outside it
 */
let firstName = "Matt"
var lastName = ""
if firstName == "Matt" {
    lastName = "Galloway"
} else if firstName == "Ray" {
    lastName = "Wenderlich"
}
let fullName = firstName + " " + lastName

/*
 challenge 2
 In each of the following statements, what is the value of the Boolean answer constant?
 let answer = true && true , Ans: true
 let answer = false || false , Ans: false
 let answer = (true && 1 != 2) || (4 > 3 && 100 < 1) , Ans: true
 let answer = ((10 / 2) > 3) && ((10 % 2) == 0) , Ans: true
 */


/*
 challenge 3
 Imagine you’re playing a game of snakes & ladders that goes from position 1 to position 20. On it, there are ladders at position 3 and 7 which take you to 15 and 12 respectively. Then there are snakes at positions 11 and 17 which take you to 2 and 9 respectively.
 Create a constant called currentPosition which you can set to whatever position between 1 and 20 which you like. Then create a constant called diceRoll which you can set to whatever roll of the dice you want. Finally, calculate the final position taking into account the ladders and snakes, calling it nextPosition.
 */
var currentPosition = 1
let diceRoll = 5
let winnerPosition = 20
while currentPosition < winnerPosition {
    if currentPosition == 3 {
        currentPosition = 15
    } else if currentPosition == 7 {
        currentPosition = 12
    } else if currentPosition == 11 {
        currentPosition = 2
    } else if currentPosition == 17 {
        currentPosition = 9
    } else {
        currentPosition += diceRoll
    }
}

/*
 challenge 4
 Given a month (represented with a String in all lowercase) and the current year (represented with an Int), calculate the number of days in the month. Remember that because of leap years, "february" has 29 days when the year is a multiple of 4 but not a multiple of 100. February also has 29 days when the year is a multiple of 400.
 */
var month = "febraury"
let year = 2004
var numOfDays: Int
if month == "febraury" {
    if (year % 4 == 0 && year % 100 != 0) || year % 400 == 0 {
        numOfDays = 29
    } else {
        numOfDays = 28
    }
} else if month == "january" || month == "march" || month == "may" || month == "july" || month == "august" || month == "october" || month == "december" {
    numOfDays = 31
} else if month == "april" || month == "june" || month == "september" || month == "november" {
    numOfDays = 30
} else {
    print("invalid month")
}
/*
 challenge 5
 Given a number, determine the next power of two above or equal to that number.
 */
let inputNum = 12
var powerOfTwo = 1
while powerOfTwo < inputNum {
    powerOfTwo *= 2
}
print("the smallest power of two is equal to \(powerOfTwo)")
/*
 challenge 6
 Given a number, print the triangular number of that depth
 */
let depth = 5
var trianglePoints = 0
var counter = 1

while counter <= depth {
    trianglePoints += counter
    counter += 1
}
print("\(trianglePoints)")
/*
 challenge 7
 Calculate the n’th Fibonacci number. Remember that Fibonacci numbers start its sequence with 1 and 1, and then subsequent numbers in the sequence are equal to the previous two values added together.
 */
let nthNum = 10
var prevNum = 1
var currentNum = 1
var count = 3

if nthNum == 0 {
    print("the \(nthNum)th fibonnaci num is 0")
} else if nthNum == 1 || nthNum == 2 {
    print("the \(nthNum)th fibonnaci num is 1")
} else {
   
    while count <= nthNum {
        let nextNum = prevNum + currentNum
        prevNum = currentNum
        currentNum = nextNum
        count += 1
    }
    print("The \(nthNum)th Fibonacci number is:", currentNum)
}
// with help of chatgpt

/*
 challenge 8
 Use a loop to print out the times table up to 12 of a given factor.
 */
let factor = 3
var count8 = 1
let numUpTo = 12
while count8 <= numUpTo {
    var result = factor * count8
    print("\(factor) * \(count8) = \(result)")
    count8 += 1
}
/*
 challenge 9
 Print a table showing the number of combinations to create each number from 2 to 12 given 2 six-sided dice rolls. You should not use a formula but rather compute the number of combinations exhaustively by considering each possible dice roll.

 */
var total = 2
while total <= 12 {
    var combination = 0
    var dice1 = 1
    while dice1 <= 6 {
        var dice2 = 1
        while dice2 <= 6 {
            if dice1 + dice2 == total {
                combination += 1
            }
            dice2 += 1
        }
        dice1 += 1
    }
    print("Number of combinations to get \(total) with 2 dice rolls:", combination)
    total += 1
    
}
// with help of chatgpt
