set Y [expr {[set A [expr {4 + 1}]] + 2}] 

puts "TCL CMD: set Y \[expr \{\[set A \[expr \{4 + 1\}\]\] + 2\}\]" 

puts "A = $A"

puts "Y = $Y"

############

set PR [expr {sqrt{$A}}]
puts $PR


