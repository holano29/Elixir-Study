defmodule Hello do

def main do
  do_stuff()
end

def do_stuff do
  IO.puts "4 == 4.0 #{ 4 == 4.0 }" # compare only the values
  IO.puts "4 === 4.0 #{ 4 === 4.0 }" # compare values and types
  IO.puts "4 != 4.0 #{ 4 != 4.0 }"
  IO.puts "4 !== 4.0 #{ 4 !== 4.0 }"

  IO.puts "5 > 4 #{ 5 > 4 }"
  IO.puts "5 >= 4 #{ 5 < 4 }"
  IO.puts "5 < 4 #{ 5 < 4 }"
  IO.puts "5 <= 4 #{ 5 < 4 }"

end

end
