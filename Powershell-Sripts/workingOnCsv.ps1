# Function to extract meaningful text from HTML
function ExtractTextFromHTML($text) {
    $matching = [regex]::Matches($text, $pattern)
    $extractedText = ""
    foreach ($match in $matching) {
        $extractedText += $match.Groups[1].Value
    }

    # Remove HTML entities
    $extractedText = [System.Net.WebUtility]::HtmlDecode($extractedText)

    # Remove curly braces and extra spaces
    $extractedText = $extractedText -replace '{.*?}', ''
    $extractedText = $extractedText.Trim()
    
    return $extractedText
}

$CsvFilePath = "C:\Users\LMANEESH\Downloads\Formatted_In.csv"
$FormattedCsvFilePath = "C:\Users\LMANEESH\Documents\FormattedCSV.csv"

# Read the CSV file
$Imported_Data = Import-Csv -Path $CsvFilePath

# Define a regular expression pattern to extract text within HTML tags
$pattern = '<.*?>([^<]+)</.*?>'

# Loop through the rows and extract meaningful text from the "Description" and "Steps" columns
$Imported_Data | ForEach-Object {
    $_.Description = ExtractTextFromHTML $_.Description
    $_.Steps = ExtractTextFromHTML $_.Steps
}

# Select the columns you need
$Formatted_Data = $Imported_Data | Select-Object "ID", "Test Area", "Work Item Type", "Description", "Title", "Process Reference", "Priority", "Requirements Reference", "Steps"

# Export the formatted data to a new CSV file
$Formatted_Data | Export-Csv -Path $FormattedCsvFilePath -NoTypeInformation

# Output to console for verification (optional)
$Formatted_Data
