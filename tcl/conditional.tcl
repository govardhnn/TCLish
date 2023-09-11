puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
puts "Conditional Expressions Overview in TCL"
puts "Compile this file using `tclsh <filename>.tcl` and feel free to modify"
puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"

# Comparison Operators
set a 10
set b 20
puts "====COMPARISON OPERATORS===="
puts "a = $a, b = $b"
puts "a == b is [expr {$a == $b}]"
puts "a != b is [expr {$a != $b}]"
puts "a < b is [expr {$a < $b}]"
puts "a > b is [expr {$a > $b}]"
puts "a <= b is [expr {$a <= $b}]"
puts "a >= b is [expr {$a >= $b}]"

# Logical Operators
set x 1
set y 0
puts "\n====LOGICAL OPERATORS===="
puts "x = $x, y = $y"
puts "x AND y is [expr {$x && $y}]"
puts "x OR y is [expr {$x || $y}]"
puts "NOT x is [expr {!$x}]"
puts "NOT y is [expr {!$y}]"

# Ternary Operator
set condition true
set result [expr {$condition ? "True Result" : "False Result"}]
puts "\n====TERNARY OPERATOR===="
puts "Condition: $condition"
puts "Result: $result"

# If-Else Statement
set num 15
puts "\n====IF-ELSE STATEMENT===="
if {$num % 2 == 0} {
    puts "$num is even"
} else {
    puts "$num is odd"
}

# Switch Statement
set day "Monday"
puts "\n====SWITCH STATEMENT===="
switch $day {
    "Monday" {
        puts "It's Mondayyy"
    }
    "Friday" {
        puts "It's Fridayy"
    }
    default {
        puts "It's just another day"
    }
}
