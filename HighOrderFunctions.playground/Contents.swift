import UIKit

var str = "Hello, playground"


//map,filter, flatmap, reduce, sorted

//MAP
let numbers = [ 1,2,3,4,5]

var doubleNumbers = [Int]()

for number in numbers {
    doubleNumbers.append(number * 2)
}

print(doubleNumbers)

doubleNumbers = numbers.map({ (number) -> Int in
    return number * 2
})

let newNumbers = numbers.map { $0 * 2 }
print(newNumbers)

var developer = [String: String]()
developer["name"] = "Ata"
developer["age"] = "27"
developer["city"] = "İzmir"

let keys = developer.map { $0.key }
let values = developer.map { $0.value }

print(keys)
print(values)


//Compact Map

let nums = [1,2,3,nil,5,nil]

/*let yeni = nums.map { (number) -> Int? in
    
    if let number = number {
        return number * 2
    } else { return nil }
}

print(yeni)
*/

//MAP vs COMPACT MAP
let yeni = nums.compactMap { $0 != nil ? $0! * 2 : nil}
print(yeni)


//FLATMAP
let cities = [["İzmir", "İstanbul", "Ankara"],["Antalya","Mersin"],["Van","Ağrı"], ["Van1","Ağrı1", "A", "B"]]

var allCities = [String]()

for city in cities {
    allCities.append(contentsOf: city)
}


print(allCities)

allCities = cities.flatMap{$0}

print(allCities)

// Filter, Reduce, Sorted ...
