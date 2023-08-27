//mini exercise 1
/*
 Make an optional String called myFavoriteSong. If you have a favorite song, set it to a string representing that song. If you have more than one favorite song or no favorite, set the optional to nil.
 */

var myFavoriteSong: String?
//myFavoriteSong = "Anything"
/*
 Create a constant called parsedInt and set it equal to Int("10") which tries to parse the string 10 and convert it to an Int. Check the type of parsedInt using Option-Click. Why is it an optional?
 */
let parsedInt = Int("10")
// ANSWER: because it may contain a number in a form of a string or it may contain a text like a name or something else, or may not contain anything

/*
 Change the string being parsed in the above exercise to a non-integer (try dog for example). What does parsedInt equal now?
 */
let parsedInt2 = Int("Apple")
// ANSWER: nil


//mini exercise 2
/*
 Using your myFavoriteSong variable from earlier, use optional binding to check if it contains a value. If it does, print out the value. If it doesn’t, print "I don’t
    have a favorite song."
 */

if let myFavoriteSong = myFavoriteSong {
    print(myFavoriteSong)
} else {
    print("I don’t have a favorite song.")
}
/*
 Change myFavoriteSong to the opposite of what it is now. If it’s nil, set it to a
 string; if it’s a string, set it to nil. Observe how your printed result changes.
 */
// i'll comment myFavoriteSong declaration , ANSWER: I don’t have a favorite song.


// examples not mini exercises from book
var result: Int? = 30
print(result as Any)
// You will also see a warning on this line which says “Expression implicitly coerced from 'Int?' to Any”. This is because Swift warns that you’re using an optional in the place of the Any type as it’s something that usually means you did something wrong. To silence the warning, you can change the code to print(result as Any).


// force unwrapping
var authorName: String? = "Alwakeel"
var authorAge: Int? = 30

var unwrappedAuthorName = authorName!
print("Author is \(unwrappedAuthorName)")
// The exclamation mark after the variable name tells the compiler that you want to look inside the box and take out the value. The result is a value of the wrapped type. This means unwrappedAuthorName is of type String, not String?.

//consider what happens when the optional doesn’t contain a value:
var authorName2: String? = nil
var authorAge2: Int? = 30

//var unwrappedAuthorName2 = authorName2!
//print("Author is \(unwrappedAuthorName2)")
// will print this ERROR : Fatal error: Unexpectedly found nil while unwrapping an Optional value
// The error occurs because the variable contains no value when you try to unwrap it
// we could do this

if authorName2 != nil {
    print("Author is \(authorName2 as Any)")
} else {
    print("NO AUTHOR")
}


// GUARD example

func guardMyCastle(name: String?) {
    guard let castleName = name else {
        print("No castle!")
        return
    }
    // at this poit castleName is non optional
    print("your castle called \(castleName) was guarded")
}
guardMyCastle(name: nil)



//

func calculateNumberOfSides(shape: String) -> Int? {
    switch shape {
    case "Triangle":
        return 3
    case "Square":
        return 4
    case "Rectangle":
        return 4
    case "Pentagon":
        return 5
    case "Hexagon":
        return 6
    default:
        return nil
    }
}
//func maybePrintSides(shape: String) {
//  let sides = calculateNumberOfSides(shape: shape)
//  if let sides = sides {
//    print("A \(shape) has \(sides) sides.")
//} else {
//    print("I don’t know the number of sides for \(shape).")
//  }
//}
// or we could use the guard like this
func maybePrintSides(shape: String) {
  guard let sides = calculateNumberOfSides(shape: shape) else {
    print("I don’t know the number of sides for \(shape).")
return
}
  print("A \(shape) has \(sides) sides.")
}
maybePrintSides(shape: "Rectangle")
// cooment and uncomment on of the two functions above they will print the same result but one with guard and the other is without 
