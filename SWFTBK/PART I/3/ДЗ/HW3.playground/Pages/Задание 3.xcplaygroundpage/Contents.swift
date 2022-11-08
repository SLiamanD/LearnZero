import Foundation
import Darwin

/*:
 ### Задание 3
 
 3.1 Определите квартал в котором вы родились, используя switch.
 */

let dayOfBirth = 01
let monthOfBirth = 01
let yearOfBirth = 2000
let secondsInMunute = 60
let minutesInHours = 60
let hoursInDay = 24
let daysInMonth = 30
let monthInYear = 12
let toDay = 6
let thisMonth = 11
let thisYear = 2022
let yearsFromMyBithDay = thisYear - yearOfBirth
let monthFromMyBithday = (yearsFromMyBithDay * 12) + (thisMonth - monthOfBirth)
let daysFromMyBithDay = (monthFromMyBithday * 30) + (toDay - dayOfBirth)
let weeksFromMyBithDay = daysFromMyBithDay / 7
let hoursFromMyBithday = daysFromMyBithDay * 24
let minutesFromMyBithDay = hoursFromMyBithday * 60
let secondFromMyBithDay = minutesFromMyBithDay * 60


enum Quarter:String {
    case first = "первый квартал"
    case second = "второй квартал"
    case third = "третий квартал"
    case fouth = "четвертый квартал"
}

let kvartal:Quarter

switch monthOfBirth {
case 1...3:
    kvartal = Quarter.first
    print("я родился в \(kvartal.rawValue)")
case 4...6:
    kvartal = Quarter.second
    print("я родился в \(kvartal.rawValue)")
case 7...9:
    kvartal = Quarter.third
    print("я родился в \(kvartal.rawValue)")
case 10...12:
    kvartal = Quarter.fouth
    print("я родился в \(kvartal.rawValue)")
default:
    break
}





//: [Ранее: Задание 2](@previous)  |  задание 3 из 6  |  [Далее: Задание 4](@next)
