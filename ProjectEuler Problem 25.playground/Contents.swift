import UIKit

//: # Ryan Mai
//: ## [Project Euler Problem 25](https://projecteuler.net/problem=25)
//:The Fibonacci sequence is defined by the recurrence relation:
//:Fn = Fn−1 + Fn−2, where F1 = 1 and F2 = 1.

class Number {
    var number: Int = 0
    init(number: Int) {
        self.number = number
    }
    
    func loadNums() -> [Int] {
        var arrayNums: [Int] = [Int]()
        var number: Int = self.number
        while number > 0 {
            let digit = number % 10
            arrayNums.append(digit)
            number /= 10
        }
        arrayNums.reverse()
        return arrayNums
    }
    
//    func addNums(firstArrayNums: [Int], secondArrayNums: [Int]) {
//        //techiniques of borrowing
//        if firstArrayNums.count == secondArrayNums.count {
//            for i in 100...2 {
//
//            }
//        }
//
//
//    }
    
    func printNums(_ arrayNums: [Int]) {
        for digit in arrayNums {
            print(digit)
        }
    }
}

func addNums(firstArray: [Int], secondArray: [Int]) -> Number {
    
}

var fibonacciSequence: [Number] = [Number]()

fibonacciSequence.append(Number(number: 1))
fibonacciSequence.append(Number(number: 1))



var num: Number = Number(number: 12345)
num.printNums(num.loadNums())



























//
//Create the array
//var fibonacciSequence: [Int] = [Int]()
//
//func findNextNum(array: [Int]) -> Int {
//    return array[array.count-1] + array[array.count-2]
//}
//
////load in first values
//fibonacciSequence.append(1)
//fibonacciSequence.append(1)
//
//repeat {
//    fibonacciSequence.append(findNextNum(array: fibonacciSequence))
//} while fibonacciSequence.last! < 1000
//
////for i in 0..<fibonacciSequence.count {
////    print(fibonacciSequence[i])
////}
//
//print(fibonacciSequence.count)
