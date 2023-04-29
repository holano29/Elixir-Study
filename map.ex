defmodule Hello do

def main do
  do_stuff()
end

def do_stuff do
  # map is a key:value pair structure
  capitals = %{"Alabama" => "Montgomery",
    "Alaska" => "Juneua", "Arizona" => "Phoenix"
  }

  # access values using keys
  IO.puts "Capital of Alaska is #{ capitals["Alaska"] }"

  # atom as key
  capitals2 = %{alabama: "Montgomery", alaska: "Juneua", arizona: "Phoenix"}

  IO.puts "Capital of Arizona is #{ capitals2.arizona }"

  # insert new key-value pair
  # need to create new map
  capitals3 = Map.put_new(capitals, "Arkansas", "Little Rock")

  #IO.inspect capitals3
end #do_stuff

def display_list([word | words]) do
  IO.puts word
  display_list(words)
end

def display_list([]), do: nil

end #module
