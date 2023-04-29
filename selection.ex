defmodule Hello do

def main do
  do_stuff()
end

def do_stuff do

  age = 16

  if age >= 18 do
    IO.puts "Can vote."
  else
    IO.puts "Can't vote."
  end

  unless age === 18 do
    IO.puts "You can't vote."
  else
    IO.puts "You can vote."
  end

  # will execute only the first match
  # so think the logical order of the conditions
  cond do
    age >= 18 -> IO.puts "You can vote."
    age >= 16 -> IO.puts "You can drive."
    age >= 14 -> IO.puts "You can wait."
    true -> IO.puts "Default"
  end

end #data_stuff

end #module
