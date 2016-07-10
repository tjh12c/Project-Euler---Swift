/*:
 # Sum square difference
 
 The sum of the squares of the first ten natural numbers is,
 
 >12 + 22 + ... + 102 = 385
 
 The square of the sum of the first ten natural numbers is,
 
 >(1 + 2 + ... + 10)^2 = 55^2 = 3025
 
 Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
 
 Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
 
 
 
 */
import UIKit


let endIndex = 100


var sumOfSquares = 0
var squareOfSum = 0
var finalNum = 0




for index in 1...endIndex {
    
    //Find square of sum
    squareOfSum = squareOfSum + index
    if index == endIndex {
        squareOfSum = squareOfSum * squareOfSum
    }
    
    //Find sum of squares
    sumOfSquares = sumOfSquares + (index * index)
}
finalNum = squareOfSum - sumOfSquares


print("Square of Sum: \(squareOfSum)")
print("Sum of Squares: \(sumOfSquares)")
print("Final Number: \(finalNum)")





