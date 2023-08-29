// creating an array:
let evenNums = [2, 4, 6, 8]

//Because the compiler isn’t able to infer a type of empty array you need to use a type annotation to make the type explicit:
var subscribers: [String] = []


// example of a mini game :
var players = ["weka", "aly", "ahmed", "hassan"]
print(players.isEmpty)

if players.count < 2 {
    print("We need at least 2 players to start the agme")
} else {
    print("let's start")
}

var currentPlayer  = players.first
// remember optional binding from last chapter
if let currentPlayer = currentPlayer {
    print("\(currentPlayer) will start")
}


// here currentPlayer is realized as an optional as the array may be empty and the print statement gives a warning to suppress the warning we simply add (as Any)
print(currentPlayer as Any)
// different ways for displaying data from array
print(players.last as Any)
currentPlayer = players.min()
print(currentPlayer as Any)


// array slice
let arraySlice = players[1...2]
print(arraySlice[1], arraySlice[2])


// new array from the initial array
let upComingPlayers = Array(players[2...3])
print(upComingPlayers[0], upComingPlayers[1])


// checking for an element in an array
func isEleminated(player: String) -> Bool {
    !players.contains(player)
}
print(isEleminated(player: "weka"))
players[0...2].contains("ahmed")

// appending players

players.append("mariam")
players += ["esraa", "malak"]

// Inserting elements
players.insert("mohamed", at: 5)

print(players)

var removedPlayer = players.removeLast()
print("\(removedPlayer) was removed")

var cheatingPLayer = players.remove(at: 3)
print("\(cheatingPLayer) was removed")

// updating elements
players[3] = "heba"
print(players)


players[1...3] = ["donna", "hady", "ziad", "fady"]
print(players)

players.swapAt(1, 3)
print(players)

players.sort()
print(players)

for player in players {
    print(player)
}

for (index, player) in players.enumerated() {
    print("\(index + 1). \(player)")
}


let scores = [2, 2, 8, 6]
func sumOfElements(in array: [Int]) -> Int {
    var sum = 0
    for num in array {
        sum += num
    }
    return sum
}


// Dictionaries

// instead of mapping players to their scores we can use dictionaries
var playerAndScore = ["weka": 5, "aly": 7, "esraa": 3, "ziad": 2]
print(playerAndScore)

print(playerAndScore["aly"]!) // ! as it'soptional

var bobData = [
  "name": "Bob",
  "profession": "Card Player",
  "country": "USA",
  "city": "San Francisco",
  "state": "CA",
]
// updateValue(_:forKey:) replaces the value of the given key with the new value and returns the old value.
bobData.updateValue("bobby", forKey: "namee")
//If the key doesn’t exist, this method will add a new pair and return nil.
print(bobData)
bobData["profession"] = "mailman"

//Iterating through dictionaries
for(player, score) in playerAndScore {
    print("\(player) - \(score)")
}
// over the keys only
for player in playerAndScore.keys {
    print(player, "", terminator: "")
}


// SETS

var explicitSet: Set<Int> = [1, 2, 3, 4]


// we can let the compiler infer the element type like so:
var someSet = Set([1,2,4,5,1])
print(someSet)
let removedElement = someSet.remove(1)
print(someSet)
print(someSet.contains(1))
print(explicitSet.contains(2))
