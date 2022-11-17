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
 
let number:Int =  123456
let numberString:String = String(number)
let characters = Array(numberString)
var arrayOfnumber = [Int]()
func integerToArrayOfInteger(integer:Int) -> Array<Int> {
    var newArray = [Int]()
    for i in String(integer) {
        newArray.append(Int(String(i)) ?? 0)
    }
    return newArray
}

arrayOfnumber = integerToArrayOfInteger(integer: number)

var quentityOfArray = arrayOfnumber.count

var halfOfArray = quentityOfArray / 2

var sumOfFirstHalf = [Int]()
var sumOfSecondHalf = [Int]()


var i = 0

while sumOfFirstHalf.count < halfOfArray {
sumOfFirstHalf.append(arrayOfnumber[i])
i += 1
}
print(sumOfFirstHalf)

















//: [Ранее: Задание 4](@previous)  |  задание 5 из 6  | [Далее: Задание 6](@next)
