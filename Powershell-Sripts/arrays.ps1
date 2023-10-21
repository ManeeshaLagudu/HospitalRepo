# Creating Array using Array Operator
$fruits = @("Apple", "Strawberry", "Orange", "Kiwi")
$fruits # printing array to the console
Write-Host "---------"
# Creating array for numbers using (..) range operator
$Numbers = @(1..12)
$Numbers  
Write-Host "---------"
# Creating Array by assigning comma separated value to a variable
$Place_Name = "Lonavala", "Goa", "Kerala", "Visakhapatnam", "Mumbai", "Pune", "Gujarat", "Khandala", "Chennai", "Bangalore", "Hyderabad"
$Place_Name
Write-Host "---------"
# Creating Array for single item, we can do that by placing comma before the item
$Array_of_Single_Item = , "Black"
$Array_of_Single_Item
Write-Host "---------"
# Indexing and Accessing elements of an Array
$Place_Name[0] # for accessing 1st element of an array
Write-Host "---------"
$Place_Name[-1] # for accessing last element of an array
Write-Host "---------"
$Place_Name[3..6] # getting multiple elements of an array using range operator
Write-Host "---------"
$Place_Name[1, 2 + 6..10] # getting multiple elements of different ranges at once using addition operator
Write-Host "---------"
# Creating strongly typed Array
$Normal_Array = 1, "Fruits", 33.09, 'M'
$Normal_Array
$Normal_Array.GetType()
Write-Host "---------"
[int[]]$Strong_Array = 1, 2, 3, 4, 5, 6 # This array accepts only the int type of values into the array if not it shows error
$Strong_Array
$Strong_Array.GetType()
Write-Host "---------"
# Operators working with Arrays
# Join Operator
$Numbers -join "-"
Write-Host "---------"
# # Replace Operator
$Place_Name -replace "Mumbai", "Delhi" # replace operator only works till time being but does not effect original array
Write-Host "---------"
# # In Operator
"Apple" -in $fruits
Write-Host "---------"
# # Methods of Arrays
$Place_Name.Length
Write-Host "---------"
$Place_Name.Count # count is alias for length

# clear method removes all the elements in the array but it doesn't remove the i.e, array size remains same 
$Numbers.Clear()

# ForEach Method
$Numbers = 1..10
$Numbers.ForEach({ $_ * 2 }) # $_ represents the current object

$fruits.ForEach("ToUpper") # Converts all the elements in the fruits array to uppercase
Write-Host "---------"
$Place_Name.ForEach("ToLower") # Converts all the elements in the place_name array to lower case

# Where method used for filtering or select elements from array
$Numbers.where({ $_ -lt 8 }) # this gives all the elements less than 8 from numbers array
Write-Host "---------"
$Numbers.where({ $_ -gt 5 }, "first", 3) # this gives the first 3 elements greater than 5 from numbers array
Write-Host "---------"
$Numbers.where({ $_ -lt 6 }, "last", 3) # this gives the last 3 elements less than 6 from numbers array
Write-Host "---------"
$Numbers.where({ $_ -gt 6 }, "SkipUntil", 2) # this will return the 2 elements greater than 6 
Write-Host "---------"
$Numbers.Where({ $_ -gt 8 }, "Until") # this returns the values till 8
Write-Host "---------"
$running, $stopped = (Get-Service).where({ $_.Status -eq 'Running' }, 'Split') # this splits all the running and stopped services and stores seperately in two arrays names running and stopped 
# $running
Write-Host "---------"
# Manipulating the array
$Place_Name += "Kashmir" # Adding element to the array
$Place_Name[-1] = "Meghalaya" # This changes the last element of Array 
$Place_Name.SetValue("Karnataka",4)
$Place_Name