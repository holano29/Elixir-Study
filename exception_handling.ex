defmodule Hello do

def main do
  do_stuff()
end

def do_stuff do

  err = try do
    5 / 0
  rescue
    ArithmeticError -> "Can't divide by zero."
  end

  IO.puts err
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
