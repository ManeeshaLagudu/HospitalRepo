<# if, else-if,else
 if: Checks whether the condition is true or not 
 else-if: If we have multiple statements that need to satisfy the condition else-if comes into the picture 
 else: If both if and else-if blocks fails then execution goes into else block
#>
$Number = 16
if ($Number -gt 10)
{ Write-Host "The value $Number is greater than 10" }
elseif ($Number -eq 10)
{ Write-Host "The value $Number is equal to 10" }
else {
    Write-Host "Number is less than 10"
}
# Ternary Operator
# 16 -gt 10 ? "This is True":"This is False"