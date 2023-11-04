function Get-UKPublicHolidays {
    param (
        [int]$year
    )
        $url = "https://www.gov.uk/bank-holidays.json"
        $response = Invoke-RestMethod -Uri $url
        $holidays = $response."england-and-wales".events.date | Where-Object { $_ -like "$year-*" }
        return $holidays
}
 
# Function for calculating Weekends
function Get-WeekendCountExcludingHolidays {
    param ([int]$year)
    $startDate = Get-Date -Year $year -Month 1 -Day 1
    $endDate = Get-Date -Year $year -Month 12 -Day 31
    $ukHolidays = Get-UKPublicHolidays -year $year
    $weekendCount = 0
    while ($startDate -le $endDate) {
        if ($startDate.DayOfWeek -eq "Saturday" -or $startDate.DayOfWeek -eq "Sunday") {
            if ($ukHolidays -notcontains $startDate.ToString("yyyy-MM-dd")) {
                $weekendCount++
            }
        }
        $startDate = $startDate.AddDays(1)
    }
    return $weekendCount
}
  
function Get-WorkingDays {
    param (
        [int]$year
    )
    $startDate = Get-Date -Year $year -Month 1 -Day 1
    $endDate = Get-Date -Year $year -Month 12 -Day 31
    $ukHolidays = Get-UKPublicHolidays -year $year
    $workingDays = 0
    while ($startDate -le $endDate) {
        if ($startDate.DayOfWeek -ne "Saturday" -and $startDate.DayOfWeek -ne "Sunday" -and $ukHolidays -notcontains $startDate.ToString("yyyy-MM-dd")) {
            $workingDays++
        }
        $startDate = $startDate.AddDays(1)
    }
    return $workingDays
}
 
# Main script with try-catch block
try {
    # Example: Calculate working days and count of weekends for the year
    $year = [int](Read-Host "Enter the year")
    $workingDays = Get-WorkingDays -year $year
    $weekendCount = Get-WeekendCountExcludingHolidays -year $year
    $holidays = Get-UKPublicHolidays -year $year  # Retrieve holidays for the specified year
    $publicHolidays = $holidays.Count
    $result = [PSCustomObject]@{
        "Year"            = $year
        "Public holidays" = $publicHolidays
        "Working Days"    = $workingDays
        "Weekends"        = $weekendCount
    }
    $result | Format-Table -AutoSize
} catch {
    Write-Host "Please enter valid year "
}