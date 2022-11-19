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
 
//let number:Int =  123456
//let numberString:String = String(number)
//let characters = Array(numberString)
//var arrayOfnumber = [Int]()
//func integerToArrayOfInteger(integer:Int) -> Array<Int> {
//    var newArray = [Int]()
//    for i in String(integer) {
//        newArray.append(Int(String(i)) ?? 0)
//    }
//    return newArray
//}
//
//arrayOfnumber = integerToArrayOfInteger(integer: number)
//
//var quentityOfArray = arrayOfnumber.count
//
//var halfOfArray = quentityOfArray / 2
//
//var arraySumOfFirstHalf = [Int]()
//var arraySumOfSecondHalf = [Int]()
//
//
//var counter = 0
//while arraySumOfFirstHalf.count < halfOfArray {
//arraySumOfFirstHalf.append(arrayOfnumber[counter])
//counter += 1
//}
//print(arraySumOfFirstHalf)
//arraySumOfSecondHalf = arrayOfnumber.filter { !arraySumOfFirstHalf.contains($0) }
//print(arraySumOfSecondHalf)
//
//func sumElementInArray(arrayOfInteger:[Int]) -> Int {
//    var sumOfElements = 0
//    for i in arrayOfInteger {
//        sumOfElements += i
//    }
//    return sumOfElements
//}
//
//let SumOfFirstHalf = sumElementInArray(arrayOfInteger: arraySumOfFirstHalf)
//let SumOfSecondHalf = sumElementInArray(arrayOfInteger: arraySumOfSecondHalf)
//
//if SumOfFirstHalf == SumOfSecondHalf {
//    print("сумма первой половины лотерейного билета равна сумме второй половины лотерейного билета ")
//} else {
//    print("сумма первой половины лотерейного билета не равна сумме второй половины лотерейного билета ")
//}

private func isLoterryNumberVictory(number:String) -> Bool{ //3 4 3 3
    let numberArr = Array(number)
    if(number.count % 2 != 0) {
        print("nechetnoe chislo")
        return false
    }
    let halfOfArr = numberArr.count/2
    var firstHalfSum = 0
    var secondHalfSum = 0
    
    for i in numberArr{
        
        if( numberArr[i] <= halfOfArr )
            fisrsthalfsum =
        
            uf
    }
    
}
















//: [Ранее: Задание 4](@previous)  |  задание 5 из 6  | [Далее: Задание 6](@next)
