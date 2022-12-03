import Foundation
import Darwin

/*:
 ### Задание 5
 5.1 С помощью блоков `case` вы определяете возможные значения, которые может принять выражение. Однако Swift позволяет в пределах одного блока case указать не только на значение рассматриваемого параметра, но и на зависимость от какого-либо условия. Данный функционал реализуется с помощью ключевого слова `where` в блоке `case`.
 
 В этом задании вам необходимо сделать простой валидатор российского номера.
 Если длина номера больше 12, то вывести: сократите номер на N символов
 Если длина номера меньше 12, то вывести: дополните номер на N символов
 Если длина 12 и номер начинается с +7, то вывести: "Номер российский"
 
 (Подсказка: с помощью case проверить длину входного номера, с помощью where - то что он начинается с "+7", в случае, если номер не российский: вывести предупреждение.
 
 

 
 5.2. Реализуйте ту же логику посредством if else
 
 */



var phoneNumber:String
phoneNumber = "+73358888888"
let phoneNumberLength = 12
let phoneNumberPrefix = "+7"
switch phoneNumber.count {
case phoneNumberLength where phoneNumber.starts(with: phoneNumberPrefix):
    print("номер российский")
case ..<phoneNumberLength:
    print("дополните номер на \(phoneNumberLength - phoneNumber.count) символов")
case (phoneNumberLength+1)...:
    print("сократите номер на \(phoneNumber.count - phoneNumberLength) символов")
default:
    print("номер не российский")
}



if phoneNumber.hasPrefix(phoneNumberPrefix) && phoneNumber.count == phoneNumberLength {
    print("номер российский")
}



//: [Ранее: Задание 4](@previous)  |  задание 5 из 6  | [Далее: Задание 6](@next)
