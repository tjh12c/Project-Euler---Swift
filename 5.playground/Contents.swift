/*:
 
 # Smallest multiple
 
 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
 
 What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
 
 */

import Foundation


var numbersToCheck = [11,13,14,16,17,18,19,20]
var finalNumber = 0
var found = false

var index = 2520
repeat {
    for thisNum in numbersToCheck {
        if index % thisNum != 0 {
            break
        }
        if (thisNum == numbersToCheck.last!) {
            found = true
            finalNumber = index
        }
    }
    index = index + 2520
} while !found



print("The number is \(finalNumber)")
