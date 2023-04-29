defmodule Hello do

def main do
  do_stuff()
end

def do_stuff do
  IO.puts "Factorial of 1000: #{factorial(1000)}"
end

def factorial(num) do
  if num <= 1 do 
    1
  else
    result = num * factorial(num - 1)
    result
  end
end

end #module
