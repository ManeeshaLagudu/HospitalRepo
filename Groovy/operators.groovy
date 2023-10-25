/* Arithmetic operators
Comparision operators
Bitwise operators
Logical operators
Assignment operators
Ternary operators
Logical operators
*/

//Arithmetic operators 
def number1 = 100
def number2 = 200

def addition = number1 + number2 // Addition
println("The result of Addition: $addition")

def subtraction = number1 - number2 // Subtraction
println("The result of Subtraction: $subtraction")

def multiplication = number1 * number2 // Multiplication
println("The result of Multiplication: $multiplication")

def division = number1 / number2 // Division
println("The result of Division: $division")

def modulus = number1 % number2 // Modulus
println("The result of Modulus: $modulus")

// Comparision Operators

def lesser = number1 < number2 // LessThan
println("The given number is lesser: $lesser")

def greater = number1 > number2 // GreaterThan
println("The given number is greater: $greater")

def lessThanOrEqual = number1 <= number2 // LessThanOrEqual
println("The given number is Less than or Equal: $lessThanOrEqual")

def greaterThanOrEqual = number1 >= number2 // GreaterThanOrEqual
println("The given number is Greater than or Equal: $greaterThanOrEqual")

def notEqual = number1 != number2 // NotEqual
println("Not Equal: $notEqual")

def equal = number1 == number2 // Equal
println("Equal: $equal")


// Bitwise Operators
// In this the variables number1 and number2 are converted to binary formart i.e,. 0's and 1's 
def bitwiseAnd = number1 & number2 // Bitwise AND
println("Bitwise AND: $bitwiseAnd")

def bitwiseOr = number1 | number2 // Bitwise OR
println("Bitwise OR: $bitwiseOr")

def bitwiseXor = number1 ^ number2 // Bitwise XOR
println("Bitwise XOR: $bitwiseXor")

// Logical Operators
def boolean1 = true
def boolean2 = false

def logicalAnd = boolean1 && boolean2
println("Logical AND: $logicalAnd")

def logicalOr = boolean1 || boolean2
println("Logical OR: $logicalOr")

def logicalNot = !boolean1
println("Logical NOT: $logicalNot")

// Assignment Operators

number1 += 10  // number1 = number1 + 10
number1 -= 10  // number1 = number1 -10
number1 *= 2   // number1 = number1 * 2
number1 /= 50  // number1 = number1 / 50
number1 %= 10  // number1 = number1 % 10
println("Result of variable after applying assignement operators: $number1")

// Ternary Operator
result = (number1>0) ? "$number1 is greater than 0" : "$number1 is not greater than 0"
println result