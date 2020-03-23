/*:
 # Monday Stretch Problem 4.1
 ## Convert to Scientific Notation
 
 ### Instructions:
 1. Create a function called *convertToScientificNotation* that takes in a float as a parameter and returns a string.
 2. The return value should be a string of the number in scientific notation (ex: 8.9 returns "8.9 x 10 ^ 0").
 
 ### Black Diamond 💎💎💎
 Handle negative numbers.
*/

import UIKit

extension Formatter {
    static let scientific: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .scientific
        formatter.positiveFormat = "0.###E0"
        formatter.exponentSymbol = " x 10^"
        return formatter
    }()
}

extension Numeric {
    var scientificFormatted: String {
        return Formatter.scientific.string(for: self) ?? ""
    }
}

func convertToScientificNotation(_ number: Float) -> String {
    
    return number.scientificFormatted
}

convertToScientificNotation(1.0)
convertToScientificNotation(10.0)
convertToScientificNotation(15_000_000.1235)
