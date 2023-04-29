defmodule Hello do

def main do
  do_stuff()
end

def do_stuff do
  # creating processes
  spawn(fn() -> loop(50, 1) end)
  spawn(fn() -> loop(100, 50) end)

  # sending message to a process
  send(self(), {:french, "bob"})

  receive do
    {:german, name} -> IO.puts "Guten tag #{ name }"
    {:french, name} -> IO.puts "Bonjour #{ name }"
    {:english, name} -> IO.puts "Hello #{ name }"

  after 
    500 -> IO.puts "Time's up!"
  end

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
