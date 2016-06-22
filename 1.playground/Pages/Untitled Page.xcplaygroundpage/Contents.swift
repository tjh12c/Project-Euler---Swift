/*:
 
 # Multiples of 3 and 5

If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
 
Find the sum of all the multiples of 3 or 5 below 1000.
 
*/
import UIKit
import Foundation


let limit = 1000
let firstVar = 3
let secondVar = 5
var sum = 0

for index in 1..<limit {
    if (index % firstVar == 0) || (index % secondVar == 0) {
        print(index)
        sum+=index
    }
}

print("The final sum is: \(sum)")

