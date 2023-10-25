<# ConvertTo" cmdlets are used to convert data from one format to another within PowerShell.
 They typically take data in one format and transform it into another format #>
# Get-Process -Name chrome | ConvertTo-Json 
# Get-Process -Name chrome | ConvertTo-Csv
# Getting Date using command
# Get-Date
# Inorder to make it in required format
# Get-Date -Format "dd-MM-yyyy"
# We can also get day in the date using some format
# Get-Date -Format "dddd-MMMM-yyyy"
<# These cmdlets are typically used when you want to save data to a file, transmit data to another system, or store data persistently in a specific format. 
They create files or transmit data externally.#>
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
# $Imported_Data| Select-Object Name, SI

# Format-Table will show the data in tabular format
# $Imported_Data | Format-Table -Property Name, Company | Select-Object -First 5                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    


$CsvFilePath = "C:\Users\LMANEESH\Downloads\Formatted_In.csv"
$FormattedCsvFilePath = "C:\Users\LMANEESH\Documents\FormattedCSV.csv"

# Read the CSV file
$Imported_Data = Import-Csv -Path $CsvFilePath

# Define a regular expression pattern to extract text within HTML tags
$pattern = '<.*?>([^<]+)</.*?>'

# Loop through the rows and extract meaningful text from the "Description" and "Steps" columns
$Imported_Data | ForEach-Object {
    # Extract text from Description using Select-String
    $descriptionMatches = $_.Description | Select-String -Pattern $pattern -AllMatches
    $descriptionText = $descriptionMatches.Matches.Groups[1].Value

    # Combine the extracted text without unwanted characters
    $description = ($descriptionText | ForEach-Object { $_.Trim() }) -join ' '

    # Extract text from Steps using Select-String
    $stepsMatches = $_.Steps | Select-String -Pattern $pattern -AllMatches
    $stepsText = $stepsMatches.Matches.Groups[1].Value

    # Combine the extracted text without unwanted characters
    $steps = ($stepsText | ForEach-Object { $_.Trim() }) -join ' '

    # Update the object properties with the extracted text
    $_.Description = $description
    $_.Steps = $steps
}

# Select the columns you need
$Formatted_Data = $Imported_Data | Select-Object "ID", "Test Area", "Work Item Type", "Description", "Title", "Process Reference", "Priority", "Requirements Reference", "Steps"

# Export the formatted data to a new CSV file
$Formatted_Data | Export-Csv -Path $FormattedCsvFilePath -NoTypeInformation

# Output to console for verification (optional)
$Formatted_Data




# $CsvFilePath = "C:\Users\LMANEESH\Downloads\Formatted_In.csv"
# $FormattedCsvFilePath = "C:\Users\LMANEESH\Documents\FormattedCSV.csv"

# # Read the CSV file
# $Imported_Data = Import-Csv -Path $CsvFilePath

# # Define a function to clean and format the text
# Function CleanText($text) {
#     # Remove HTML tags and unwanted content
#     $text = [regex]::Replace($text, '<.*?>|&.*?;', '')
#     # Remove extra spaces
#     $text = $text -replace '\s+', ' '
#     # Trim any leading or trailing spaces
#     $text = $text.Trim()
#     return $text
# }

# # Process the Description and Steps columns to remove unwanted content
# $Imported_Data | ForEach-Object {
#     # Clean and format Description
#     $_.Description = CleanText($_.Description)
    
#     # Clean and format Steps
#     $_.Steps = CleanText($_.Steps)
# }

# # Select the columns you need
# $Formatted_Data = $Imported_Data | Select-Object "ID", "Test Area", "Work Item Type", "Description", "Title", "Process Reference", "Priority", "Requirements Reference", "Steps"

# # Export the formatted data to a new CSV file
# $Formatted_Data | Export-Csv -Path $FormattedCsvFilePath -NoTypeInformation

# # Output to console for verification (optional)
# $Formatted_Data
