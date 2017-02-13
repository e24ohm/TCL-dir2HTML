#!/usr/bin/tcl
#
#


set dir "."
set out1 [glob -path $dir /*]
set sortOut [lsort -dictionary $out1]


set file_out [open fileout.html w+]
puts $file_out "<html>"
puts $file_out "-------------"
puts $file_out "<br>\n"

foreach line $sortOut {
  set line1 [file nativename $line]
  set line_trim [string trim $line "./"]
  #puts $line1
  puts $file_out "<a href=$line1>$line_trim</a><br>"
}
puts $file_out "</html>"
close $file_out
