// mini-exercise 1
/*
 Create a constant called age1 and set it equal to 42. Create a constant called age2 and set it equal to 21. Check using Option-click that the type for both has been inferred correctly as Int.
 */
let age1 = 42.0
let age2 = 21.0

/*
 Create a constant called avg1 and set it equal to the average of age1 and age2 using the naïve operation (age1 + age2) / 2. Use Option-click to check the type and check the result of avg1. Why is it wrong?

 */
let avg1 = (age1 + age2) / 2

// mini exercise 2

/*
 Create a string constant called firstName and initialize it to your first name. Also create a string constant called lastName and initialize it to your last name.
 */

let firstName = "mahmoud"
let lastName = " weka"
/*
 Create a string constant called fullName by adding the firstName and lastName constants together, separated by a space.
 */
let fullName = firstName  + lastName
/*
 Using interpolation, create a string constant called myDetails that uses the fullName constant to create a string introducing yourself. For example, my string would read: "Hello, my name is Matt Galloway.".
 */
let myDetails = "Hello my name is \(fullName)"


//mini exercise 3
/*
 Declare a constant tuple that contains three Int values followed by a Double. Use this to represent a date (month, day, year) followed by an average temperature for that date.
 */

let date1 = (8, 22, 2023, 30.0)
/*
 Change the tuple to name the constituent components. Give them names related to the data that they contain: month, day, year and averageTemperature.
 */
let date2 = (month:8, day:22, year: 2023, avgTemp: 30.0)
/*
 In one line, read the day and average temperature values into two constants. You’ll need to employ the underscore to ignore the month and year.
 */
let (_, day, _, avgTemp) = date2


/*
 Up until now, you’ve only seen constant tuples. But you can create variable tuples, too. Change the tuple you created in the exercises above to a variable by using var instead of let. Now change the average temperature to a new value.
 */
var date3 = (month:8, day:22, year: 2023, avgTemp: 30.0)
date3.avgTemp = 33.0
