$number1 =100
$number2 = 200
# Performing comparison between variables
$number1 -eq $number2 # this returns boolean value for checking equality
$number1 -ne $number2 # not equal or equal
$number1 -ge $number2 # greater that or equal to
$number1 -gt $number2 #greater than
$number1 -lt $number2 #less than

# for comparing strings
$name = 'Apple'
$name -like "a*" # checks whether $name starts with A or not irrespective of case
$name -like "a??le" # checks whether $name starting and ending with the given condition
$name -match 'App' # checks whether the given string present in name or not

#for comparing string with case
$name -clike "*E" #checks whether Apple ends with E or not if not returns false
$name -cmatch "ApP"
