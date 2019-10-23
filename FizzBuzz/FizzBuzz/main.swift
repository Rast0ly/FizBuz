//
//  main.swift
//  FizzBuzz
//
//  Created by Student on 23/10/2019.
//  Copyright © 2019 lisadmin. All rights reserved.
//

import Foundation

func  fizzBuzzByDigit(number: Int) -> String{
    let numberString = String(number)
    
    let chars = String(numberString)

    
    if chars.contains("3") && chars.contains("5"){
        return "FizzBuzz"
    }
        
    
    if chars.contains("3"){
        return "Fizz"
    }
    
    if chars.contains("5"){
        return"Buzz"
    }
    
    return numberString
}

func fizzBuzzByDigitSequence(upTo number: Int) -> String{
    
    var sequence = String()
    
    for i in 1...number {
        sequence += fizzBuzzByDigit(number: i)
        
        //append comma and space
        if i != number {
            sequence += ", "
        }
    }
    return sequence
}
print("FizzBuzz based on characters 3 and 5")
print(fizzBuzzByDigitSequence(upTo: 100))
