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
