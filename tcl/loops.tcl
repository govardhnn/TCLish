set a 4
for {set i 0} {$i < 10} {incr i} {
    puts "I inside loop $i"
    if {$i == $a} {
	puts "a encountered"
	break;
    }
}
