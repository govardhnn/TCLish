set num 0
set inputfile [ open "text.txt" r]
while { [gets $inputfile words] > 0 } {
    incr num
    puts $words
}
puts "Number of lines is $num"
