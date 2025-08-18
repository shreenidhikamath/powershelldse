# Define an array of numbers
$numbers = @(3, 8, 15, 23, 42, 56, 72, 91)

# Target number to search
$target = 15

Write-Host "`nArray: $($numbers -join ', ')"
Write-Host "Target: $target`n"

# --- Linear Search ---
function LinearSearch($array, $target) {
    for ($i = 0; $i -lt $array.Length; $i++) {
        if ($array[$i] -eq $target) {
            return $i
        }
    }
    return -1
}

# --- Binary Search ---
function BinarySearch($array, $target) {
    $low = 0
    $high = $array.Length - 1

    while ($low -le $high) {
        $mid = [math]::Floor(($low + $high) / 2)
        if ($array[$mid] -eq $target) {
            return $mid
        } elseif ($array[$mid] -lt $target) {
            $low = $mid + 1
        } else {
            $high = $mid - 1
        }
    }
    return -1
}

# Perform Linear Search
$linearResult = LinearSearch $numbers $target
if ($linearResult -ne -1) {
    Write-Host "Linear Search: Found $target at index $linearResult"
} else {
    Write-Host "Linear Search: $target not found"
}

# Perform Binary Search
$binaryResult = BinarySearch $numbers $target
if ($binaryResult -ne -1) {
    Write-Host "Binary Search: Found $target at index $binaryResult"
} else {
    Write-Host "Binary Search: $target not found"
}