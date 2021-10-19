//
//  main.swift
//  CourseOne
//
//  Created by Дима Зимин on 18.10.2021.
//

import Foundation

//1
var numberArray = [65, 92, 99, 51, 46, 93, 58, 59]
for sorting in numberArray{
    if sorting % 2 == 0 {
        print("\(sorting) четное число")
    } else {
        print("\(sorting) нечетное число")
    }
}

//2
for sortingTwo in numberArray{
    if sortingTwo % 3 == 0 {
        print("\(sortingTwo) делится на 3 без остатка")
    } else {
        print("\(sortingTwo) делится на 3 с остатком")
    }
}

//3
var oneHundred: Array<Int> = []
for i in 1...100{
    oneHundred.append(i)
}
print(oneHundred)

//4
var toDelete = oneHundred.filter {$0 % 2 != 0 && $0 % 3 == 0}
   print(toDelete)

//5
func fibonacciArray(_ n: Int) -> [Double] {
    var fibonacci: [Double] = [1, 1]
    (2...n).forEach{ i in
        fibonacci.append(fibonacci[i - 1] + fibonacci[i - 2])
    }
    return fibonacci
}
print(fibonacciArray(100))

//6
func primeNumbers(arrayPassed: [Int]) -> [Int] {
    var primes: [Int] = []
    var newArr = arrayPassed
    while let newP = newArr.first {
        primes.append(newP)
        newArr = newArr.filter { $0 % newP != 0 }
    }
    return primes
}
print(primeNumbers(arrayPassed: Array(2...100)))

