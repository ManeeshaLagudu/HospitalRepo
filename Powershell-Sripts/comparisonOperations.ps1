$a =100
$b = 200
# Performing comparison between variables
$a -eq $b # this returns boolean value for checking equality
$a -ne $b # not equal or equal
$a -ge $b # greater that or equal to
$a -gt $b #greater than
$a -lt $b #less than

# for comparing strings
$name = 'Apple'
$name -like "a*" # checks whether $name starts with A or not irrespective of case
$name -like "a??le" # checks whether $name starting and ending with the given condition
$name -match 'App' # checks whether the given string present in name or not

#for comparing string with case
$name -clike "*E" #checks whether Apple ends with E or not if not returns false
$name -cmatch "ApP"
