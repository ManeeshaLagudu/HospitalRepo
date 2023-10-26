package Groovy

class Person{
    private String name
    private int age

    // Using Constructor
    // Person(String name, int age){
    //     this.name = name
    //     this.age = age
    // }
    // Using getters and setters
    void setName(String name){
        this.name = name
    }
    String getName(){
        return name
    }
     void setAge(String age){
        this.age = age
    }
    String getAge(){
        return age
    }
    String eligibleForVote(name, age){
        // if (age >= 18){
        //     return name +" you are eligible for voting"
        // }
        // return name+ " you are not eligible for voting"

        // Using ternary operator
        return (age >= 18) ? "$name you are eligible for voting" : "$name you are not eligible for voting"
    }

}
