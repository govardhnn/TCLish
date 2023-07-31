puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
puts "Hi, this is a basic syntax overview, to get started with TCL scripting"
puts "Compile this file using `tclsh <filename>.tcl`and feel free to modify"
puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
puts "====PUTS===="
puts "You use 'puts' to display srings to the terminal"
puts "Using either double quotes"
# this is a comment
puts {or curly braces} ; # always use semi-colons if you are writing a comment on the same line
puts "====SET===="
puts "In TCL everything is represented as a string, and can be assigned to a variable, to be invoked/used later"
puts "Setting a variable NUM which is assigned 10, and displayed on the terminal"
set NUM 10
puts $NUM
puts " Single quotes will substitute the NUM value -> $NUM"
puts { Double quotes wont substitute the NUM value -> $NUM}
# the following section of the script will containt backslash sequences
puts "====\[SQUARE BRACES\]===="
set out [set in "bracetting"]
puts "out = $out and in = $in"
