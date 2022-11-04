import Foundation

/*:
 ### Задание 3
 
 Необходимо вычислить площадь и периметр прямоугольного треугольника.
 
 >Условия:
 Катеты прямоугольного треугольника:
 AC = 8.0, CB = 6.0. Гипотенузу треугольника AB вычисляем при помощи функции `sqrt(Double)`, заменив `Double` суммой квадратов катетов
 
 */
let AC = 8.0
let CB = 6.0
let AB = sqrt((AC*AC) + (CB * CB))
let areaOfTriangle = (AC * CB) / 2
let perimeterOfTriangle = AC + CB + AB


//: [Ранее: Задание 2](@previous) | Задание 3 из 3
