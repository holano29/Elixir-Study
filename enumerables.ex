defmodule Hello do

def main do
  do_stuff()
end

def do_stuff do
  # first argument is enumerables, second is a function
  # Here we want to check if all of the elements of the list are even or not
  IO.puts "Even List: #{Enum.all?([1, 2, 3, 4, 5], fn(n) -> rem(n, 2 ) == 0 end)}"

  # Here we want to check if there is any elements that is even
  IO.puts "Even List: #{Enum.any?([1, 2, 3, 4, 5], fn(n) -> rem(n, 2 ) == 0 end)}"

  Enum.each([1, 2, 3, 4, 5], fn(n) -> IO.puts n end)

  # double each element of the list using map
  double_list = Enum.map([1, 2, 3, 4, 5], fn(n) -> n * 2 end)
  IO.inspect double_list

  # sum all values, using reduce
  sum_values = Enum.reduce([1, 2, 3, 4, 5], fn(n, sum) -> n + sum end )

  IO.puts "Sum: #{sum_values}"

  # display only the unique element
  IO.inspect Enum.uniq([1, 2, 2])




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
