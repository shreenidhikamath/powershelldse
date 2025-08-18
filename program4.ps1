# Function to add two numbers
function Add-Numbers {
    param ($a, $b)
    return $a + $b
}

# Function to subtract two numbers
function Subtract-Numbers {
    param ($a, $b)
    return $a - $b
}

# Function to multiply two numbers
function Multiply-Numbers {
    param ($a, $b)
    return $a * $b
}

# Function to divide two numbers
function Divide-Numbers {
    param ($a, $b)
    if ($b -eq 0) {
        return "Error: Division by zero"
    }
    return $a / $b
}

# Read two integers from the user
$a = Read-Host "Enter the first integer" | ForEach-Object { [int]$_ }
$b = Read-Host "Enter the second integer" | ForEach-Object { [int]$_ }

# Perform arithmetic operations
Write-Host "Addition: $(Add-Numbers -a $a -b $b)"
Write-Host "Subtraction: $(Subtract-Numbers -a $a -b $b)"
Write-Host "Multiplication: $(Multiply-Numbers -a $a -b $b)"
Write-Host "Division: $(Divide-Numbers -a $a -b $b)"
