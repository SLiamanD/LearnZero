func loter(number: Int) -> Bool {
    
    
    let numberLot = String(number)
    let halfOfNumberLot = numberLot.count / 2
    let num1 = numberLot.prefix(halfOfNumberLot)
    let num2 = numberLot.suffix(halfOfNumberLot)
    let sum1 = num1.map { Int(String($0)) ?? 0}.reduce(0,+)
    let sum2 = num2.map { Int(String($0)) ?? 0}.reduce(0,+)
    
    let result = sum1 == sum2
    if result {
        print(true)
    } else {
        print(false)
    }
    return result
}

loter(number: 4344)



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


func doesWinOrLoseLotteryNumber(number: Int) -> Bool {
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

    var arraySumOfFirstHalf = [Int]()
    var arraySumOfSecondHalf = [Int]()


    var counter = 0
    while arraySumOfFirstHalf.count < halfOfArray {
    arraySumOfFirstHalf.append(arrayOfnumber[counter])
    counter += 1
    }
    print(arraySumOfFirstHalf)
    arraySumOfSecondHalf = arrayOfnumber.filter { !arraySumOfFirstHalf.contains($0) }
    print(arraySumOfSecondHalf)

    func sumElementInArray(arrayOfInteger:[Int]) -> Int {
        var sumOfElements = 0
        for i in arrayOfInteger {
            sumOfElements += i
        }
        return sumOfElements
    }

    let SumOfFirstHalf = sumElementInArray(arrayOfInteger: arraySumOfFirstHalf)
    let SumOfSecondHalf = sumElementInArray(arrayOfInteger: arraySumOfSecondHalf)
    
    switch arrayOfnumber.count {
    case 2,4,6,8: if SumOfFirstHalf == SumOfSecondHalf {
        print("сумма первой половины лотерейного билета равна сумме второй половины лотерейного билета ")
        return true
    } else {
        print("сумма первой половины лотерейного билета не равна сумме второй половины лотерейного билета ")
        return false
    }
    default:
        print("введите четное число количество цифр которого от 2 до 8")
        return false
    }

    
}
doesWinOrLoseLotteryNumber(number: 22228000)






/*
private func isLoterryNumberVictory(number:String) -> Bool{
    let numberArr = Array(number)
    if(number.count % 2 != 0) {
        print("nechetnoe chislo")
        return false
    }
    let halfOfArr = numberArr.count/2
    var firstHalfSum = 0
    var secondHalfSum = 0
    
    for i in numberArr {
        
//        if numberArr[i] <= halfOfArr {
//
//        }

    }
 return false
}
*/





func ticket(number: Int) -> Bool {
    
    
    let numberLot = String(number)
    let range = numberLot.count
    
    let halfOfNumberLot = numberLot.count / 2
    let num1 = numberLot.prefix(halfOfNumberLot)
    let num2 = numberLot.suffix(halfOfNumberLot)
    let sum1 = num1.map { Int(String($0)) ?? 0}.reduce(0,+)
    let sum2 = num2.map { Int(String($0)) ?? 0}.reduce(0,+)

    
    let result = sum1 == sum2
    
    switch range {
    case 2,4,6,8:
        if result {
            print(true)
        } else {
            print(false)
        }
    default: print("Введите четное количество цифр от 2 до 8")
    }
    return result
}


ticket(number: 222060)













//let day = 2
//let friday = 5
//
//switch day {
//case 1: print("Monday")
//case 2 where friday != 2: print ("Tuesday")
//fallthrough
//case 3: print("Wednesday")
//case 4: print("Thursday")
//case 5: print("Friday")
//case 6: print("Saturday")
//case 7: print("Sunday")
//default: print("Вы за пределами сознания.")
//}





func doesWinOrLoseLotteryNumber(number: Int) -> Bool {
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

    var arraySumOfFirstHalf = [Int]()
    var arraySumOfSecondHalf = [Int]()


    var counter = 0
    while arraySumOfFirstHalf.count < halfOfArray {
    arraySumOfFirstHalf.append(arrayOfnumber[counter])
    counter += 1
    }
    print(arraySumOfFirstHalf)
    arraySumOfSecondHalf = arrayOfnumber.filter { !arraySumOfFirstHalf.contains($0) }
    print(arraySumOfSecondHalf)

    func sumElementInArray(arrayOfInteger:[Int]) -> Int {
        var sumOfElements = 0
        for i in arrayOfInteger {
            sumOfElements += i
        }
        return sumOfElements
    }

    let SumOfFirstHalf = sumElementInArray(arrayOfInteger: arraySumOfFirstHalf)
    let SumOfSecondHalf = sumElementInArray(arrayOfInteger: arraySumOfSecondHalf)
    
    switch arrayOfnumber.count {
    case 2,4,6,8: if SumOfFirstHalf == SumOfSecondHalf {
        print("сумма первой половины лотерейного билета равна сумме второй половины лотерейного билета ")
        return true
    } else {
        print("сумма первой половины лотерейного билета не равна сумме второй половины лотерейного билета ")
        return false
    }
    default:
        print("введите четное число количество цифр которого от 2 до 8")
        return false
    }

    
}
doesWinOrLoseLotteryNumber(number: 22228000)






/*
private func isLoterryNumberVictory(number:String) -> Bool{
    let numberArr = Array(number)
    if(number.count % 2 != 0) {
        print("nechetnoe chislo")
        return false
    }
    let halfOfArr = numberArr.count/2
    var firstHalfSum = 0
    var secondHalfSum = 0
    
    for i in numberArr {
        
//        if numberArr[i] <= halfOfArr {
//
//        }

    }
 return false
}
*/





func ticket(number: Int) -> Bool {
    
    
    let numberLot = String(number)
    let range = numberLot.count
    
    let halfOfNumberLot = numberLot.count / 2
    let num1 = numberLot.prefix(halfOfNumberLot)
    let num2 = numberLot.suffix(halfOfNumberLot)
    let sum1 = num1.map { Int(String($0)) ?? 0}.reduce(0,+)
    let sum2 = num2.map { Int(String($0)) ?? 0}.reduce(0,+)

    
    let result = sum1 == sum2
    
    switch range {
    case 2,4,6,8:
        if result {
            print(true)
        } else {
            print(false)
        }
    default: print("Введите четное количество цифр от 2 до 8")
    }
    return result
}


ticket(number: 222060)









//: [Ранее: Задание 4](@previous)  |  задание 5 из 6  | [Далее: Задание 6](@next)


