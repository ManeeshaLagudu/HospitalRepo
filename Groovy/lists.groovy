// Declaring list with elements
listOfGroceries = ["Milk", "Oats","Rice","Vegetables"] 
listOfPets = ["Dog","Cat","Pegion","Parrot","Rabbit"]
listOfAnimals = ["Lion","Tiger","Elephant","Dog","Cat"]
// Created empty list 
listOfFruits = [] 
// Some list methods in Groovy
// add() - allows to append the new value at the end of the list
listOfFruits.add("Papaya") 
listOfFruits.add("Muskmelon")
listOfFruits.add("Avocado")
listOfFruits.add("Pear")
println (listOfFruits)

// contains() - checks whether the specified value present in the list or not and returns boolean value
println (listOfGroceries.contains("Oil")) 

// get() - fetches the element at particular index
println (listOfGroceries.get(0)) 

// isEmpty() - checks whether the specified list contains elements or not and return the boolean values accordingly
println (listOfFruits.isEmpty()) 

// minus() - allow us to create new list composed of elements by excluding common elements repetition from both the lists
newListOfAnimals = listOfAnimals.minus(listOfPets) 
println(newListOfAnimals)

// plus() - creates new list composed of elements 
newListOfItems = listOfGroceries.plus(listOfFruits) 
println(newListOfItems)

// Removes last item of the list
println("After Pop: " + newListOfItems.pop()) 

// Removes element at specific index
println("After Removing: " + newListOfAnimals.remove(0)) 

// creates new list which reverses the elements of original list
println(listOfGroceries.reverse()) 

// Returns the number of elements in the list
println(listOfAnimals.size()) 

// Returns a sorted copy
println(listOfPets.sort()) 