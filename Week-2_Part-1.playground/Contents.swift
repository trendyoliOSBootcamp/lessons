import UIKit

var str = "23 NİSAN, ULUSAL EGEMENLİK ve ÇOCUK BAYRAMI KUTLU OLSUN"

//23 Nisan Ders Planı
//Closures
/*
 Closure için ismi olmayan, parametre alıp geriye değer döndürebilen, bir değişkene atanabilen,
 Bir fonksiyona ise parametre olarak geçilebilen kod bloğudur.
 */
//() ->()
let sayHi = {
    print("Merhaba")
}
sayHi()

//Biraz değiştirip isim parametresi alan bir closure
let sayHi2: (String) -> () = { name in
    print("Merhaba \(name)")
}
sayHi2("Başak")

//Birden fazla parametre alan
let compare : (Int, Int) -> Bool = { (x,y) in
    return x < y
}

compare(6,5)

//(Int,Int) -> (Int) dönen bir closure örneği yazınız.
let sum : (Int,Int) -> Int = { (x,y) in
    return x + y
}
sum(2,5)

let names = ["Beyza","Murat","Başak","Ata", "Yavuz"]

let sortedNames = names.sorted { (x:String, y:String) -> Bool in
    return x > y
}

let sortedNames2 = names.sorted { (x, y) -> Bool in
    return x < y
}

let sortedNames3 = names.sorted { (x, y) in
    return x < y
}

let sortedNames4 = names.sorted {
    $0 < $1
}

let sortedNames5 = names.sorted(by: >)

//Bir fonksiyona parametre olarak closure verme
func myFunction(myClosure: () -> Void) {
    print("Myfunction start...")
    myClosure()
    print("Myfunction end...")
}

let exampleClosure = {
    print("MyClosure run...")
}

myFunction(myClosure: exampleClosure)

func buy() -> (String) -> Void {
    return {
        print("\($0) satın aldım")
    }
}

func sell(price:Int) -> (Int) -> Void {
    return {
        print("\($0 - price)")
    }
}

let sellResult: Void = sell(price: 23)(12)

let result = buy()
result("zeytin")

//Completion Handler
/**
 Muhtemelen en fazla kullanacağınız closure türlerindendir.
 HTTP gibi uzun bir işlem yapmak istediğinizi varsayalım.
 İsteğin tamamlanmasından hemen sonra bir şeyler yapmak istiyorsunuz.
 Ancak, sürecin devamı edip etmediğini birden çok kez kontrol etmek sizin için maliyetli olacaktır.
 Bu noktada işinizi completion handler ile çözebilirsiniz.
 completion handler, uzun işlem tamamlanır tamamlanmaz geri çağıran bir closure dır.
 */

let handler : (Data?, URLResponse?, Error?) -> () = { data, response, error in
    print(String(data: data!, encoding: .utf8)!)
}

let url = "https://www.trendyol.com"
let myUrl = URL(string: url)

/*let task = URLSession.shared.dataTask(with: myUrl!, completionHandler: handler)
task.resume()*/

//Daha Kısa
/*let task: Void = URLSession.shared.dataTask(with: myUrl!) { data, response, error in
    print(String(data: data!, encoding: .utf8)!)
}.resume()*/

/**
 
 non - escaping vs @escaping
 
 - non -escaping closures sadece kendi blogunda çalışabilir, blok dışında çalışmaz.
 non-escaping kullanıyorsak compiler bilir ki bu kod bloğu dışında bu closure çalışmayacak.
 - escaping ise bunun tersi şeklinde çalışır. Başka yerde de çağırmak isterseniz @escaping kullanmalısınız.
 Swift de non-escaping default olarak tanımlıdır. Bu yüzden yazmasanızda swift onu algılar. Eğer başka yerde kullanacaksanız @escaping yazmayı unutmamalısınız
 - non -escaping fonksiyon işlevini bitirdikten sonra artık closure memory de tutulmaz

 */

//Enums
//Oyun yazılımcısı örneğin Hareket alanı tanımlayalım

//Enum genel tanım
enum Direction {
    case right
    case left
    case top
    case down
}

//tek case ile tanımlama
enum Direction2 {
    case right, left, top, down
}

//Kullanım örnekleri
let leftSide = Direction.left
let rightSide = Direction.right
let back = Direction.left

let updown : Direction = .down

enum Numbers : Int {
    case ali = 1, veli, alperen, kerim, Five
}

let five = Numbers.Five

print(five.rawValue)

enum Hata: Error {
    case sunucuHatasi(sebep:String)
    case kullaniciHatasi(sebep:String)
}

