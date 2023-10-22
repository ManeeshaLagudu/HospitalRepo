# foreach loop repeated till the collection finished
# Running foreach loop as a command
$fruits = "Apple", "Orange", "Kiwi"; foreach ($Item in $fruits) { "This is $Item" }
Write-Host "-------------"
# Running foreach loop in script-block
$fruits = "Apple", "Orange", "Kiwi"
foreach ($Item in $fruits) {
    "This is $Item"
}
Write-Host "-------------"
# Running foreach against command output
foreach ($fruit in $fruits) {
    "This is $(($fruit))"
}
Write-Host "-------------"
# While loop runs till the condition is true
$Numbers = 1..10
$i = 0
while ($i -lt $Numbers.Count) { $Numbers[$i]; $i++ }
Write-Host "-------------"
<# Do Loop
   Do Loop works with two keywords 
   Do-while : Repeates as long as the condition evaluates to true
   Do-Until : Repeates as long as the condition evaluates false
#>
$Numbers = 1..10
$i = 0
do { $Numbers[$i]; $i++ } while ($i -lt $Numbers.Count) 
Write-Host "-------------"
# Do-Until
$Numbers = 1..10
$i = 0
do { $Numbers[$i]; $i++ } until ($i -gt $Numbers.Count) 
Write-Host "-------------"
# for loops runs till te specified condition becomes true
for ($i = 0; $Number -lt 8; $i++) { Write-Host "$Number" }
# Infinite loop
$Number1=0
for(;;){$Number1;$Number1++}