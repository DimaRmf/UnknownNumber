//
//  main.swift
//  UnknownNumber
//
//  Created by Дима РМФ on 04.01.2022.
//

import Foundation

let randomNumber = UInt8.random(in: 1...250)
print("Компьютер случайным образом загадал число. Вам требуется отгадать его")
//в переменную будет записываться число с консоли
var myNumber: String?
//цикл с постпроверкой условия
repeat {
    print("Введите ваш вариант")
    //получение значения с клавиатуры
    myNumber = readLine()
    //сравнение введеного и сгенерированного числа
    if (UInt8(myNumber!) == randomNumber) {
        print("Вы угадали")
    } else if (UInt8(myNumber!)! < randomNumber) {
        print("Ваш вариант меньше загаданного числа")
    } else if (UInt8(myNumber!)! > randomNumber) {
        print("Ваш вариант больше загаданного числа")
    }
} while randomNumber != UInt8(myNumber!)