let hata = Hata.kullaniciHatasi(sebep: "Kullanıcı hatasıdır!")

print(hata)

enum Cities: String {
    case İzmir = "Boyoz"
    case Edirne = "Ciğer"
    case Balikesir = "Höşmerim"
    case Muğla = "Deniz, Kum, Güneş"
    case Aydin = "incir"
}

let city = Cities.Aydin
print(city.rawValue)

//Bir fonksiyona parametre olarak verilebilir
func move(direction: Direction) {
    print("my character moving to \(direction)")
}

move(direction: .down)
let direction = Direction.right
switch direction {
case .down:
    print("down")
case .left:
    print("left")
case .right:
    print("right")
case .top:
    print("top")
}
//Oyun için dönme açıları ile ilgili bir switch case yapısı deneyiniz

//Nested enums
enum Orchesta {
    
    enum Keyboards {
        case piano
        case synth
    }
    
    enum Strings {
        case violin
        case cello
    }
    
    enum Percussion {
        case drum
        case bell
    }
}

let instrument1 = Orchesta.Keyboards.piano
let instrument2 = Orchesta.Percussion.bell
let instrument3 = Orchesta.Strings.cello

//Optionals
//var text: String? = nil
//var text2 : String = text!
var number: Int?
number = 5

if let mySafeNumber = number {
    print("number: \(mySafeNumber)")
} else {
    print("number was not assigned a value")
}

var sehir:String?

print(sehir ?? "-")

if let il = sehir {
    print("İlin ismi: \(il)")
} else {
    print("Değer Okunamadı")
}

struct Member {
    var name:String?
    var email:String?
    var password:Int?
}

var member = Member(name: "Kerim", email: "kerim.caglarr@gmail.com", password: nil)

func getMember(member:Member) {

    if let name = member.name, let email = member.email, let password = member.password {
        print(name)
        print(email)
        print(password)
    } else {
        print("Verileriniz Okunamadı")
    }
}

getMember(member: member)

//guard let ... else { .... }

func uyeGetir(uye: Member) {
    guard let name = uye.name, let email = uye.email, let password = uye.password else {
        print("Verileriniz Okunamadı")
        return
    }
    
    print(name)
    print(email)
    print(password)
}

let uye = Member(name: "Görkem", email: "gultekingorkem1@gmail.com", password: nil)

uyeGetir(uye: uye)

//ÖDEV: If let - guard let kullanım tercihlerini neye göre belirlersiniz?


//Error Handling (try , try?, try! )

enum NameError: Error {
    case tooLong //tooShort
    case tooLong2
}

func nameValidation(name:String) throws -> String {
    if name.count > 8 {
        throw NameError.tooLong
    } else {
        return name
    }
}

func surnameValidation(surname:String) throws -> String {
    if surname.count > 8 {
        throw NameError.tooLong2
    } else {
        return surname
    }
}

//try: Hata varsa ben onu yakalarım arkadaş. Do catch yapısı ister
do {
    _ = try nameValidation(name: "Hüseyin")
    _ = try surnameValidation(surname: "Denemememem")
    print("Name is valid...")
} catch NameError.tooLong {
    print("Name is too long.. Use a short name please")
} catch NameError.tooLong2 {
    print("Surname is too long.. Use a short name please")
}

//try? : Evet bir hata verebilir, do catch kullanmaya gerek yoktur

if let name = try? nameValidation(name: "Hüseyin Murat") {
    print("Name is Valid 2")
} else {
    print("Name is too long 2")
}

//try! : Ben hataları hiç sevmem hata yakalarsam bozulurum..
// do or die yaklaşımıyla hata yakalar.

let result2 = try! nameValidation(name: "Hüseyin")

//Hesap makinası similasyon
var screen = "0.0"

enum CalculateError:Error {
    case nanError // 0 bölü 0 hatası
    case InfError // 0 a bölme hatası
    case baseCase // Bolunen 0 ise göstereceğim
}

func bolme(bolunen:Double, bolen:Double) throws -> Double {
    
    guard bolunen != 0 || bolen != 0 else {
        print("Nan hatası meydana geldi")
        throw CalculateError.nanError
    }
    
    guard bolunen != 0 else {
        print("Base case")
        throw CalculateError.baseCase
    }
    
    guard bolen != 0 else {
        print("0 a bölme hatası")
        throw CalculateError.InfError
    }
    
    return bolunen / bolen
}

do {
    try bolme(bolunen: 0, bolen: 6)
} catch CalculateError.nanError {
    screen = "Nan"
} catch CalculateError.InfError {
    screen = "Inf Error"
} catch CalculateError.baseCase {
    screen = "0"
}
