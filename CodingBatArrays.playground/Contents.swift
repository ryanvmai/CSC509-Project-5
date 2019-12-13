import UIKit

//CodingBat Array problems

//makeMiddle
/*
Given an array of ints of even length, return a new array length 2 containing the middle two elements from the original array. The original array will be length 2 or more.
 */
print("makeMiddle")

func makeMiddle(array: [Int]) -> [Int] {
    let length = array.count / 2
    let newArray: [Int] = [array[length-1], array[length]]
    return newArray
}

//tests
let arrayOne = [1 , 2, 3, 4]
let arrayTwo = [7, 3, 4, 1 ,7, 9]
print(makeMiddle(array: arrayOne))
print(makeMiddle(array: arrayTwo))


//has23
/*
Given an int array length 2, return true if it contains a 2 or a 3.
 */
print("has23")

func has23(array: [Int]) -> Bool {
    for i in 0..<array.count {
        if(array[i] == 2 || array[i] == 3) {
            return true
        }
    }
    return false
}

let arrayThree = [2,4] //true
let arrayFour = [2,3] //true
let arrayFive = [3,1] //true
let arraySix = [1, 5] //fase
print(has23(array: arrayThree))
print(has23(array: arrayFour))
print(has23(array: arrayFive))
print(has23(array: arraySix))

//canBalance
/* Given a non-empty array, return true if there is a place to split the array so that the sum of the numbers on one side is equal to the sum of the numbers on the other side. */
print("canBalance")

func canBalance(array: [Int]) -> Bool {
    for i in 0..<array.count {
        var sumLeft = 0
        var sumRight = 0
        if i == array.count-1 {
            break
        }
        for k in 0...i {
            sumLeft += array[k]
        }
        for x in i+1...array.count-1 {
            sumRight = array[x]
        }
        if sumLeft == sumRight {
            return true
        }
    }
    return false
}

let arraySeven = [1, 1, 1, 2, 1]
let arrayEight = [2, 1, 1, 2, 1]
let arrayNine = [10,10]
print(canBalance(array: arraySeven)) //true
print(canBalance(array: arrayEight)) //false
print(canBalance(array: arrayNine)) //true
