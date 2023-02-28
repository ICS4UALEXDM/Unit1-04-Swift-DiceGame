import Foundation
import Glibc
//
//  Einstein.swift
//
//  Created by Alex De Meo
//  Created on 2023/02/11
//  Version 1.0
//  Copyright (c) 2023 Alex De Meo. All rights reserved.
//
//  This program calculates the Energy released when mass.
// is converted to energy

// creating constants and variables
var guesses = 0
var guessIncorrect = true
let rNum = Int.random(in: 1..<7)

// There is no do while loop in swift, therefore we must use a
// repeat-while loop.
repeat {
    print("Guess a number between 1-6: ", terminator: "")
    if let guess = Int(readLine()!) {
        // Ensuring the number is in the right range
        if (guess > 0 && guess < 7) {
            // Telling the user if the guess is too high or low
            if (guess > rNum) {
                guesses += 1
                print("That guess was too high!")
            } else if (guess < rNum) {
                guesses += 1
                print("That guess was too low!")
            } else {
                guesses += 1
                // will break the while loop
                guessIncorrect = false
                // String formatting depending on the number of guesses
                if (guesses == 1) {
                    print("You guessed the correct number in 1 try!")
                } else {
                    print("You guessed the number in \(guesses) tries")
                }
            }
        } else {
            print("Your guess must be between 1-6!")
        }
    } else {
        print("That input is invalid.")
    }
} while (guessIncorrect)