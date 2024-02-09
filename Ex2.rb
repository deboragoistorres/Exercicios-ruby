puts "Choose your action (read/write/exit)"

action = gets.chomp

case action
when "read"
  puts "Read mode"
when "write"
  puts "write mode"
when "exit"
  puts "Goodbye"
else
  puts "Wrong action"
end

