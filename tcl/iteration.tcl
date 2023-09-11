puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
puts "Iteration Overview in TCL"
puts "Compile this file using `tclsh <filename>.tcl` and feel free to modify"
puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"

# While Loop with Break and Continue
puts "====WHILE LOOP WITH BREAK AND CONTINUE===="
set count 1
while {$count <= 10} {
    if {$count == 3} {
        puts "Skipping count 3"
        incr count
        continue
    }
    if {$count == 8} {
        puts "Breaking at count 8"
        break
    }
    puts "Count is $count"
    incr count
}

# For Loop with Step
puts "\n====FOR LOOP WITH STEP===="
for {set i 0} {$i < 10} {incr i 2} {
    puts "Iteration $i"
}

# Nested Loops with Conditions
puts "\n====NESTED LOOPS WITH CONDITIONS===="
for {set i 1} {$i <= 3} {incr i} {
    for {set j 1} {$j <= 3} {incr j} {
        if {$i == $j} {
            puts "($i, $j) - Skipped"
            continue
        }
        puts "($i, $j)"
    }
}

# Looping through a List of Lists
puts "\n====LOOPING THROUGH A LIST OF LISTS===="
set matrix {{1 2 3} {4 5 6} {7 8 9}}
foreach row $matrix {
    foreach element $row {
        puts -nonewline "$element "
    }
    puts ""
}

# Generating a Fibonacci Sequence
puts "\n====GENERATING A FIBONACCI SEQUENCE===="
set fib1 0
set fib2 1
set n 10
puts "Fibonacci sequence up to $n terms:"
for {set i 0} {$i < $n} {incr i} {
    # prints in the same line
    puts -nonewline "$fib1 "
    set next_fib [expr {$fib1 + $fib2}]
    set fib1 $fib2
    set fib2 $next_fib
}
puts "\n"
