// Usage of for loop
numbers = (1..10) // It gives the numbers from 1 to 10
for (int iteration = 1; iteration <= 5; iteration++){
    println(iteration)
}

// Usage of while loop 
def count = 1
while (count <= 9){
    println("Count is $count")
    count++
}

// Usage of for-in loop

for(value in numbers){
    println("Value: $numbers")
}

// Usage of do-while loop 
// The do-while loop ensures that the code block inside the loop is executed at least once, even if the loop condition is not initially satisfied.
def value = 0
do{
    println("Value is: $value")
    value++
}
while(value <= 5)

// Usage of break 
for(int iteration1 = 1; iteration1 <= 6; iteration1++){
    if(iteration1 == 4){
        println("Found the number")
        break
    }
}

// Usage of continue
for(int iteration2 = 1; iteration2 <= 10; iteration2++){
    if(iteration2 % 2 == 0){
        println("Even number: $iteration2")
        continue
    }
    println("Odd number: $iteration2")
}