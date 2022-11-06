import Foundation

/*:
 ### Задание 3
 
 Необходимо вычислить площадь и периметр прямоугольного треугольника.
 
 >Условия:
 Катеты прямоугольного треугольника:
 AC = 8.0, CB = 6.0. Гипотенузу треугольника AB вычисляем при помощи функции `sqrt(Double)`, заменив `Double` суммой квадратов катетов
 
 */
let sideAC = 8.0
let sideCB = 6.0
let sideAB = sqrt((sideAC * ;sideAC) + (sideCB * sideCB))
let areaOfTriangle = (sideAC * sideCB) / 2
let perimeterOfTriangle = sideAC + sideCB + sideAB


//: [Ранее: Задание 2](@previous) | Задание 3 из 3
