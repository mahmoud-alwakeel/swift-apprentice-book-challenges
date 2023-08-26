// this is a simple function
func printMyName() {
    print("my Name is Wakeel")
}

printMyName()

// parameterize the function
func multipleOfSeven(value: Int) {
    print("\(value) * 7 = \(value * 7)")
}
multipleOfSeven(value: 5)


func multipleOf(multiplier: Int, andValue: Int) {
    print("\(multiplier) * \(andValue) = \(multiplier * andValue)")
}

multipleOf(multiplier: 6, andValue: 7)

// external and internal name

// the internal name (value) and the external name (and)
func multipleOff(multiplier: Int, and value: Int) {
    print("\(multiplier) * \(value) = \(multiplier * value)")
}
multipleOff(multiplier: 6, and: 7)

//returning multiple values using a tuple

func multiplyAndDivide(_ num: Int, factor: Int) -> (product: Int, quotient: Int) {
    return (num * factor , num / factor)
}
let result = multiplyAndDivide(10, factor: 2)
let product = result.product
let qoutient = result.quotient



// here we can change value BECAUSE we introduced a new variable to the function which is newValue
func modifyValue(_ value: Int) {
    var newValue = value
    newValue += 10
    print("Inside function:", newValue) // Inside function: 15
}
var originalValue = 5
modifyValue(originalValue)
print("Outside function:", originalValue)

// while this exaple will result in an error uncomment the func to see the error
/*
func incrementAndPrint(_ value: Int) {
    value += 1
    print(value)
}
 */
// the ERROR : Left side of mutating operator isn't mutable: 'value' is a 'let' constant

// we can make function change it's parameter directly by a behavior known as copy-in copy-out or call by value result
func incrementAndPrint(_ value: inout Int) {
  value += 1
  print(value)
}
var valueee = 5
incrementAndPrint(&valueee)
print(valueee)
// The function incrementAndPrint is defined with an inout parameter named value. This indicates that the parameter can be modified within the function and that those modifications will affect the original value outside the function.
// The & symbol before value indicates that you're passing it by reference, allowing the function to modify its value.




// mini exercise 1
/*
 Write a function named printFullName that takes two strings called firstName and lastName. The function should print out the full name defined as firstName + " " + lastName. Use it to print out your own full name.
 */
func printFullName(firstName: String, lastName: String) {
    let fullName = firstName + " " + lastName
    print(fullName)
}
printFullName(firstName: "mahmoud", lastName: "Alwakeel")

/*
 Change the declaration of printFullName to have no external name for either parameter.

 */
func printFullName(_ firstName: String, _ lastName: String) {
    let fullName = firstName + " " + lastName
    print(fullName)
}
printFullName("M", "Alwakeel")

/*
 Write a function named calculateFullName that returns the full name as a string. Use it to store your own full name in a constant.
 */
func calculateFullName(firstName: String, lastName: String) -> String {
    let fullName = firstName + " " + lastName
    return fullName
}
let myFullName = calculateFullName(firstName: "M", lastName: "Weka")
print("my full name is " + myFullName)

/*
 Change calculateFullName to return a tuple containing both the full name and the length of the name. You can find a string’s length by using the count property. Use this function to determine the length of your own full name.
 */
func calculateFullNameAndLength(firstName: String, lastName: String) -> (fullName: String, length: Int) {
    let fullName = firstName + " " + lastName
    let fullNameLength = fullName.count
    return (fullName, fullNameLength)
}

let myFullName2 = calculateFullNameAndLength(firstName: "Mahmoud", lastName: "Alwakeel")
print(myFullName2.fullName)
print("the length of the name ", myFullName2.length)


// example of passing a function in another function
func add(_ a: Int, _ b: Int) -> Int {
a + b
}
var function = add
func printResult(_ function: (Int, Int) -> Int, _ a: Int, _ b:
Int) {
  let result = function(a, b)
  print(result)
}
printResult(add, 4, 2)
