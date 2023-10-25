/* Declaring variables in Groovy can be done in three ways
   1) Native-syntax similar to java
      data-type variable_name = value;
   2) Using def keyword
      def variable_name = value
   3) Variables in groovy do not require a type definition
       variable_name = value; // no type definition is required
*/

// Native-syntax
String myString = "Let's learn Groovy from now";
println(myString)

// Using def keyword
def nameOfPerson = "Virat Kohli";
println(nameOfPerson)

//Variables in groovy do not require a type definition
nameOfAnimal = "Lion"
println(nameOfAnimal)

// Different methods of printing variables 
println nameOfPerson+" is the world's best Batsman";
println nameOfAnimal+' is called as king of forest';
println "${nameOfPerson} is one of the leading players in Indian Atheletics";