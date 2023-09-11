puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
puts "Procedures Overview in TCL"
puts "Compile this file using `tclsh <filename>.tcl` and feel free to modify"
puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"

# Define a Procedure
proc greet {name} {
    puts "Hello, $name!"
}

# Call the Procedure
puts "====CALLING A PROCEDURE===="
greet "Govardhan"
greet "NotGovardhan"

# Procedure with Default Argument
proc greet_with_default {name {greeting "Hello"}} {
    puts "$greeting, $name!"
}

# Call Procedure with Default Argument
puts "\n====CALLING A PROCEDURE WITH DEFAULT ARGUMENT===="
greet_with_default "Manjunath"
greet_with_default "Ramesh" "Suresh"

# Procedure with Multiple Arguments
proc add {num1 num2} {
    return [expr {$num1 + $num2}]
}

# Call Procedure with Multiple Arguments
puts "\n====CALLING A PROCEDURE WITH MULTIPLE ARGUMENTS===="
set result [add 5 3]
puts "5 + 3 = $result"

# Procedure with Variable Number of Arguments
proc sum args {
    set total 0
    foreach arg $args {
        set total [expr {$total + $arg}]
    }
    return $total
}

# Call Procedure with Variable Number of Arguments
puts "\n====CALLING A PROCEDURE WITH VARIABLE NUMBER OF ARGUMENTS===="
set result [sum 1 2 3 4 5]
puts "Sum of 1, 2, 3, 4, and 5 = $result"


# Recursive Procedure (Factorial)
proc factorial {n} {
    if {$n == 0} {
        return 1
    } else {
        return [expr {$n * [factorial [expr $n - 1]]}]
    }
}

# Call Recursive Procedure
puts "\n====RECURSIVE PROCEDURE (FACTORIAL)===="
set result [factorial 5]
puts "Factorial of 5 = $result"

# Procedure with Global Variable
proc increment_counter {} {
    global counter
    incr counter
    return $counter
}

# Call Procedure with Global Variable
puts "\n====PROCEDURE WITH GLOBAL VARIABLE===="
set counter 0
puts "Counter: [increment_counter]"
puts "Counter: [increment_counter]"

# Procedure with Return Statement
proc divide {numerator denominator} {
    if {$denominator == 0} {
        error "Error: Division by zero"
    } else {
        return [expr {$numerator / $denominator}]
    }
}

# Call Procedure with Return Statement
puts "\n====PROCEDURE WITH RETURN STATEMENT===="
set result [divide 10 2]
puts "10 / 2 = $result"

# Procedure Aliasing (Rename)
proc multiply_by_2 {num} {
    return [expr {$num * 2}]
}
