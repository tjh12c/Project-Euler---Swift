/*:
 
 # Largest prime factor
 
 The prime factors of 13195 are 5, 7, 13 and 29.
 
 What is the largest prime factor of the number 600851475143 ?
 
 */
import Foundation

///This method is pretty non-streamlined. It uses the Sieve of Erastosthenes, but for some reason I decided to do a bunch of extra work
let subjectInteger = 600851475143
var factorArray : [Int] = []

func isPrime(checkInt : Int) -> Bool {
    for index in 2..<checkInt {
        if checkInt % index == 0 {
            return false
        }
    }
    return true
}

for index in 2..<Int(sqrt(Double(subjectInteger))) {
    if subjectInteger % index == 0 {
        factorArray.append(index)
    }
    if index % 1000 == 0 {
        print("Index: \(index)")
    }
}

for thisNumber in factorArray.reversed() {
    if isPrime(checkInt: thisNumber) {
        print("The largest prime factor of \(subjectInteger) is \(thisNumber).")
        break
    }
}
