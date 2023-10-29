# class Person {
#     [string] $nameOfPerson
#     [int] $age
#     # Creating constructor
#     Person([string] $nameOfPerson, [int]$age) {
#         $this.nameOfPerson = $nameOfPerson
#         $this.age = $age
#     }
# }
# function checkingEligibility() {
#     if ($Global:age -ge 18) {
#         return "$Global:nameOfPerson is eligible to vote"
#     } 
#     else {
#         return "$Global:nameOfPerson is not eligible to vote"
#     } 
# }
# $Global:nameOfPerson = Read-Host "Enter name of Person:"
# $Global:age = [int](Read-Host "Enter age:")
# $Global:person = New-Object Person -ArgumentList $Global:nameOfPerson , $Global:age
# $result = checkingEligibility $Global:person
# Write-Host $result

# Other way of doing the eligibility check
class Person {
    [string] $Global:nameOfPerson
    [int] $Global:age
    # Creating constructor
    Person([string] $nameOfPerson, [int]$age) {
        $this.nameOfPerson = $nameOfPerson
        $this.age = $age
    }
}
function checkingEligibility() {
    if ($age -ge 18) {
        return "$nameOfPerson is eligible to vote"
    } 
    else {
        return "$nameOfPerson is not eligible to vote"
    } 
}
$nameOfPerson = Read-Host "Enter name of Person"
$age = [int](Read-Host "Enter age")
$person = New-Object Person -ArgumentList $nameOfPerson , [int]$age
$result = checkingEligibility $person
Write-Host $result

