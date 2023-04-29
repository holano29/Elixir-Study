defmodule Hello do

def main do
  do_stuff()
end

def do_stuff do

  # double each element and return as new list
  dbl_list = for n <- [1, 2, 3], do: n * 2
  IO.inspect dbl_list

  # list only even numbers
  #              element  list          condition       what to do
  even_list = for n <- [1, 2, 3, 4, 5], rem(n, 2) == 0, do: n
  IO.inspect even_list


end

def sum([]), do: 0

# def sum([h | t]), do h + sum(t)
def sum([h | t]) do
  h + sum(t)
end

def loop(0, _), do: nil


def loop(max, min) do 
  if max < min do
    loop(0,  min)
  else
    IO.puts "Num: #{max}"
    loop(max - 1, min)
  end
end

end #module
