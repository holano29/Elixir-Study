defmodule Hello do

def main do
  do_stuff()
end

def do_stuff do

  # pattern matching with list
  [length, width] = [20, 30]

  IO.puts "Dimension is #{length} by #{width}."

  # _ means we don't care haha
  [_, [_, a]] = [20, [30, 40]]

  IO.puts "Num: #{a}"

end #do_stuff

def display_list([word | words]) do
  IO.puts word
  display_list(words)
end

def display_list([]), do: nil

end #module
