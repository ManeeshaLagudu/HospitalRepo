# Approaches for Initializing Or Creating a HashTable
# Initializing a blank HashTable and then adding contents based on need
$Blank_HashTable = @{}
$Blank_HashTable | Get-Member # Using this we can check the type of HashTable
# Creating HashTable and adding contents at the same time
$HashTable = @{Tony = 30
    Sam             = 25
    Rahul           = 34
    Monu            = 22
}
$HashTable
# In-line HashTable i.e., Creating HashTable in a single line 
$InLine_HashTable = @{"City" = "Bangalore"; "Language" = "Kannada"; "Country" = "India" }
$InLine_HashTable
# Creating Ordered HashTable 
$InLine_HashTable = @{"City" = "Bangalore"; "Language" = "Kannada"; "Country" = "India" }  # This gives an unordered output
$InLine_HashTable = [Ordered]@{"City" = "Bangalore"; "Language" = "Kannada"; "Country" = "India" } # This give the output in an insertion order
$InLine_HashTable.Location = "Global" # Adds or appeends element at the end of the HashTable
$InLine_HashTable

# Adding Key Values to Table
# Using Add Method
$Blank_HashTable.add("First-Color", "Black") # add is an in-built method in HashTable
$Blank_HashTable
# Using Key Index
$Blank_HashTable["Second-Color"] = "Red" # Add elements using index of key
$Blank_HashTable
# Using HashTable Property
$Blank_HashTable."Third-color" = "Yellow"
$Blank_HashTable
# Adding HashTable 
$New_HahTable = $Blank_HashTable + @{"Fourth-color" = "Pink" } # This method is adding values from one hashtable to the other hashtable
$New_HahTable

# Accessing pairs or Contents out of HashTable
# Fetching Single key Value
$Blank_HashTable["Fourth-Color"]
# Fetching multiple keys Value
$Blank_HashTable[@("Second-Color", "Third-Color")] # We can also fetch without using @ 
# Fetching items using Column names
$Blank_HashTable.Keys # Returns all the keys names
$Blank_HashTable.Values # Returns all the values of HashTable

# Iterating a Script block against elements of a HashTable using Keys
$HashTable
ForEach ($person in $HashTable)
{ "age of $person in $HashTable[$person]" }
$HashTable.Count
<# Here initially we are storing the keys of HashTable in other HashTable named as Extracted_HashTable in that we are storing all the keys
   Now using that new HashTable we can access individual element of it #>

$Extracted_HashTable = $HashTable.Keys
ForEach ($person in $Extracted_HashTable)
{ "Age of $person is $($HashTable[$person])" } # Here are we are using Grouping operator $() to combine multiple values atonce

# Using Key-Value (pair) Enumeration
$Enumerated_HashTable = $HashTable.GetEnumerator() # GetEnumerator is method that provides accessibility to the internal elements in a HashTable
foreach ($pair in $Enumerated_HashTable)
{ "age of $(($pair).Key) is $(($pair).Value)" }

# Making Logics and Conditions using HashTable Keys
$HashTable.Keys -like "*a*"
$HashTable."Rahul" -gt 20
$HashTable.ContainsKey("Monu")
$HashTable.ContainsValue(30)

# Removing Key-Vaule pairs or contents from the HashTable
$Blank_HashTable.Remove("Pink")
$Blank_HashTable
$Blank_HashTable.Clear() # Using this clear method we can make HashTable empty
$Blank_HashTable

# Renaming color/ Propoerty names as per our need
$Updated_HashTable = $HashTable | Format-Table @{name = "User"; expression = { $_.name } }, @{name = "Age"; expression = { $_.value } } # With this we can rename the names of columns to our desired values 
$Updated_HashTable

# Using Splatting to pass a collection of parameter values to a command as a unit 
New-item -Path "C:\Users\PS" -Name MyFile.txt -ItemType file -Value "These are my text contents" -Force -ErrorAction Stop # This is the conventional of creating a file

# This file has been created using splatting where all the parameters will be taken same only the name of the file has changed 
$Creating_File = @{
    Path        = "C:\Users\PS"
    ItemType    = "file"
    Value       = "These are my text contents"
    ErrorAction = "Stop"
}
New-Item -Force -Name "File2.txt" @Creating_File

# Sorting HashTable based on property
$HashTable.GetEnumerator() | Sort-Object value

# Creating HashTable with keys as column name
# Using a PSCustomObject is to have a simple way to create structured data
$Citizen = [PSCustomObject]@{
    Name    = "Maneesha"
    Age     = 22
    City    = "Mumbai"
    Country = "India"
}
$Citizen

# By adding Key-Value pairs as members of HashTable
$MasterTable = New-Object -TypeName psobject
$MasterTable | Add-Member -MemberType NoteProperty -Name ComputerName -Value Lenovo
$MasterTable | Add-Member -MemberType NoteProperty -Name RAM -Value 8GB
$MasterTable | Add-Member -MemberType NoteProperty -Name CPU -Value 16Core
$MasterTable