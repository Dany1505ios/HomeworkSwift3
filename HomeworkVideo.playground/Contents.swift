import Foundation
import UIKit

//MARK: - Homework.1

var dataDownload = true
var userLogb = false
var dataError = true
var networkСonnectionERR = false

if  !dataError && !networkСonnectionERR {
    if dataDownload && userLogb {
        print("show profile")
    } else if dataDownload && !userLogb {
        print("show registration form")
    } else {
        print("skelet ekrans")
    }
    
} else {
    print("что-то пошло не так")
}


//MARK: -Homework.2

let dataDownload1 = true
let userLogg1 = true
let errorData1 = true
let errorNet1 = false

let tupleUser = (x: dataDownload1,y : userLogg1,z: errorData1,f: errorNet1)

switch tupleUser {
case ( true, true,false,false):
    print("Показать профиль пользователя")
case(true, false, false,false):
    print("Показать форму регистрации")
case(_, _, true, _), (_,_,_,true):
    print("Что-то пошло не так")
default:
    print("Показать скелет экрана")
}



let dataAndUser: Void = errorData1 || errorNet1 ? print("Что-то пошло не так ") : dataDownload1 ? userLogg1 ? print("Показать профиль пользователя") : print("Показать форму регистрации") : print("показать скелет экрана")


//MARK: - Homework.3
//1
var arrayHome : [Int] = [1,2,3,4,5,6,7]
let countMassHome = arrayHome.count/2
for i in 0..<countMassHome{
    let littleMas = [arrayHome[i*2], arrayHome[i*2+1]]
    print(littleMas)
}
if arrayHome.count % 2 != 0{
    let lastMas = [arrayHome[arrayHome.count-1]]
    print(lastMas)
}


//2
let arr1 : [Int] = [1,2,3]
let arr2 : [Int] = [4,5,6]

let summM = arr1 + arr2
print(summM)

var copyArr1 = arr1
copyArr1.append(contentsOf: arr2)
print(copyArr1)


//3
var arr3task : [Int] = [1,2,3,4,5,6,7,8,9,10]
// for i in stride(from: arr3task.count-1, through: 0, by: -1) или так. начинаем с последнего элемента чтобы не пропали индексы
for i in (0..<arr3task.count).reversed(){
    if arr3task[i] == 3  || arr3task[i] == 7 || arr3task[i] == 9 {
        arr3task.remove(at: i)
    }
}
print(arr3task)

//4
var arr4task = Array(1...14)
var sumFirstPart = 0
for i in 0..<arr4task.count / 2{
    sumFirstPart += arr4task[i]
}
print(sumFirstPart)


//5

var arr5Task : [Int] = [1,2,-3,4,5,6,-7,8,9,10,11,-12,13,-14]
var counterArr5 = arr5Task.count
var summNegativ = 0
for i in 0..<counterArr5 {
    if arr5Task[i] < 0{
        summNegativ += 1
    }
}
print(summNegativ)

//6
var arr6Task : [Int] = [1,2,-3,4,5,6,-7,8,9,10,11,-12,13,-14]
var counterArr6 = arr5Task.count
for i in (0..<counterArr6).reversed() {
    if arr6Task[i] < 0{
        arr6Task.remove(at: i)
    }
}
print(arr6Task)


//7

var arr7Task : Array<String> = ["один", "два", "три"]

for i in 0 ..< arr7Task.count{
    let bigLetter = (arr7Task[i].prefix(1)).uppercased()
    let anotherPart = String(arr7Task[i].dropFirst(1))
    let bigWord = bigLetter + anotherPart
    arr7Task[i] = bigWord
    
}

print(arr7Task)

//8
//можно в массив
var str8Task = "abcde"
var arr8Task = Array(str8Task)
for i in 0 ..< arr8Task.count {
    print(arr8Task[i])
}
//можно сразу в строку
var str88Task = "abcde"
for char in str88Task {
    print(char)
}

//9
// через array
var str9 = "🇱🇾abcde"
var arr9 = Array(str9)
for i in 0..<arr9.count{
    if i % 2 == 1{
        let bigL9 = Character(String(arr9[i]).uppercased())
        arr9[i] = bigL9
    }
            
}
var resString = String(arr9)
print(resString)

