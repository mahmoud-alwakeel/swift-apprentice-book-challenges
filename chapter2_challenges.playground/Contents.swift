/*
 challenge 1
 Create a constant called coordinates and assign a tuple containing two and three to it.
 */
let coordinates = (2, 3)

/*
 challenge 2
 Create a constant called namedCoordinate with a row and column component.
 */
let namedCoordinated = (row: 2, column: 3)


/*
 challenge 3
 Which of the following are valid statements?
 1-let character: Character = "Dog"
 2-let character: Character = "! "
 3-let string: String = "Dog"
 4-let string: String = "! "
 ANSWER: 2, 3, 4
 */
/*
Does it compile?
let tuple = (day: 15, month: 8, year: 2015)
let day = tuple.Day
 ANSWER: No as Day is uppercase while day in the tuple is lower case
 */
let tuple = (day: 15, month: 8, year: 2015)
let day = tuple.day

/*
 challenge 5
 What is wrong with the following code?
 let name = "Matt"
 name += " Galloway"
 ANSWER: the error is because the name is constant and it need to be variable to be able to add to it
 */
var name = "Matt"
name += " Galloway"
/*
 challenge 6
 What is the type of value?

 let tuple = (100, 1.5, 10)
 let value = tuple.1
 ANSWER: it's double as the index 1 is for the second element
 */
let tuple2 = (100, 1.5, 10)
let value = tuple2.1

/*
 challenge 7
 What is the value of the constant named month?
 let tuple = (day: 15, month: 8, year: 2015)
 let month = tuple.month
 ANSWER: Int
 */
let tuple3 = (day: 15, month: 8, year: 2015)
let month = tuple3.month

/*
 challenge 8
 What is the value of the constant named summary?
ANSWER: String
 */
let number = 10
let multiplier = 5
let summary = "\(number) multiplied by \(multiplier) equals \(number * multiplier)"


/*
 challenge 9
 What is the sum of a and b, minus c?
 ANSWER: sum is 92
 */
let a = 4
let b: Int32 = 100
let c: UInt8 = 12
let ans = a + Int(b) - Int(c)


/*
 challenge 10
 What is the numeric difference between Double.pi and Float.pi?
 Float.pi have half the precision of Double.pi
 Double is a 64-bit floating-point type,
 Float is a 32-bit floating-point type,
 */
