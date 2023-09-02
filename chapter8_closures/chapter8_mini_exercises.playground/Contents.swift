// only 1 mini exercise
/*
 Create a constant array called names that contains some names as strings. Any names will do — make sure there’s more than three. Now use reduce to create a string that is the concatenation of each name in the array.
 */

let names = ["mohab", "ziad", "aly", "ahmed", "nada"]
var sum = names.reduce(" ") {
    $0 + $1
}

/*
 Using the same names array, first filter the array to contain only names that are longer than four characters, and then create the same concatenation of names as in the above exercise. (Hint: You can chain these operations together.)
 */
var filtered = names.filter {
    $0.count > 4
}.reduce("") {
    $0 + $1
}

/*
 Create a constant dictionary called namesAndAges that contains some names as strings mapped to ages as integers. Now use filter to create a dictionary containing only people under the age of 18.
 */

let namesAndAges = ["mohab": 20, "ziad": 21, "aly": 17, "ahmed": 40, "nada": 16]

var underEighten = namesAndAges.filter() {
    $0.value <= 18
}

/*
 Using the same namesAndAges dictionary, filter out the adults (those 18 or older) and then use map to convert to an array containing just the names (i.e. drop the ages).
 */

var aboveEighten = namesAndAges.filter {
    $0.value >= 18
}.map {
    print($0.key)
}
