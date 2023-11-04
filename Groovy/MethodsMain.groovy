import Groovy.Methods
class MethodsMain{
static main(args) {
    Methods object=new Methods();
    println ("Addition:" +object.additionOfNumbers(4,4))
    println ("Subtraction:" +object.subtractionOfNumbers(100,50))
    println ("Multiplication:" +object.multiplicationOfNumbers(10,5))
    println ("Division:" +object.divisionOfNumbers(100,25))
    println ("Modulus:" +object.modulusOfNumbers(4,2))
}
}