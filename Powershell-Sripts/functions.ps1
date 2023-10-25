# Creating simple function
# As functions are created to the scope where it has defined inorder to make it global we use Global keyword before function name
function Get-MachineInfo {
    Write-Host "I have Lenovo ThinkPad with windows OS"
}
Get-MachineInfo

# Specifiying parameters of a function
function Get-MachineInfo {
    param ($make, $RAM)
    Write-Host "I have $make ThinkPad with windows OS of $RAM RAM"
}
Get-MachineInfo -make "Lenovo" -RAM "16GB"