//через идексы

var str99 = "😀abcde"
var resultStr9 = str99

for index in str99.indices {
    var intIndex = str99.distance(from: str99.startIndex, to: index)
    if intIndex % 2 == 1{
        let pos = String(str99[index]).uppercased()
        resultStr9.replaceSubrange(index...index, with: pos)
    }
}
print(resultStr9)


//10

var arr10Task : [Int] = [1,2,3,4,5,6]
var resultEven = 0
var resultOdd = 0
for position in 0..<arr10Task.count {
    if position % 2 == 0{
        resultEven += arr10Task[position]
    } else {
        resultOdd += arr10Task[position]
    }
}
var result10 = Float(resultEven)/Float(resultOdd)
print(result10)
//округление
//print((result10*100).rounded() / 100)
//print(String(format: "%.2f", ))


//11

var arr11Task : [Int] = [123, 456, 789]
var arr11Res = [Int]()
var newNumber = [String]()
for number in 0 ..< arr11Task.count {
    var oneNumber = String(arr11Task[number])
    var arrForNumber = Array(oneNumber)
    for char in (0..<arrForNumber.count).reversed() {
        newNumber.append(String(arrForNumber[char]))
    }
    let reversedStr = newNumber.joined()
    if let revNumber = Int(reversedStr){
        arr11Res.append(revNumber)
    }
    newNumber.removeAll()
}
print(arr11Res)

//через reversed

var arr111Task: [Int] = [123, 456, 789]
var arr111Res = [Int]()

for number in arr111Task {
    let reversedString = String(String(number).reversed())
    if let reversedInt = Int(reversedString) {
        arr111Res.append(reversedInt)
    }
}

print(arr111Res)

//12

var arr12Task = [1,2,3,4,5,6]
var resArray12 = [Int]()
for number in stride(from: 0, to: arr12Task.count, by: 2){
    var strNumber = String(arr12Task[number]) + String(arr12Task[number+1])
    if let intNumber = Int(strNumber){
        resArray12.append(intNumber)
    }
}
print(resArray12)


//13

var str13 = "aaa bbb ccc eee fff"
var arr13 = Array(str13)
var arr13New = [String]()
var resaltArr = [String]()
var smallStr = ""
for i in 0..<arr13.count{
    if arr13[i] != " "{
        smallStr += String(arr13[i])
    } else {
        arr13New.append(smallStr)
        smallStr=""
    }
}
if !smallStr.isEmpty{
    arr13New.append(smallStr)
}
for i in 0..<arr13New.count {
    if i % 2 == 1{
       var newStr = arr13New[i]
        var firstLetter = newStr.prefix(1).uppercased()
        var lastPart = String(newStr.dropFirst())
        var fullWord = firstLetter+lastPart
        arr13New[i] = fullWord
    }
}
print(" \" " + arr13New.joined(separator:" ") + " \" " )


//2 вариант

var str133 = "aaa bbb ccc eee fff"
let words = str133.components(separatedBy: " ")

var resultWords = [String]()
for (index, word) in words.enumerated() {
    if index % 2 == 1 && !word.isEmpty {
        let firstChar = word.prefix(1).uppercased()
        let restOfWord = word.dropFirst()
        resultWords.append(firstChar + restOfWord)
    } else {
        resultWords.append(word)
    }
}

let result133 = resultWords.joined(separator: " ")
print(result133)


//14

var arr14 = [1,2,2,4,4]
for (index, number) in arr14.enumerated() {
    if index<arr14.count-1 && arr14[index] == arr14[index+1] {
        print("есть на индексах \(index) и \(index+1)")
    }
}

// 15
//пузырь
var bigArr15 = [
    [2, 1, 4, 3, 5],
    [3, 5, 2, 4, 1],
    [4, 3, 1, 5, 2],
]
for i in 0..<bigArr15.count{
    var arrSmall15 = bigArr15[i]
    for j in 0..<arrSmall15.count{
        for z in 0..<arrSmall15.count-1 - j {
            if arrSmall15[z] > arrSmall15[z+1] {
                arrSmall15.swapAt(z, z+1)
            }
            
        }
    }
    bigArr15[i] = arrSmall15
    
 
}

