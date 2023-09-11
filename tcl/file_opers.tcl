puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
puts "File Operations and I/O Overview in TCL"
puts "Compile this file using `tclsh <filename>.tcl` and feel free to modify"
puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"

# Write to a File
puts "====WRITE TO A FILE===="
set file_handle [open "output.txt" "w"]
puts $file_handle "Hello, this is a test."
puts $file_handle "Writing to a file in TCL."
close $file_handle

# Read from a File
puts "\n====READ FROM A FILE===="
set file_handle [open "output.txt" "r"]
set content [read $file_handle]
close $file_handle
puts $content

# Append to a File
puts "\n====APPEND TO A FILE===="
set file_handle [open "output.txt" "a"]
puts $file_handle "Appending to an existing file."
close $file_handle

# File Exists and Delete File
puts "\n====FILE EXISTS AND DELETE FILE===="
set file_path "output.txt"
if {[file exists $file_path]} {
    puts "File '$file_path' exists."
    file delete $file_path
    puts "File '$file_path' deleted."
} else {
    puts "File '$file_path' does not exist."
}

# Working with Directories
puts "\n====WORKING WITH DIRECTORIES===="
set dir_path "test_directory"
file mkdir $dir_path
puts "Directory '$dir_path' created."

# List Files in a Directory
set files [glob "$dir_path/*"]
puts "Files in directory '$dir_path':"
foreach file $files {
    puts [file tail $file]
}

# Rename and Copy Files
puts "\n====RENAME AND COPY FILES===="
set original_file "$dir_path/test.txt"
set new_file "$dir_path/renamed_test.txt"
set copied_file "$dir_path/copied_test.txt"

file copy $original_file $copied_file
puts "File '$original_file' copied to '$copied_file'."

file rename $original_file $new_file
puts "File '$original_file' renamed to '$new_file'."
