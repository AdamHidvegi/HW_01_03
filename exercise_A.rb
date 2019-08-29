# Exercise A
#
# Given the following data structure:
#
stops = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]

# Complete these tasks:
#
## Add "Edinburgh Waverley" to the end of the array
stops.push("Edinburgh Waverley")

## Add "Glasgow Queen St" to the start of the array
stops.unshift("Glasgow Queen St")

## Add "Polmont" at the appropriate point (between "Falkirk High" and "Linlithgow")
stops.insert(4, "Polmont")

## Work out the index position of "Linlithgow"
result = stops.index("Linlithgow")
p "The index position of Linlithgow at this point is: #{result}."

## Remove "Livingston" from the array using its name
stops.delete("Livingston")

## Delete "Cumbernauld" from the array by index
stops.delete_at(2)

## How many stops there are in the array?
result = stops.count
p "At this point there are #{result} stops in the array."

# How many ways can we return "Falkirk High" from the array?
result1 = stops[2]
result2 = stops[-5]
p "We can return Falkirk High from the array at least on two different ways: #{result1} and #{result2}."

## Reverse the positions of the stops in the array
stops.reverse!

# Print out all the stops using a for loop
for stop in stops
  p stop
end
