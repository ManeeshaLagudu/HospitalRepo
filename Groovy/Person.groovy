package Groovy

class Person{
    private String name
    private int age
    // Using Constructor
    // Person(String name, int age){
    //     this.name = name
    //     this.age = age
    // }
    String eligibleForVote(name, age){
        // if (age >= 18){
        //     return name +" you are eligible for voting"
        // }
        // return name+ " you are not eligible for voting"
        // Using ternary operator
        return (age >= 18) ? "$name you are eligible for voting" : "$name you are not eligible for voting"
    }
}
