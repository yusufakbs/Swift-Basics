import UIKit

let stringA = "Hello"

let stringB = String("Hello, how are you ?")

let stringC = """
Hello, how are you?
This is a swift course

I hope it is useful...
"""

print(stringA)
print(stringB)
print(stringC)

//Empty Check

var str1 = ""

if str1.isEmpty{
    print("Empty")
}else{
    print("Not Empty")
}

var str2 = String()

if str2.isEmpty{
    print("Empty")
}else{
    print("Not Empty")
}

//Adding data

let a = 20
let b = 100

let str = "\(a) x \(b)= \(a*b)"
print(str)

//String concatenation

let str4 = "Hello"
let str5 = " World!"

let str6 = str4 + str5
print(str6)

//Number of letters

let str7 = "Hello Swift"

print("\(str7) boyutu : \(str.count)")

//comparison

let str8 = "Hello World"
let str9 = "Merhaba Dünya"

if str8 == str9 {
    print("\(str8) and \(str9) equal")
}else{
    print("\(str8) and \(str9) not equal")
}

//fragmentation

//let str10 = "Hello"
//
//for harf in str10{
//    print(harf,terminator: " ")
//}

// insert() : inserts into a textual expression
// remove() : deleting data from textual expression
// contains() : search within textual expression

var str11 = "Hello World!"
if str11.contains("e"){
    print("True")
}else{
    print("false")
}

str11.insert("+", at: str11.index(str11.startIndex, offsetBy: 4))
print(str11)

str11.remove(at: str11.index(str11.startIndex, offsetBy: 4))
print(str11)


//reverse text

var hrf = "Hello"
var harfler = [Character]()
for harf in hrf {
    print(harf)
    harfler.append(harf)
}

print(harfler)

for i in stride(from: (harfler.count-1), through: 0, by: -1){
    print(harfler[i], terminator: " ")
}





