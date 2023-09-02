let str = "wakeel"
for i in str {
    print(i)
}
let strLength = str.count

//let fourthChar = str[2] this will result in error instead we could do this

let cafeNormal = "café"
let cafeCombining = "cafe\u{0301}"

cafeNormal.count     // 4
cafeCombining.count  // 4

cafeNormal.unicodeScalars.count     // 4
cafeCombining.unicodeScalars.count  // 5

for codePoint in cafeCombining.unicodeScalars {
    print(codePoint.value)
}

// indexing strings

let firstIndex = cafeCombining.startIndex
let firstChsr = cafeCombining[firstIndex]

//let lasIndex = cafeCombining.endIndex : This error happens because the endIndex is actually 1 past the end of the string

let lastIndex = cafeCombining.index(before: cafeCombining.endIndex)
let lastChar = cafeCombining[lastIndex]

let fourthIndex = cafeCombining.index(cafeCombining.startIndex, offsetBy: 3)
let fourthChar = cafeCombining[fourthIndex]


// the é in that case is actually made up of multiple code points
fourthChar.unicodeScalars.count
fourthChar.unicodeScalars.forEach { codePoint in
    print(codePoint.value)
}
let equal = cafeNormal == cafeCombining

let str2 = "ahmed"
let backwardName = str2.reversed()
//But what is the type of backwardsName? If you said String, then you would be wrong. It is actually a ReversedCollection<String>.

let secondCharIndex = backwardName.index(backwardName.startIndex, offsetBy: 1)
let secondChar = backwardName[secondCharIndex]

let backwardNameString = String(backwardName)


// raw strings
let raw1 = #"Raw "Noescaping" \(no interpolation) use all the \ you want"#
print(raw1)

let raw2 = ##"Aren’t we "# clever"##
print(raw2)

// What if you want to use interpolation with raw strings. Can you do that?
let can = "we can do thisss"
let raw3 = #"yes we \#(can)"#
print(raw3)


//Substrings
let fullname  = "mahmoud alwakeel"
let spaceIndex = fullname.firstIndex(of: " ")!
let firstName = fullname[fullname.startIndex..<spaceIndex]
print(firstName)
//That last line of code can be rewritten by using an open-ended range:
let firstName2 = fullname[..<spaceIndex]

let lastName = fullname[fullname.index(after: spaceIndex)...] // substring
// Just like with the reversed string, you can force this Substring into a String by doing the following:
let lastNameString = String(lastName)
