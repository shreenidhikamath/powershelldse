$number = Read-Host "Enter an integer"
if ($number -gt 0)
{
    Write-Host "number is positive"
}
elseif ($number -lt 0) 
{
    Write-Host "The number is negative"
}
else {
    Write-Host "the  number is zero"
}