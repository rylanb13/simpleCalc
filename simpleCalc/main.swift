//
//  main.swift
//  simpleCalc
//
//  Created by iGuest on 10/12/15.
//  Copyright (c) 2015 Rylan Bonnevie. All rights reserved.
//

import Foundation

func input() -> String {
    let keyboard = NSFileHandle.fileHandleWithStandardInput()
    let inputData = keyboard.availableData
    let result = NSString(data: inputData, encoding:NSUTF8StringEncoding) as! String
    return result.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
}

println("enter a number")
var firstNum = input()
println("enter an operation (ex. add, sub)")
var operation = input()
println("enter a number")
var secondNum = input()


func convert(incoming:String) -> Int{
    return NSNumberFormatter().numberFromString(incoming)!.integerValue
}

var convertFirstNum = convert(firstNum)
var convertSecondNum = convert(secondNum)

var total = 0
if operation == "*" {
    total = convertFirstNum * convertSecondNum
} else if operation == "+" {
    total = convertFirstNum + convertSecondNum
} else if operation == "-" {
    total = convertFirstNum - convertSecondNum
} else if operation == "/" {
    total = convertFirstNum / convertSecondNum
} else {
    total = convertFirstNum % convertSecondNum
}
print(total)

