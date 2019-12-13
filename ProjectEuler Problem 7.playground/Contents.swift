import UIKit
//: # Ryan Mai
//: ## [Project Euler Problem 7](https://projecteuler.net/problem=7)
//: By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
//: What is the 10,001st prime number?

//start time https://www.hackingwithswift.com/example-code/system/measuring-execution-speed-using-cfabsolutetimegetcurrent
let start = CFAbsoluteTimeGetCurrent()

//Variables
var primeNums: [Int] = [Int]()
var currentNum = 2 //start at first prime number

//Determins if the number is a prime number
func isPrimeNum(num: Int, primeNums: [Int]) -> Bool {
    for i in 0..<primeNums.count {
        if num % primeNums[i] == 0 {
            return false
        }
    }
    return true
}

//Creating array of 10,001 prime numbers
while (primeNums.count) < 10_001  {
    if(isPrimeNum(num: currentNum, primeNums: primeNums) == true) {
        primeNums.append(currentNum) //adds number to the array
    }
    currentNum += 1 //increments current number
}

//prints 10,001 prime number
print("10,001st Prime Number: \(primeNums.last!)")

//gets total time for playground
let diff = CFAbsoluteTimeGetCurrent() - start
print("Took \(diff) seconds")
