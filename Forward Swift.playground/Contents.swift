import UIKit

//GUARD
var kisi = "John"

func personRecognition(ad:String){
    guard ad == "John" else{
        print("Unknown person")
        return
    }
    print("Unknown person")
}
 
personRecognition(ad: "Selim")


func capitalize(str:String?){
    guard let temp = str, temp.count > 0 else{
        print("str is nil")
        return
    }
    print(temp.uppercased())
}

capitalize(str: "SaliR")



// Do Try Catch

enum Hatalar:Error{
    case sifiraBolunmeHatasi
}

func bolme(s1:Int, s2:Int) throws -> Int {
    if s2 == 0 {
        throw Hatalar.sifiraBolunmeHatasi
    }
    return s1 / s2
}

var s1 = 10
var s2 = 0


do{
    let sonuc = try bolme(s1: 50, s2: 0)
    print(sonuc)
}catch Hatalar.sifiraBolunmeHatasi{
    print("Sayı Sıfıra Bölünemez..")
}

//Alternative
var k1 = 10
var k2 = 2
let sonuc2 = try? bolme(s1: k1, s2: k2)
print(sonuc2)

if sonuc2 == nil {
    print("Hata olustugu icin sonuc nildir")
}else{
    print("Hata yok : \(sonuc2!)")
}

//Thread
print("***************")
let queue = DispatchQueue(label: "etiket", qos: DispatchQoS.userInitiated)
let queue2 = DispatchQueue(label: "etiket2", qos: DispatchQoS.background)


queue.async {
    for i in 1...10{
        print("A: \(i)")
    }
}

queue2.async {
    for i in 100...110{
        print("B: \(i)")
    }
}


for i in 200...210{
    print("Main: \(i)")
}


var gecikmeSaniye:DispatchTimeInterval = .seconds(2)
print(Date())


queue.asyncAfter(deadline: .now()+gecikmeSaniye){
    print(Date())
}


