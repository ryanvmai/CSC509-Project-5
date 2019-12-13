import UIKit

//: # Ryan Mai
//: ## [Project Euler Problem 10](https://projecteuler.net/problem=10)
//: Find the sum of all the primes below two million.

let start = CFAbsoluteTimeGetCurrent()

//variables
var primeNums: [Int] = [Int]()
var currentNum = 2

func isPrimeNum(num: Int, primeNums: [Int]) -> Bool {
    for i in 0..<primeNums.count {
        if num % primeNums[i] == 0 {
            return false
        }
    }
    return true
}

while currentNum < 2_000_000 {
    if(isPrimeNum(num: currentNum, primeNums: primeNums) == true) {
        primeNums.append(currentNum)
    }
    currentNum += 1
}

var sum: Int = 0
for i in 0..<primeNums.count {
    sum += primeNums[i]
}

print(sum)
let diff = CFAbsoluteTimeGetCurrent() - start
print("Took \(diff) seconds")
//Ans: 142,913,828,922
