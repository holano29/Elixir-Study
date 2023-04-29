defmodule Hello do

def main do
  do_stuff()
end

def do_stuff do

  # string declaration
  my_str = "My Sentence here"

  # get length of string
  IO.puts "Length of string #{ String.length(my_str)}"

  # string concatenation
  longer_str = my_str <> " " <> "is longer."

  IO.puts longer_str

  # check if is substring
  IO.puts "My? #{ String.contains?(my_str, "My") }"

  # return first character
  IO.puts "First character: #{ String.first(my_str) }"

  # return the character on the specified index
  IO.puts "Character on index 4: #{ String.at(my_str, 4) }"

  # get substring String.slice(variable, starting_index, number_of_characters)
  IO.puts "Substring: #{ String.slice(my_str, 3, 8) }"

  # convert string to list
  IO.inspect String.split(longer_str, " ")

  # reverse a string
  IO.puts String.reverse(longer_str)

  # convert to uppercase
  IO.puts String.upcase(longer_str)

  # convert to lowercase
  IO.puts String.downcase(longer_str)

  # capitalize
  IO.puts String.capitalize(longer_str)

  # piping values
  4 * 10 |> IO.puts





end

end
