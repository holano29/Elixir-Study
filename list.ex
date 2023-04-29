defmodule Hello do

def main do
  do_stuff()
end

def do_stuff do

  list1  = [1, 2, 3]
  list2 = [4, 5, 6]

  # concatenate lists
  list3 = list1 ++ list2

  # subtract list
  list4 = list3 -- list1

  # verify if item is on the list
  IO.puts 6 in list4

  # get the head or the first element of the list
  [head | tail] = list3

  # puts add new line
  IO.puts "Head: #{head}"

  # write does not add new line
  IO.write "Tail: "

  # show representation of collections
  IO.inspect tail
 
  # printing as list not as character
  IO.inspect [97, 98], charlists: :as_lists

  # enumerate over list
  Enum.each tail, fn item -> IO.write "#{item}, " end

  IO.puts ""

  words = ["Random", "words", "in", "a", "list"]

  # lambda function
  Enum.each words, fn word ->
    IO.puts word
  end

  display_list(words)

  # delete items from a list
  # List.delete(list, item_to_delete)
  IO.puts display_list(List.delete(words, "Random"))

  # deleting element on specific index
  # list, index_of_item_to_delete
  IO.puts display_list(List.delete_at(words, 1))

  # List.insert_at(list, index, item)
  IO.puts display_list(List.insert_at(words, 4, "Yeah"))

  # get first item of the list
  IO.puts List.first(words)

  # get the last item
  IO.puts List.last(words)

  # creating a list of key:value pairs
  my_stat = [name: "Juan", height: 6.25]

  IO.inspect my_stat

end #data_stuff

# recursion
def display_list([word | words]) do
  IO.puts word
  display_list(words)
end

# remember to always indicate the base case
# you don't need to add keyword end if you are
# using the alternative syntax for defining function
def display_list([]), do: nil

end #module
