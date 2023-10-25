<# ConvertTo" cmdlets are used to convert data from one format to another within PowerShell.
 They typically take data in one format and transform it into another format #>
Get-Process -Name chrome | ConvertTo-Json 

# Get-Process | Export-Csv -Path "C:\Users\LMANEESH\Desktop\CSV files\ExportProcesses.csv" 

# Get-Process | Export-Csv -Path "C:\Users\LMANEESH\Desktop\CSV files\ExportProcesses.csv" -NoTypeInformation
# Get-Process | Export-Csv -Path "C:\Users\LMANEESH\Desktop\CSV files\ImportProcesses.csv" -NoTypeInformation
# $Imported_Data = Import-Csv -Path "C:\Users\LMANEESH\Desktop\CSV files\ImportProcesses.csv"

# # Working with CSV data
# # Filtering data based on a condition
# $Imported_Data | Where-Object { $_.Description } | Select-Object -First 10
# Write-Host "________________"
# # Sort data
# $Imported_Data | Sort-Object Description | Select-Object -First 10

# # Select specific columns
# $Imported_Data| Select-Object Name, SI\
# Format-Table will show the data in tabular format
# $Imported_Data | Format-Table -Property Name, Company | Select-Object -First 5
