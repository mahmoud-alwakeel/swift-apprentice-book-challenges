// challenge 1
/*
 Your first challenge is to write a function that will run a given closure a given number of times.
 The function should run the task closure, times number of times. Use this function
 to print "Swift Apprentice is a great book!" 10 times.
 */
func repeatTask(times: Int, task: () -> Void) {
    for _ in  1...times {
        task()
    }
}
repeatTask(times: 10) {
    print("Swift Apprentice is a great book!")
}


// challenge 2
/*
 In this challenge, you’re going to write a function that you can reuse to create different mathematical sums.
 */
func mathSum(length: Int, series: (Int) -> Int) -> Int {
    var res = 0
    for i in 1...length {
        res += series(i)
    }
    return res
}
mathSum(length: 10) {
    number in
    number * number
}

func fibonacci(_ number: Int) -> Int {
    if number <= 0 {
        return 0
    }
    
    if number == 1 || number == 2 {
        return 1
    }
    
    return fibonacci(number - 1) + fibonacci(number - 2)
}

// challenge 3
/*
 In this final challenge, you will have a list of app names with associated ratings they’ve been given
 First, create a dictionary called averageRatings that will contain a mapping of app names to average ratings. Use forEach to iterate through the appRatings dictionary, then use reduce to calculate the average rating. Store this rating in the averageRatings dictionary. Finally, use filter and map chained together to get a list of the app names whose average rating is greater than 3.
 */
let appRatings = [
  "Calendar Pro": [1, 5, 5, 4, 2, 1, 5, 4],
  "The Messenger": [5, 4, 2, 5, 4, 1, 1, 2],
  "Socialise": [2, 1, 2, 2, 1, 2, 4, 2]
]

var averageRatings:[String: Double] = [:]
appRatings.forEach { (appName, ratings) in
    var totalratings = 0
    for rating in ratings {
        totalratings += rating
    }
    let avgRating = Double(totalratings) / Double(ratings.count)
    averageRatings[appName] = avgRating
}
let greatApps = averageRatings.filter {
    $0.value > 3
}.map {
    $0.key
}
