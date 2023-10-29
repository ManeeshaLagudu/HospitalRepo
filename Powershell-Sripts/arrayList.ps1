# Creating an ArrayList
[System.Collections.ArrayList]$Fruits = "Grapes","Pear","Pineapple","Avocado","Dragon-fruit"
$Fruits
Write-Host "---------"
$Fruits.IsFixedSize # this checks whether the size of an Array is fixed or can be modified according to data
Write-Host "---------"
$Fruits.Remove("Pear") # This works only when we specify what element to be removed
$Fruits
Write-Host "---------"
$Fruits.RemoveAt(3) # This method remove the element at given index
$Fruits
Write-Host "---------"
$Fruits.Add("Pear") # Add element to the Array at the end
$Fruits
Write-Host "---------"
$Fruits.Insert(5,"Dragon-fruit") # To add element at specific index
$Fruits