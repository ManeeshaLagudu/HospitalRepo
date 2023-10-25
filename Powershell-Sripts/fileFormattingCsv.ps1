# Get-Process | Export-Csv -Path "C:\Users\LMANEESH\Desktop\CSV files\ExportProcesses.csv" 

# Get-Process | Export-Csv -Path "C:\Users\LMANEESH\Desktop\CSV files\ExportProcesses.csv" -NoTypeInformation
# Get-Process | Export-Csv -Path "C:\Users\LMANEESH\Desktop\CSV files\ImportProcesses.csv" -NoTypeInformation
$Imported_Data = Import-Csv -Path "C:\Users\LMANEESH\Desktop\CSV files\ImportProcesses.csv"

# Working with CSV data
# Filtering data based on a condition
# $Imported_Data | Where-Object { $_.Description } | Select-Object -First 10
# Write-Host "________________"
# Sort data
# $Imported_Data | Sort-Object Description | Select-Object -First 10

# Select specific columns
# $Imported_Data| Select-Object Name, SI
# Create a new object
$newObject = [PSCustomObject]@{
    Column1 = 'Name'
    Column2 = 'Company'
}

# Append the object to an existing CSV file
$newObject | Export-Csv -Path 'C:\Users\LMANEESH\Desktop\CSV files\Output.csv' -Append "Jhon" "Capgemini" -NoTypeInformation
