puts "File Access examples"
puts "commands\t exec pwd, info, file normalize, file dirname\n"
set pwd_path [exec pwd]
puts "pwd_path is 'exec pwd'"
puts "PWD Path => $pwd_path" 
set current_directory [info script]
puts "current_directory is '[info script]'"
puts "Current Directory => $current_directory\n"
set full_path [file normalize [info script]]
puts "full_path is 'file normalize [info script]'"
puts "Full Path => $full_path\n"
set only_directory [file dirname [file normalize [info script]]]
puts "only_directory is 'file dirname [file normalize [info script]]'"
puts "Only Directory => $only_directory\n"
puts "===========rought work=============="
#set filesn [list \
#		[file normalize "$(HOME)/github/TCLish/tcl/file_access.tcl"] \
#		[file normalize "$(HOME)/github/TCLish/tcl/expr_pr.tcl"]
#	   ]
#puts $filesn
		 
