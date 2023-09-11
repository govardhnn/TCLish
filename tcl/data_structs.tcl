puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
puts "Comprehensive Data Structures Overview in TCL"
puts "Compile this file using `tclsh <filename>.tcl` and feel free to modify"
puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"

# Lists
puts "====LISTS===="
set my_list {apple banana cherry}
puts "Original List: $my_list"
puts "Length of List: [llength $my_list]"
puts "First Element: [lindex $my_list 0]"
puts "Last Element: [lindex $my_list end]"

# Append to a List
set my_list [concat $my_list "date"]
puts "Updated List (with date): $my_list"

# Slice a List
set sliced_list [lrange $my_list 1 2]
puts "Sliced List (2nd and 3rd elements): $sliced_list"

# Arrays
puts "\n====ARRAYS===="
array set my_array {
    fruit1 apple
    fruit2 banana
    fruit3 cherry
}
puts "Original Array: [array get my_array]"
puts "Value for Key 'fruit2': $my_array(fruit2)"

# Update an Array Element
array set my_array {fruit2 orange}
puts "Updated Array: [array get my_array]"

# Delete an Element from an Array
unset my_array(fruit3)
puts "Array after deleting 'fruit3': [array get my_array]"

# Dictionaries
puts "\n====DICTIONARIES===="
set my_dict [dict create fruit1 apple fruit2 banana fruit3 cherry]
puts "Original Dictionary: $my_dict"
puts "Keys in Dictionary: [dict keys $my_dict]"
puts "Values in Dictionary: [dict values $my_dict]"

# Manipulating a Dictionary
dict set my_dict fruit4 "date"
dict unset my_dict fruit3
puts "Updated Dictionary: $my_dict"

# Nested Data Structures
puts "\n====NESTED DATA STRUCTURES===="
set nested_dict [dict create person [dict create name John age 30] car [dict create make Toyota model Camry]]
puts "Nested Dictionary: $nested_dict"
puts "Name of the person: [dict get $nested_dict person name]"

# Accessing Lists within a Dictionary
puts "\n====ACCESSING LISTS WITHIN A DICTIONARY===="
set my_dict_with_lists [dict create fruits [list apple banana cherry] colors [list red green blue]]
puts "Fruits: [dict get $my_dict_with_lists fruits]"
puts "Colors: [dict get $my_dict_with_lists colors]"

# Manipulating Lists within a Dictionary
dict set my_dict_with_lists fruits [lappend [dict get $my_dict_with_lists fruits] "orange"]
dict set my_dict_with_lists colors [lappend [dict get $my_dict_with_lists colors] "yellow"]
puts "Updated Dictionary: $my_dict_with_lists"
