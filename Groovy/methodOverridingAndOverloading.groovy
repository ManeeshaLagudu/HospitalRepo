package Groovy

class MethodOverridingMainAndMethodOverloadingMain{
    static main(args) {
        Animal animal = new Cat();
        def soundOfCat = animal.makeSound();
        println soundOfCat ;
        MathOperations maths = new MathOperations();
        def mathematicalOperation = maths.add(2 , 3 , 4);
        println "Sum of numbers:" + mathematicalOperation ;
    }
    
}
class Animal{
    def makeSound(){
        return "Animals makes sound" ;
    }
}
class Cat extends Animal{
    def makeSound(){    // Method Overriding
        return "Meow";
    }
}
// Method Overloading
class MathOperations{
    def add(int a, int b){
        def addingTwoNumbers = a + b;
        return addingTwoNumbers;
    }
    def add(int a, int b, int c){
        def additionOfTwoNumbers = a + b + c;
        return additionOfTwoNumbers; 
    }
}