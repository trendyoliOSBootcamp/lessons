import UIKit

var str = "24 Nisan 2021"

//Extension

var a = 2.0
var b = 685.0

var c = a / b

// Virgülden sonra 2 basamak için 100 ile =>10 üzeri 2
// Virgülden sonra 3 basamak için 1000 ile => 10 üzeri 3
// Virgülden sonra 4 basamak için 10000 ile => 10 üzeri 4

var d = (c*1000).rounded() // sayıyı yuvarlar
d / 1000

extension Double {
    //fonksiyonlar
    func sayiyiYuvarla(basamak:Int) -> Double {
        let carpan = pow(10.0, Double(basamak))
        return (self*carpan).rounded() / carpan
    }
}

var e = 0.00291970802919708
e.sayiyiYuvarla(basamak: 5)

extension Int {
    func kupAl() -> Int {
        return self * self * self
    }
    
    mutating func kareAl() {
        self = self * self
    }
    
    func kareAlmak() -> Int {
        return self * self
    }
    
    //Return type String
    func cift() -> String {
        if self % 2 == 0 {
            return "Sayı Çifttir"
        } else {
            return "Sayı Tektir"
        }
    }
}

//MARK: ODEV: Girilen sayının asal olup olmadığını bulan bir extension yazınız.

3.kupAl()

var k = 3
k.kareAl()
57.cift()
88.cift()

//Generics
//Esnek ve yeniden kullanılabilir kodlar yazmanıza yardımcı olur. Tipten bağımsız halde işlem yapmanızı sağlar

let cities = ["İstanbul","Ankara","İzmir"]
let numbers = [1,2,3]
let doubleNumbers = [3.14, 5.2, 7.3]

func myCities(cities:[String]) {
    
    for city in cities {
        print(city)
    }
}

func tamSayilar(ts:[Int]) {
    
    for t in ts {
        print(t)
    }
}

func doubleSayilar(ds:[Double]) {
    
    for d in ds {
        print(d)
    }
}

myCities(cities: cities)
tamSayilar(ts: numbers)
doubleSayilar(ds: doubleNumbers)


func herhangiBirArray<T>(array:[T]){
    array.map {
        print($0)
    }
}


herhangiBirArray(array: doubleNumbers)

func addition<T : Numeric>(a:T, b:T) -> T {
    return a + b
}

addition(a: 3, b: 5)
addition(a: 0.45, b: 1.25)
addition(a: Double.pi, b: 2)

//Çarpma işlemi için bir generic örneği yazınız

func findIndex<T: Equatable>(foundItem: T, in items: [T]) -> Int? {
    
    for (index,item) in items.enumerated() {
        if item == foundItem {
            return index
        }
    }
    
    return nil
}

if let result = findIndex(foundItem: "Eskişehir", in: cities) {
    print(result)
}

//MARK: ODEV: İki Parametreli ve Farklı Tipli bir generic örneği yapınız (T,U)


//Class & Struct (Mülakatlarda sorulur)

class Arac {
    var tekerlekSayisi:Int
    var renk:String
    
    init(tekerlekSayisi:Int, renk:String) {
        self.tekerlekSayisi = tekerlekSayisi
        self.renk = renk
    }
}

let bmw = Arac(tekerlekSayisi: 4, renk: "Kırmızı")
bmw.renk
bmw.tekerlekSayisi

let bmw2 = bmw
bmw.renk = "Siyah"
bmw.renk // Siyah
bmw2.renk // Siyah

struct Araba {
    var model:Int
    var yakitTipi:String
}

var araba = Araba(model: 2020, yakitTipi: "Hibrid")
araba.model
araba.yakitTipi

let araba2 = araba
araba.yakitTipi = "Dizel"
araba.yakitTipi // Dizel
araba2.yakitTipi // Hibrid

//Reference Type and Value Type

//Bob elinde bir kağıt bulundurur ve bunda bir telefon numarası yazar.
//Başak bu kağıttan okuyarak o numarayı ezberler.
//Daha sonra Başak bu numarayı kendisi başka bir kağıda yanlış yazsa bile Bob'daki kağıttaki numara değişmez
//Direk Bob daki kağıdı alıp onun üzerinde değişiklik yaparsa reference değişmiş olacak..

//Class başka bir classtan miras alabilir (inheritance)
// Value Type Stack te Reference Type ise Heap te tutulur.
//Bu yüzden Value Type için erişim daha hızlıdır diyebiliriz.

struct Kare {
    var kenarUzunlugu: Int
    func cevreHesapla() -> Int {
        return kenarUzunlugu * 4
    }
    func alanHesaplama() -> Int {
        return kenarUzunlugu * kenarUzunlugu
    }
}

let kare = Kare(kenarUzunlugu: 3)
kare.alanHesaplama()
kare.cevreHesapla()

// Daire için benzerini yazınız

class Vehicle {
    var model: Int = 2021
}

class Arabam: Vehicle {
    var tekerlekSayisi:Int
    var renk:String
    
    init(tekerlekSayisi: Int, renk: String) {
        self.tekerlekSayisi = tekerlekSayisi
        self.renk = renk
    }
}

let arabam = Arabam(tekerlekSayisi: 4, renk: "Petrol Mavisi")
arabam.tekerlekSayisi
arabam.renk
arabam.model

//İkisi içinde Protocoller kullanılabilir
//İkisi içinde Genericler kullanılabilir
//İkisi içinde extension kullanılabilir

//Class a has olan miras alma
//Struct için init zorunlu değildir

//Protocols
// Method, property taslak olarak tanımlayabileceğimiz yapılara denir.
// Protocol Oriented Programing POP, OOP
//Sözleşme gibidir. Uyulması beklenir

class Game {
    var name:String
    var platform:String
    var genre:String
    
    init(name:String, platform:String, genre:String) {
        self.name = name
        self.platform = platform
        self.genre = genre
    }
}

protocol Oyuncu {
    var name:String { get }
    var alive:Bool { get set}
    var health:Int { get set}
    func shut()
}

//Protocol - Generic birleşimi örnek

//UI componen tanıtımları



