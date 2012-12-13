
Signal.trap('USR2') do
  fork {
    puts "Dumping"
    require 'heap_dump'
    HeapDump.dump
    exit
  }
end
