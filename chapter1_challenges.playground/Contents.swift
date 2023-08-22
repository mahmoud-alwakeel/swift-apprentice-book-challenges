import Foundation
/*
 challenge 1:
 Declare a constant Int called myAge and set it equal to your age. Also declare an Int variable called dogs and set it equal to the number of dogs you own. Then imagine you bought a new puppy and increment the dogs variable by one.
 */
let myAge: Int = 21

var dogs: Int = 3

dogs += 1

/*
 Challenge 2: Make it compile
 Given the following code:
 age: Int = 16
 print(age)
 age = 30
 print(age)
 */

var age: Int = 16
print(age)
age = 30
print(age)

/*
 Challenge 4: Add parentheses
 Add as many parentheses to the following calculation, ensuring that it doesn’t change the result of the calculation.
 8-4*2+6/3*4
 */
(8 - (4 * 2)) + ((6 / 3) * 4)

/*
 Challenge 5: Average rating
 Declare three constants called rating1, rating2 and rating3 of type Double and assign each a value. Calculate the average of the three and store the result in a constant named averageRating.
 */
let rating1: Double = 4.8
let rating2: Double = 2.9
let rating3: Double = 3.6

let averageRating = (rating1 + rating2 + rating3) / 3


/*
 Challenge 6: Electrical power
 The power of an electrical appliance can be calculated by multiplying the voltage by the current. Declare a constant named voltage of type Double and assign it a value. Then declare a constant called current of type Double and assign it a value. Finally calculate the power of the electrical appliance you’ve just created storing it in a constant called power of type Double.
*/
let voltage: Double = 5
let current: Double = 3
let power: Double = voltage * current

/*
 Challenge 7: Electrical resistance
 The resistance of such an appliance can be then calculated (in a long-winded way) as the power divided by the current squared. Calculate the resistance and store it in a constant called resistance of type Double.
 */

let resistance: Double = power / pow(current, 2)

/*
 You can create a random integer number by using the function arc4random(). This creates a number anywhere between 0 and 4294967295. You can use the modulo operator to truncate this random number to whatever range you want. Declare a constant randomNumber and assign it a random number generated with arc4random(). Then calculate a constant called diceRoll and use the random number you just found to create a random number between 1 and 6.

 */
let randomInt: Int = Int(arc4random())

let diceRoll: Int = (randomInt % 6) + 1

/*
 A quadratic equation is something of the form a⋅x2 + b⋅x + c = 0. The values of x which satisfy this can be solved by using the equation x = (-b ± sqrt(b2 - 4⋅a⋅c)) / (2⋅a). Declare three constants named a, b and c of type Double. Then calculate the two values for x using the equation above (noting that the ± means plus or minus — so one value of x for each). Store the results in constants called root1 and root2 of type Double.

 */
let a: Double = 3.0
let b: Double = 5.0
let c: Double = 7.0


let discriminant =  b * b - 4 * a * c

if discriminant >= 0 {
    let root1 = (-b + sqrt(discriminant)) / (2 * a)
    let root2 = (-b - sqrt(discriminant)) / (2 * a)
    
    print("root1:", root1)
    print("root2:", root2)
} else {
    print("complex roots")
}
