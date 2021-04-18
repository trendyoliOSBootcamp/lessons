import UIKit

var str = "Hello, playground"

str = "Merhaba arkadaşlar"
print(str)

let _ = "deneme"
//let ? = "merhaba"
let çağlar = "kerim"
let 🐶 = "Köpek"
let 🐮 = "Süt"
let 🚀 = "Roket"
let π = 3.14

let icon = "\u{2764}" //"\u{062A}" //"\u{1f44d}"

let x : String = "2"
let a : Double = 5

print("Merhaba ben Swift \(a) kullanıyorum")

let y : Character = "y"
let z : Character = "z"

// tek satır yorumlarda kullanılır
/*
 
 Çoklu satır yorumlarda
 kullanılır
 
 name:String
 lastName:String
 address:String?
 
 */

let name : String?
name = "Kerim"
print(name ?? "-") // !

name?.count

var isim = "Merhaba"

for item in isim {
    print(item)
}

isim.first
isim.last

var x1 = 3
let x2 = 4.2

String(x1)
print("Merhaba \(x1)")


//If else
var version = 13
let myVersion = 5

if version > 13 {
    print("SwiftUI kullanılabilir")
} else if version == 12 {
    print("Az biraz daha beklemelisin")
} else {
    print("Sen hangi çağda yaşıyorsun dostum!")
}

// Ternary if
//version == DEGER ? DOGRU ISE ALACAGI DEGER : YANLIS ISE ALACAGI DEGER

//willSet, didSet
var myValue = 3 {
    willSet {
        print("Yeni değerim \(newValue) Eski değerim \(myValue)")
    }
    
    didSet {
        print("Yeni değerim \(myValue) eski değerim \(oldValue)")
    }
}

myValue = 6


//tuples
let tuples = ("1",2)
print(tuples.0)
print(tuples.1)

//İsimli Tuples
let namesTuples = (first: 1, middle: "Ali", last: 3)
namesTuples.middle

let coord = (x: 3, y: 5)
coord.x
coord.y

//Sonradan değerlerini belirleme
var numberTuples : (optionalFirst: Int?, middle: String, last: Int)?
numberTuples = (nil, "Başak", last: 23)

//Soru 1: Merkezi (0,0) radius: 1 olan birim çemberi tanımlayınız
typealias Circle = (center: (x:CGFloat, y:CGFloat), radius:CGFloat)

let unitCircle : Circle = ((0.0, 0.0), 1)

var a1 = 3
var b1 = 5
var c1 = 2
var d1 = 7


(a1,b1,c1, d1) = (b1,a1, d1, c1)

print(a1)

//Functons
func sayHi() {
    print("Merhaba")
}

func sum(k: Int, l: Int) {
    print(k + l)
}

sayHi()
sum(k: 3, l: 4)

func multiply(x: Int, y: Int) -> Int {
    return x * y
}


multiply(x: 2, y: 5)

//func parse() -> (first, last)

// Girilen tarihi tarih ve saatini ayrı veren bir fonksiyon yazın (tuples kullanalım)

//Computed Properties ... (Get set)
var pi = 3.14

class Circle2 {
    
    var radius = 0.0
    
    var perimeter: Double {
        get {
            2 * pi * radius
        }
        set {
            radius = newValue / (pi*2)
        }
    }
}

let circle = Circle2()
circle.radius = 1
print(circle.perimeter)
circle.perimeter = 14
print(circle.radius)


//Split
let startDate = "23:51"

let dateArray = startDate.components(separatedBy: ":")

let text = "KERİM"
text.uppercased()

//Boolean
let ax = true

if ax {
    
} else {
    
}


//Array
var stringArray: [String] = []
var string2Array = [String]()
var string3Array = Array<String>()
stringArray.append("ahmet")
print(stringArray)

var string4Array = Array(repeating: "Ali", count: 3)

let matris = [
    [1,2,3],
    [4,5,6]
]



//cities.remove(at: 2)
//cities.removeAll()

//cities.sorted()

var numberArray = [1,2,3]
numberArray.max()
numberArray.min()
var cities = ["İzmir","Edirne","Eskişehir"]

let numberAndCities = zip(numberArray, cities)
print(numberAndCities)

//switch case tuples
let switchTuple = (firstCase: true, secondCase: false)

/*switch switchTuple {
case (true, false):
    //do something
case (true, true):
    //do something
case (false, true):
    //do something
case (false, false):
    //Do something
}*/


