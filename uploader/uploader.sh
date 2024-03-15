#!/usr/bin/expect

spawn sftp <SSH_NAME>

expect ">"
puts "Welcome to sftp connection"

set watch_path ""
set changelog_file_path ""
set initialHash [exec md5 $watch_path]

while {true} {
  set currentHash [exec md5 $watch_path]

  if {$initialHash != $currentHash} {
    set file [open $changelog_file_path]

    while {[gets $file line] != -1} {
      expect ">"
      send "put ./$line ./data/$line\r"
    }

    set initialHash $currentHash
  }

  sleep 1
}
