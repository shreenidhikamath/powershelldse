[int]$n = Read-Host "Enter a positive integer"

if ($n -gt 0) {
    # Using the direct mathematical formula: n*(n+1)/2
    $sum = $n * ($n + 1) / 2
    Write-Host "Sum of first $n natural numbers is $sum"
}
else {
    Write-Host "Please enter a positive integer."
}