//SET (unordered) -- ordered Set
var colors = Set<String>()

var myColors: Set<String> = ["Mavi","Siyah","Yeşil", "Mavi"]
//Mycolors count soruldu
myColors.count

var animals: Set<String> = ["Kedi", "Jaguar", "Panda","Kartal"]
var cars: Set<String> = ["Kartal","Bmw","Panda","Audi"]
let myCars: Set<String> = ["Kartal", "Panda"]

//Evrensel küme


//Kesişim (Intersection)
let intersect1 = animals.intersection(cars)
let intersect2 = cars.intersection(animals)

//Birleşim (Union)
let union1 = animals.union(cars)
union1.count

let union2 = cars.union(animals)
union2.count

//Fark (?) symetticdifference
let sd1 = animals.symmetricDifference(cars) //Kedi, Jaguar, Bmw, Audi
let sd2 = cars.symmetricDifference(animals)

let sub1 = animals.subtracting(cars)
let sub2 = cars.subtracting(animals)

let isSubSet1 = myCars.isSubset(of: cars)
let isSubSet2 = myCars.isSubset(of: animals)

//Dictionary (unordered) -- ordered Dictionary (5.4)
var hayvanlar1 : Dictionary<String,String> = Dictionary<String,String>()

var hayvanlar2 = [String: String]()
var hayvanlar3 : [String:String] = [:]

var hayvanlar : [String:String] = ["Karabaş":"Köpek", "Cici Kuş":"Papağan", "Limon":"Kedi"]
hayvanlar["Kedi"]

for hayvan in hayvanlar.keys {
    print(hayvan)
}

hayvanlar.updateValue("aaa", forKey: "")


hayvanlar["Karabaş"] = "At"
print(hayvanlar)

//Anyhashable
let object: Set<AnyHashable> = [ 1, "asd"]

// Dictionary AnyHashable
let description : [AnyHashable: Any] = [

    42 : "an Int",
    ["a", "b"] as Set :  "a set of strings"

]

print(description[42]!)

//Inout
func updateValue(value:inout Int) {
    value += 1
}
 
func doubleInPlace(number: inout Int) {
    number *= 2
}

var myNum = 10
doubleInPlace(number: &myNum)
print(myNum)

//Variadic
func sum2(w:Int, e:Int, m: Int, n: Int) -> Int {
    return w + e
}
sum2(w: 2, e: 3, m:6, n: 7)

func sum3(numbers:Int ...) -> Int {
    return numbers.reduce(0, +)
}

sum3(numbers: 1,2,3,4,5) // (n*(n+1)) / 2

//Closures (blocks, lambdas denk geliyor)
//() -> (), () -> Void
let merhaba = {
    print("Merhaba")
}

merhaba()
//(Int,Int) -> Int
let add = { (x:Int, y:Int) -> Int in
    return x + y
}

add(2,3)

let divide = { (x:Int, y:Int) throws -> Int in
    if y == 0 {
        print("....")
    }
    return x / y
}


/***
 ÖDEVLER
 1- Elimizde sadece harflerden oluşan (noktalama işareti veya sayılar yok) uzun stringler olsun. Bu stringlerin içinde bazı hafrflerin tekrar edeceğini düşünün. Mesela 'a ' harfi 20 farklı yerde geçiyor. Bir fonksiyon ile verilen parametre değerine eşit ve daha fazla bulunan harfler silinecektir. Sonra geriye kalan string ekrana yazdırılacaktır.
 
 Örnek string: "aaba kouq bux"
 Tekrar sayısı 2 verildiğinde : a,b,u silinmeli ve ekrana "koq x" yazmalı
 Tekrar sayısı 3 verildiğinde : a silinmeli ve ekrana "b kouq bux"
 tekrar sayısı 4 verildiğinde  :  hiç bir harf silinmemeli aynı stringi yazmalı
 
 String ve tekrar sayısını parametre olarak alsın
 
 2 - Elimizde uzun bir cümle olsun, Bazı kelimeler tekrar edecek bir cümle düşünün. İstediğimiz ise, hangi kelimeden kaç tane kullanıldığını bulmanız.
 string = "merhaba nasılsınız . iyiyim siz nasılsınız . bende iyiyim. "
 
 Project Euler 4,5,6. sorular ödeviniz. Haftaya Cumartesi (24 Nisan)
 - Leetcode burdan hesap açılacak.. Swift ile soru çözümlerine başlanacak
 - Hackerrank " "
 - Exercism 
 
 */
