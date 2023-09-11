puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
puts "Math Expressions Overview in TCL"
puts "Compile this file using `tclsh <filename>.tcl` and feel free to modify"
puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"

# Arithmetic Operations
set a 10
set b 3
puts "====ARITHMETIC OPERATIONS===="
puts "a = $a, b = $b"
puts "a + b = [expr $a + $b]"
puts "a - b = [expr $a - $b]"
puts "a * b = [expr $a * $b]"
puts "a / b = [expr $a / $b]"
puts "a % b = [expr $a % $b]"

# Exponentiation
puts "\n====EXPONENTIATION===="
set base 2
set exponent 3
puts "base = $base, exponent = $exponent"
puts "$base raised to the power of $exponent = [expr {pow($base, $exponent)}]"

# Square Root
puts "\n====SQUARE ROOT===="
set num 16
puts "Square root of $num = [expr {sqrt($num)}]"

# Logarithms
puts "\n====LOGARITHMS===="
set x 100
puts "Natural logarithm (base e) of $x = [expr {log($x)}]"
puts "Log base 10 of $x = [expr {log10($x)}]"

# Trigonometric Functions
puts "\n====TRIGONOMETRIC FUNCTIONS===="
set angle_degrees 30
set angle_radians [expr {($angle_degrees * 3.14159) / 180}]
puts "Sine of $angle_degrees degrees = [expr {sin($angle_radians)}]"
puts "Cosine of $angle_degrees degrees = [expr {cos($angle_radians)}]"
puts "Tangent of $angle_degrees degrees = [expr {tan($angle_radians)}]"

# Random Number Generation
puts "\n====RANDOM NUMBER GENERATION===="
set random_number [expr {int(rand() * 100)}]
puts "Random number between 0 and 100: $random_number"
