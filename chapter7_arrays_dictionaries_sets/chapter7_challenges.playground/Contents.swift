//challenge 1
/*
 Which of the following are valid statements?
 1. let array1 = [Int]() WRONG
 2. let array2 = [] VALID WRONG as it's not explicit
 3. let array3: [String] = [] VALID
 
 For the next five statements, array4 has been declared as:
 let array4 = [1, 2, 3]
 
 4. print(array4[0]) 1
 5. print(array4[5]) error index out of range
 6. array4[1...2]  [2,3]
 7. array4[0] = 4 4, 2, 3
 8. array4.append(4) 1, 2, 3, 4,
 
 For the final five statements, array5 has been declared as:
 var array5 = [1, 2, 3]
 
 9. array5[0] = array5[1]   2,2,3
 10. array5[0...1] = [4, 5]  4,5,3
 11. array5[0] = "Six"  error as it's array of Int
 12. array5 += 6  1,2,3,6
 13. for item in array5 { print(item) } 1 new line 2 new line 3
 */

let array1 = [Int]()
let array3: [String] = []
let array4 = [1, 2, 3]

//challenge 2
/*
 Write a function that removes the first occurrence of a given integer from an array of integers. This is the signature of the function:
 */
func removingOnce(_ item: Int, from array: [Int]) -> [Int] {
    var result = array
    if let index = array.firstIndex(of: item) {
        result.remove(at: index)
    }
    return result
}
removingOnce(5, from: [2,5,4,6,7,8,4,5])

//challenge 3
/*
 Write a function that removes all occurrences of a given integer from an array of integers. This is the signature of the function:
 */
func removing(_ item: Int, from array: [Int]) -> [Int] {
    var newArr: [Int] = []
    for x in array {
        if x != item {
            newArr.append(x)
        }
    }
    return newArr
}
removing(5, from: [2,5,4,6,7,8,4,5])


//challenge 4
/*
 Arrays have a reversed() method that returns an array holding the same elements as the original array, in reverse order. Write a function that does the same thing, without using reversed().
 */
func reversed(_ array: [Int]) -> [Int] {
    var revArr: [Int] = []
    var res = array
    for _ in res {
        
        let lastElement = res.removeLast()
        revArr.append(lastElement)
    }
    return revArr
}
reversed([1, 2, 3, 4, 5])

func reversed2(_ array: [Int]) -> [Int] {
  var newArray: [Int] = []
  for item in array {
    newArray.insert(item, at: 0)
  }
  return newArray
}
reversed2([1, 2, 3, 4, 5])


//challenge 5
/*
 Write a function that returns the middle element of an array. When array size is even, return the first of the two middle elememnts.
 */
func middle(_ array: [Int]) -> Int? {
    guard !array.isEmpty else {
        print("array is empty")
        return nil
    }
    let middleElement = array.count / 2
    return array[middleElement]
}
print(middle([11, 12, 13, 14, 15])!)


//challenge 6
/*
 Write a function that calculates the minimum and maximum value in an array of integers. Calculate these values yourself; don’t use the methods min and max. Return nil if the given array is empty.
 */
func minMax(of numbers: [Int]) -> (min: Int, max: Int)? {
    var min = 0
    var max = 0
    for i in numbers{
        if i <= min {
            min = i
        } else if i >= max {
            max = i
        }
    }
    return(min, max)
}
minMax(of: [1,2,3,4,5,6])

//challenge 7
/*
 Which of the following are valid statements?
 1. let dict1: [Int, Int] = [:]         not valid
 2. let dict2 = [:]                     valid no not valid as it's type must be explicit
 3. let dict3: [Int: Int] = [:]         valid
 For the next four statements, use the following dictionary:
    let dict4 = ["One": 1, "Two": 2, "Three": 3]
 4. dict4[1]                error
 5. dict4["One"]            1
 6. dict4["Zero"] = 0       error dict4 is a constant
 7. dict4[0] = "Zero"       error as keys are Strings
 
 For the next three statements, use the following dictionary:
 var dict5 = ["NY": "New York", "CA": "California"]
 8. dict5["NY"]                      "New York"
 9. dict5["WA"] = "Washington"      added
 10. dict5["CA"] = nil              key and value removed
 */
let dict4 = ["One": 1, "Two": 2, "Three": 3]
var dict5 = ["NY": "New York", "CA": "California"]
dict5["WA"] = "Washington"

//challenge 8
/*
 Given a dictionary with two-letter state codes as keys, and the full state names as values, write a function that prints all the states with names longer than eight characters. For example, for the dictionary ["NY": "New York", "CA": "California"], the output would be California.
 */
var dict8 = [
    "NY": "New York",
    "CA": "California",
]
func printMoreThan(dictName: [String: String]) {
    for (_, value) in dictName {
      if value.count > 8 {
        print(value)
      }
    }
}
printMoreThan(dictName: dict8)


//challenge 9
/*
 Write a function that combines two dictionaries into one. If a certain key appears in both dictionaries, ignore the pair from the first dictionary. This is the function’s signature:
 */
func merging(_ dict1: [String: String], with dict2: [String: String]) -> [String: String] {
    var newDict = dict1
    for (key, value) in dict2 {
        newDict[key] = value
    }
    return newDict
}
merging(["abc": "efg", "hij": "klm"], with: ["abc": "efg", "xyz": "cvb"])

//challenge 10
/*
 Declare a function occurrencesOfCharacters that calculates which characters occur in a string, as well as how often each of these characters occur. Return the result as a dictionary.
 */
func occurrencesOfCharacters(in text: String) -> [Character: Int] {
    var occur: [Character: Int] = [:]
    for x in text {
        if let counter = occur[x] {
            occur[x] = counter + 1
        } else {
            occur[x] = 1
        }
    }
    return occur
}
print(occurrencesOfCharacters(in: "my name is mahmoud alwakeel"))

//challenge 11
/*
 Write a function that returns true if all of the values of a dictionary are unique. Use a set to test uniqueness. This is the function signature:
 */
func isInvertible(_ dictionary: [String: Int]) -> Bool {
    var someSet:  Set<Int> = []
    for x in dictionary.values {
        if someSet.contains(x){
            return false
        }
        someSet.insert(x)
    }
    return true
}

isInvertible(["1": 1, "2":2, "3": 3])

//challenge 12
/*
 Given the dictionary:
 var nameTitleLookup: [String: String?] = ["Mary": "Engineer",
 "Patrick": "Intern", "Ray": "Hacker"]
 Set the value of the key "Patrick" to nil and completely remove the key and value for "Ray".
 */
var nameTitleLookup: [String: String?] = [
    "Mary": "Engineer",
    "Patrick": "Intern",
    "Ray": "Hacker",
]

nameTitleLookup.updateValue(nil, forKey: "Patrick")
nameTitleLookup["Ray"] = nil
print(nameTitleLookup)
