defmodule Hello do

def main do
  do_stuff()
end

def do_stuff do

  # defining anonymous function
  get_sum = fn (x, y) -> x + y end

  # calling anonymous function
  IO.puts "5 + 5 = #{get_sum.(5, 5)}"

  # short hand way of defining anonymous function
  get_less = &(&1 - &2)

  IO.puts "7 - 6 = #{get_less.(7, 6)}"

  # defining anonymous function that accepts 
  # different number of parameters
  add_sum = fn 
    {x, y} -> IO.puts "#{x} + #{y} = #{x + y}"
    {x, y, z} -> IO.puts "#{x} + #{y} + #{z} = #{x + y + z}"
  end

  # default parameter
  IO.puts do_it()

  # call the function
  add_sum.({5, 6})
  add_sum.({4, 5, 6})
  
end #do_stuff

# default parameter
def do_it(x \\ 1, y \\ 1) do
  x + y
end

end #module
