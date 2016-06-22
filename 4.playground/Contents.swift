/*:
 
 # Largest palindrome product
 
 A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
 
 Find the largest palindrome made from the product of two 3-digit numbers.
 
 */
import Foundation



//let reversed = String(str.characters.reverse())

var largestPalindrome = 0

///This reverses the characters, and checks if that is equivalent to the string.
func isNumberPalindrone(checkInt : Int) -> Bool {
    let numberAsString = String(checkInt)
    if numberAsString == String(numberAsString.characters.reversed()) {
        return true
    }
    return false
}




for i in stride(from: 999, through: 100, by: -1) {
    for j in stride(from: 999, through: 100, by: -1) {
        let productOfIndices = i * j
        if isNumberPalindrone(checkInt: productOfIndices) {
            if productOfIndices > largestPalindrome {
                largestPalindrome = productOfIndices
            }
        }
    }
}


print("Largest Palindrome is \(largestPalindrome)")