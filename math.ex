defmodule Hello do

def main do
  do_stuff()
end

def do_stuff do
  IO.puts "5 + 4 =  #{ 5 + 4 }"
  IO.puts "5 - 4 =  #{ 5 - 4 }"
  IO.puts "5 * 4 =  #{ 5 * 4 }"
  IO.puts "5 / 4 =  #{ 5 / 4 }"
  IO.puts "5 div 4 =  #{ div 5, 4 }" # integer division
  IO.puts "5 rem 4 =  #{ rem 5, 4 }" # modulus
end

end
