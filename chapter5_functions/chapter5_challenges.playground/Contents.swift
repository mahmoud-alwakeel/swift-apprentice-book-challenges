//challenge 1
/*
 In the last chapter you wrote some for loops with countable ranges. Countable ranges are limited in that they must always be increasing by one. The Swift stride(from:to:by:) and stride(from:through:by:) functions let you loop much more flexibly.
 What is the difference between the two stride function overloads?
ANSWER: from to doesn't include the to number , while through include the to number
 */
for i in stride(from: 10.0, to: 9.0, by: -0.1) {
    // NEGATIVE 0.1
    print(i)
}

//challenge 2
/*
 When I’m acquainting myself with a programming language, one of the first things I do is write a function to determine whether or not a number is prime. That’s your second challenge.
 First, write the following function:
 func isNumberDivisible(_ number: Int, by divisor: Int) -> Bool You’ll use this to determine if one number is divisible by another. It should return
 true when number is divisible by divisor.
 Hint: You can use the modulo (%) operator to help you out here. Next, write the main function:
    func isPrime(_ number: Int) -> Bool
 This should return true if number is prime, and false otherwise. A number is prime if it’s only divisible by 1 and itself. You should loop through the numbers from 1 to the number and find the number’s divisors. If it has any divisors other than 1 and itself, then the number isn’t prime. You’ll need to use the isNumberDivisible(_:by:) function you wrote earlier.
 Use this function to check the following cases:
 isPrime(6) // false
 isPrime(13) // true
 isPrime(8893) // true
 Hint 1: Numbers less than 0 should not be considered prime. Check for this case at the start of the function and return early if the number is less than 0.
 Hint 2: Use a for loop to find divisors. If you start at 2 and end before the number itself, then as soon as you find a divisor, you can return false.
 Hint 3: If you want to get really clever, you can simply loop from 2 until you reach the square root of number, rather than going all the way up to number itself. I’ll leave it as an exercise for you to figure out why. It may help to think of the number 16, whose square root is 4. The divisors of 16 are 1, 2, 4, 8 and 16.
 */
func isNumberDivisible(_ number: Int, by divisor: Int) -> Bool {
    if number % divisor == 0 {
        return true
    } else {
        return false
    }
}
isNumberDivisible(10, by: 2)


func isPrime(_ number: Int) -> Bool {
    if number <= 0 {
        return false
    }
    if number <= 3 {
        return true
    }
    
    let doubleNum = Double(number)
    let root = Int(doubleNum.squareRoot())
    // with the help of answers
    for divisor in 2...root {
        if isNumberDivisible(number, by: divisor) {
            return false
        }
    }
    return true
}
isPrime(6)
isPrime(13)
isPrime(8893)
//challenge 3
/*
 In this challenge, you’re going to see what happens when a function calls itself, a behavior called recursion. This may sound unusual, but it can be quite useful.
 You’re going to write a function that computes a value from the Fibonacci sequence. Any value in the sequence is the sum of the previous two values. The sequence is defined such that the first two values equal 1. That is, fibonacci(1) = 1 and fibonacci(2) = 1.
 Write your function using the following declaration:
 func fibonacci(_ number: Int) -> Int
 */
func fibonacci(_ number: Int) -> Int {
    if number < 0 {
        return 0
    }else if number == 1 || number == 2 {
        return 1
    }else {
        return fibonacci(number - 1) + fibonacci(number - 2)
    }
}
fibonacci(10)
print(fibonacci(6))
