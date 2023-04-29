defmodule Hello do

def main do
  do_stuff()
end

def do_stuff do

  my_stats = {175, 6.25, :Juan}

  # check if tupe
  IO.puts "Tuple: #{ is_tuple(my_stats) }"

  # appending element
  my_stats2 = Tuple.append(my_stats, 42)

  # get element on index
  IO.puts "Age #{ elem(my_stats2, 3) }"

  # get tuple size
  IO.puts "Size: #{ tuple_size(my_stats2) }"

  # delete element on specified index
  my_stats3 = Tuple.delete_at(my_stats2, 0)

  # insert element on specified index
  # tuple_variable, index, data_to_insert
  my_stats4 = Tuple.insert_at(my_stats3, 0, 1994)

  # create tuple duplicate elements
  # data, count
  many_zeroes = Tuple.duplicate(0, 5)

  # pattern matching usin Tuple
  {weight, height, name} = {175, 6.25, "Juan"}

  IO.puts "Weight: #{ weight }"
  IO.puts "Height: #{ height }"
  IO.puts "Name: #{ name }"

end #data_stuff

end #module