print(bigArr15)
        
//timsort
var bigArrN15 = [
    [2, 1, 4, 3, 5],
    [3, 5, 2, 4, 1],
    [4, 3, 1, 5, 2],
]
for i in 0..<bigArrN15.count{
    bigArrN15[i].sort()
}
print(bigArrN15)
        


// 16

var arr16Big = [
    [1,2,3],
    [4,5,6],
    [7,8,9],
]
var summ16 = 0
for i in 0..<arr16Big.count {
    for j in 0..<arr16Big[i].count {
        summ16 += arr16Big[i][j]
    }
}
print(summ16)


//17
var arr17Big =
[
    [
        [11, 12, 13],
        [14, 15, 16],
        [17, 17, 19],
    ],
    [
    [21, 22, 23],
    [24, 25, 26],
    [27, 27, 29],
    ],
    [
        [31, 32, 33],
        [34, 35, 36],
        [37, 37, 39],
    ]

]
var summ17 = 0

for i in arr17Big {
    for j in i {
        for z in j{
            summ17 += z
        }
    }
}
print(summ17)


//18
let dict18 = [
    "firstArray" : [
        11,
        12,
        13,
    ],
    "secondArray" : [
        21,
        22,
        23,
    ],
    "thirdArray" : [
        24,
        25,
        26,
    ],
]

var summ18 = 0
for value in dict18.values {
    for number in value {
        summ18 += number
    }
}
print(summ18)

//19
let dict19 : [String : Any] = [
    "firstDict" : [
        1 : 11,
        2 : 12,
        3 : 13,
    ],
    "secondDict" : [
        1: 21,
        2: 22,
        3: 23,
    ],
    "array" : [
        24,
        25,
        26,
    ],
    
]
var summ19 = 0
for value in dict19.values {
    if let dict = value as? [Int : Int] {
        for number in dict.values {
            summ19 += number
        }
    } else if let array = value as? [Int]{
        for num1 in array {
            summ19 += num1
        }
    }
}
print(summ19)

//20
//1 способ
var bigArr20 = [Any]()
var smallArr = [Int]()
for i in (0...4) {
    for number in (1...3) {
        smallArr.append(number)
    }
    bigArr20.append(smallArr)
    smallArr.removeAll()
}
print(bigArr20)
//2 способ
var bigArr202 = [[Int]]()
for _ in (0..<5){
    bigArr202.append(Array(1...3))
}
print(bigArr202)

//21

var arr21 = [
    [1, 2, 3],
    [4, 5, 6],
    Array(7...9),
    
]
var bigArr = [Int]()
for i in arr21 {
        bigArr.append(contentsOf: i)
}
print(bigArr)

print(Array(arr21.joined()))

//22

var arr22 = [1,2,3,4,5,6,7,8,9]
var arrForDict = [arr22.sorted()[0], arr22.sorted().last!, arr22.reduce(0,+) / arr22.count]
var arrForDictKey = ["min", "max", "avarage"]
var seqq = zip(arrForDictKey, arrForDict)
var dict22 = Dictionary(uniqueKeysWithValues: seqq)
for (k, v) in dict22{
    print(k, v)
}

//

//let text = "apple banana apple orange banana apple"
//let wordsArr = text.components(separatedBy: " ")
//var wordCount : [String : Int ] = [:]
//for word in wordsArr {
//    wordCount[word, default: 0]+=1
//}
//print(wordCount)

//let text = "apple banana apple orange banana apple"
//let arrWord = Array(text.components(separatedBy: " "))
//var empDict : [String:Int] = [:]
//for i in arrWord {
//    if let count = empDict[i] {
//        empDict[i] = count + 1
//    } else {
//        empDict[i] = 1
//    }
//}
//
//print(empDict)


//23

var dict23 = ["min" : -100, "max" : 42]
var arr23 = [Int]()
if let minVal = dict23["min"], let maxVal = dict23["max"]{
    for i in stride(from: minVal, through: maxVal, by: 2) {
        arr23.append(i)
    }
}
print(arr23)
print("nananananab")
