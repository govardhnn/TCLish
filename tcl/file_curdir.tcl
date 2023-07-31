# This buffer is for text that is not saved, and for Lisp evaluation.
# To create a file, visit it with C-x C-f and enter text in its buffer.

global gl_dir

set curdir [file dirname [file normalize [info script]]]
puts "curdir gives $curdir"
set curdir [file normalize [info script]]
puts "curdir gives $curdir"
set curdir [info script]
puts "curdir gives $curdir"

#source $curdir/alternate.tcl ; #here I can invoke another tcl file from the same
#directory of this script

set homedir [exec pwd]
puts $homedir

set homedir [file dirname [file normalize [info script]]]
puts $homedir

set backdir [exec pwd]
puts $backdir



