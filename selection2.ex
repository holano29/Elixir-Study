defmodule Hello do

def main do
  do_stuff()
end

def do_stuff do

  age = 16

  # case statements
  case 2 do
    1 -> IO.puts "Entered 1"
    2 -> IO.puts "Entered 2"
    _ -> IO.puts "You can drive" # default
  end

  # ternary operator
  IO.puts "Ternary operator: #{ if age > 18, do: "Can vote", else: "Can't vote" }"

end #data_stuff

end #module
