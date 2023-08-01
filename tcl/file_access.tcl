puts "File Access examples"
puts "commands\tinfo, file normalize, file dirname\n"
set current_directory [info script]
puts "current_directory [info script]"
puts "Current Directory => $current_directory\n"
set full_path [file normalize [info script]]
puts "full_path is 'file normalize [info script]'"
puts "Full Path => $full_path\n"
set only_directory [file dirname [file normalize [info script]]]
puts "only_directory is 'file dirname [file normalize [info script]]'"
puts "Only Directory => $only_directory\n"
