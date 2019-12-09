//https://www.weheartswift.com/arrays/

//6.1
//Print the maximum values from `listOfNumbers`
var listOfNumbers = [1, 2, 3, 10, 100]

// your code here
var maxNum: Int = listOfNumbers.first!
for anInt in listOfNumbers {
    if anInt > maxNum {
        maxNum = anInt
    }
}
print(maxNum)

//----
listOfNumbers.removeAll()

//6.2 Odd
//Print all the odd numbers from `listOfNumbers
listOfNumbers = [1, 2, 3, 10, 100]

// your code here
for anInt in listOfNumbers {
    if anInt % 2 != 0 {
        print(anInt)
    }
}

//----
listOfNumbers.removeAll()

//6.3 Sum
//Print the sum of all the numbers from `listOfNumbers`
listOfNumbers = [1, 2, 3, 10, 100]

var sum: Int = 0
for anInt in listOfNumbers {
    sum += anInt
}
print(sum)
