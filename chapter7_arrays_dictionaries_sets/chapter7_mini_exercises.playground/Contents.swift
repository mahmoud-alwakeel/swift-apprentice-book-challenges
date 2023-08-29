//Mini-exercise 1
/*
 Use firstIndex(of:) to determine the position of the element "Dan" in players.
 */
var players = ["Alice", "Bob", "Cindy", "Dan"]
players.firstIndex(of: "Dan")

//Mini-exercise 2
/*
 Write a for-in loop that prints the players’ names and scores.
 */
let scores = [2, 2, 8, 6]
for(index, player) in players.enumerated() {
    let score = scores[index]
    print("\(player) score is \(score)")
}

//Mini-exercise 3
/*
 Write a function that prints a given player’s city and state.
 */
var bobData = [
  "name": "Bob",
  "profession": "Card Player",
  "country": "USA",
  "city": "San Francisco",
  "state": "CA",
]
func getCityAndState(map: [String: String]) {
    if let state = map["state"] {
        print("player's state is \(state)")
    } else {
        print("No state found")
    }
    if let city = map["city"] {
        print("player's city is \(city)")
    } else {
        print("No city found")
    }
}
getCityAndState(map: bobData)

b
