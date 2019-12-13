import UIKit

/* If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used? */




var wordNum = 5
//print(words[wordNum-1].count)



func getNum(num: Int) -> Int {
    let words = ["One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen", "Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety", "Hundred", "Thousand"]
    //testing
//    for i in 0..<words.count {
//        print("i: \(i), \(words[i])")
//    }
    switch num {
    case 1...20:
        //print(words[num-1])
        return words[num-1].count
    case 20:
        //print(words[19])
        return words[19].count
    case 30:
        //print(words[20])
        return words[20].count
    case 40:
        //print(words[21])
        return words[21].count
    case 50:
        //print(words[22])
        return words[22].count
    case 60:
        //print(words[23])
        return words[23].count
    case 70:
        //print(words[24])
        return words[24].count
    case 80:
        //print(words[25])
        return words[25].count
    case 90:
        //print(words[26])
        return words[26].count
//    case 100:
//        print(words[27])
//        return words[27].count
    case 21...99:
        let num2 = num % 10
        let num1 = num / 10
        //print(words[num1 + 17] + words[num2-1])
        return words[num1 + 17].count + words[num2-1].count
    case 100...999:
        var arrayNums: [Int] = [Int]()
        var i = 0
        var currentNum = num
        while i < 3 {
            let digit = currentNum % 10
            arrayNums.append(digit)
            currentNum /= 10
            i+=1
        }
        arrayNums.reverse()
        if arrayNums[1] == 0 && arrayNums[2] == 0 {
            //print(words[arrayNums[0]-1], words[27])
            return words[arrayNums[0]-1].count + words[27].count
        }
        if arrayNums[2] == 0 {
            //print(words[arrayNums[0]-1], words[27], words[arrayNums[1]+17])
            return words[arrayNums[0]-1].count + words[27].count + words[arrayNums[1]+17].count
        }
        if arrayNums[1] < 2 {
            //print(words[arrayNums[0]-1], words[27], words[(num % 100)-1])
            return words[arrayNums[0]-1].count + words[27].count + words[(num % 100)-1].count
        }
        //print(words[arrayNums[0]-1], words[27],  words[arrayNums[1]+17], words[arrayNums[2]-1])
        return words[arrayNums[0]-1].count + words[27].count + words[arrayNums[1]+17].count + words[arrayNums[2]-1].count
    case 1000:
        return words[28].count
    default:
        return 0
    }
}

var sum = 0
for i in 1...1000 {
    sum += getNum(num: i)
}

print(sum)

