// creating a closure

//var multiplyClosure: (Int, Int) -> Int

// like functions we can remove return keyword if it's a single line and we can use type inference to remove Int and we can remove also the parameter list but in a simple closure
var multiplyClosure = { (a: Int, b: Int) -> Int in
    return a * b
}

let result = multiplyClosure(4, 2)


func operateOnNums(_ a: Int, _ b: Int, operation: (Int, Int) -> Int) -> Int {
    let res = operation(a, b)
    print(res)
    return res
}

let addClosure = { (a: Int, b: Int) in
    return a + b
    
}

operateOnNums(4, 2, operation: addClosure)


// closure with no return value
let voidClosure: () -> Void = {
    print("this is a closure with no return value")
}
voidClosure()


func countingClosure() -> () -> Int {
    var counter = 0
    let incrementCounter: () -> Int = {
        counter += 1
        return counter
    }
    return incrementCounter
}
// The two counters created by the function are mutually exclusive and count independently
let counter1 = countingClosure()
let counter2 = countingClosure()

counter1()
counter1()
counter2()
counter2()
counter2()


let names = ["ZZZZZZ", "BB", "A", "CCCC", "EEEEE"]
names.sorted()

names.sorted {
    return $0.count > $1.count
}


//iterating over collections with closures

let values = [1, 2, 3, 4, 5]
values.forEach {
    print("\($0): \($0*$0)")
}


// filter
var prices = [1.5, 2.5, 3.5, 8.5]
let largePrices = prices.filter {
    $0 > 5
}
// mapping
let salePrices = prices.map {
    $0 * 0.9
}

// reduce
// the 0 inside brackets is the initial value
let sum = prices.reduce(0) {
    $0 + $1
}

let stock = [1.5: 5, 10: 2, 4.99: 20, 2.30: 5, 8.19: 30]
let stockSum = stock.reduce(0) {
    $0 + $1.key * Double($1.value)
}

//let farmAnimals = ["#": 5, "$": 10, "%": 50, "!": 1]
//let allAnimals = farmAnimals.reduce(into: []) {
//  (result, this: (key: String, value: Int)) in
//  for _ in 0 ..< this.value {
//    result.append(this.key)
//  }
//}

let removeFirst = prices.dropFirst()
let removeFirstTwo = prices.dropFirst(2)

let removeLast = prices.dropLast()
let removeLastTwo = prices.dropLast(2)



// want to calculate the first ten prime numbers. To do this in an imperative way you might do something like this:
func isPrime(_ number: Int) -> Bool {
    if number == 1 {return false}
    if number == 2 || number == 3 {return true}
    
    for i in 2...Int(Double(number).squareRoot()) {
        if number % i == 0 { return false }
      }
    
    return true
}

var primes: [Int] = []
var i = 1
while primes.count < 10 {
    if isPrime(i) {
        primes.append(i)
    }
    i += 1
}
isPrime(10)
primes.forEach {
    print($0)
}
// by the way this is not a good function

// we could rewrite the code above like this:

let primes2 = (1...).lazy
    .filter { isPrime($0) }
    .prefix(10)
primes2.forEach { print($0)}


let names2 = ["ZZZZZZ", "BB", "A", "CCCC", "EEEEE"]

names2.sorted { (name1, name2) -> Bool in
    return name1.count > name2.count
}
