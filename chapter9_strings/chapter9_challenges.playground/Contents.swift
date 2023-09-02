//challenge 1
/*
 Write a function that takes a string and prints out the count of each character in the string.
 For bonus points, print them ordered by the count of each character. For bonus-bonus points, print it as a nice histogram.
 Hint: You could use # characters to draw the bars.
 */
func countChar(str: String)  {
    var characterCount = [Character: Int]()
    for char in str {
        if char.isLetter {
            if let count = characterCount[char] {
                characterCount[char] = count + 1
            } else {
                characterCount[char] = 1
            }
        }
    }
   
    let sortedCounts = characterCount.sorted {
        $0.value > $1.value
    }
    let maxCount = sortedCounts.first?.value ?? 0

        for (char, count) in sortedCounts {
            let bar = String(repeating: "#", count: Int(Double(count) / Double(maxCount) * 2))
            print("\(char): \(bar) (\(count))")
        }
}
countChar(str: "mahmoud")

//challenge 2
/*
 Write a function that tells you how many words there are in a string. Do it without splitting the string.
 Hint: try iterating through the string yourself.
 */
// from answer i coudn't get it to be honest
func wordCounter(sentence: String) -> Int {
    var count = 0
    var inWord = false
    
    for char in sentence {
        if char == " " {
            if inWord {
                count += 1
            }
            inWord = false
        } else {
            inWord = true
        }
    }
    if inWord {
        count += 1
    }
    return count
}
// We need to add 1 to count the final word if there was at least 1 character
let wordCount = wordCounter(sentence: "The quick brown fox jumps over the lazy dog")
print(wordCount)


//challenge 3
/*
 Write a function that takes a string which looks like "Galloway, Matt" and returns one which looks like "Matt Galloway", i.e., the string goes from "<LAST_NAME>, <FIRST_NAME>" to "<FIRST_NAME> <LAST_NAME>".
 */
func nameFormater(fullName: String) -> String {
    
}

//challenge 4
/*
 
 */


//challenge 5
/*
 
 */
