import Foundation

/*:
 ### Задание 2
 
 2.1 Необходимо создать константу с именем `myAge` и присвоить ей значение вашего возраста (можно не настоящее).
 */
let myAge = 30



/*:
 2.2 Объявите переменную типа `Int` с именем `myAgeInTenYears` и присвойте ей значение вашего возраста через 10 лет (используйте константу `myAge` и оператор сложения).
 */
let myAgeInTenYears:Int = myAge + 10

/*:
 2.3 Объявите ещё одну константу `daysInYear` и присвойте ей значение **365.25** (число дней в году с учетом високосных годов).
 */
let daysInYear = 365.25
/*:
 2.4 Объявите переменную типа `Float` с именем `daysPassed` и присвойте ей значение количества дней с момента вашего рождения плюс 10 лет (используйте `myAgeInTenYears` и `daysInYear`).
 */
let daysPassed:Float = Float(myAgeInTenYears) * Float(daysInYear)
/*:
 2.5 При помощи функции `print()` выведите на консоль фразу: «Мой возраст <...> лет. Через 10 лет, мне будет <...> лет, с момента моего рождения пройдет <...> дней. Символы (<...>) необходимо заменить на значения переменных.
 */
print("Мой возраст \(myAge) лет. Через 10 лет, мне будет \(myAgeInTenYears) лет, с момента моего рождения пройдет \(Int(daysPassed)) дней")


//: [Ранее: Задание 1](@previous) | Задание 2 из 3 | [Далее: Задание 3](@next)
