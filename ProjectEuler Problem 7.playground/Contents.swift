//Ryan Mai
//https://projecteuler.net/problem=7
//By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
//What is the 10 001st prime number?

//Identifying prime numbers:
var primeNums: [Int] = [Int]()
var counter = 0
var finalNum = 100001
var currentNum = 1

//Determins if the number is a prime number
func isPrimeNum(num: Int) -> Bool {
    var counter = 0
    for i in 1...num {
        if num % i == 0 {
            counter += 1
        }
    }
    if counter == 2 {
        return true
    }
    return false
}

while counter < finalNum {
    if(isPrimeNum(num: currentNum) == true) {
        primeNums.append(currentNum)
        counter += 1
    }
    currentNum += 1
}

print(counter)
print(primeNums.count)
print(primeNums.last!)
