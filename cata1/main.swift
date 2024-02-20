//
//  main.swift
//  cata1
//
//  Created by Abdylda Mamashev on 17/2/24.
//

import Foundation

func fizzBuzzCuckooCheck (_ time: String) -> String {
    let components = time.components(separatedBy: ":")
    
    guard components.count == 2,
          let hours = Int(components[0]),
          let minutes = Int(components[1]) else {
        
        return "invalid time format"
    }
    
    if minutes == 0 {
        return cuckooCall(hours)
    } else if minutes == 30 {
        return "cuckoo"
    } else if minutes % 3 == 0 && minutes % 5 == 0 {
        return "fizzBuzz"
    } else if minutes % 3 == 0 {
        return "fizz"
    } else if minutes % 5 == 0 {
        return "buzz"
    } else {
        return "tick"
    }
}

func cuckooCall(_ hours: Int) -> String {
    let cuckooCount = hours > 12 ? hours - 12 : hours == 0 ? 12 : hours
    return String(repeating: "Cuckoo", count: cuckooCount).trimmingCharacters(in: .whitespaces)
}

print (fizzBuzzCuckooCheck("1:00"))
print (fizzBuzzCuckooCheck("2:30"))
print (fizzBuzzCuckooCheck("3:15"))
print (fizzBuzzCuckooCheck("4:45"))
print (fizzBuzzCuckooCheck("5:05"))
print (fizzBuzzCuckooCheck("6:30"))
print (fizzBuzzCuckooCheck("7:20"))
print (fizzBuzzCuckooCheck("8:40"))
print (fizzBuzzCuckooCheck("9:45"))
print (fizzBuzzCuckooCheck("10:55"))
print (fizzBuzzCuckooCheck("11:59"))
print (fizzBuzzCuckooCheck("12:00"))


print ("Введите время в формате ЧЧ:ММ (например, 12:00): ")

if let input = readLine() {
    let result = fizzBuzzCuckooCheck(input)
    print ("\(result)") }
    else {
        print ("Ошибка чтения кода")
    }
    
    
    
    
