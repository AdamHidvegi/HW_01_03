# Exercise C
#
# Given the following data structure:

united_kingdom = [
  {
    name: "Scotland",
    population: 5295000,
    capital: "Edinburgh"
  },
  {
    name: "Wales",
    population: 3063000,
    capital: "Swansea"
  },
  {
    name: "England",
    population: 53010000,
    capital: "London"
  }
]

# Complete these tasks:
#
# Change the capital of Wales from "Swansea" to "Cardiff".
united_kingdom[1][:capital] = "Cardiff"
result = united_kingdom[1][:capital]
p "The capital of Wales is: #{result}."

# Create a Hash for Northern Ireland and add it to the united_kingdom array (The capital is Belfast, and the population is 1,811,000).
united_kingdom[3] = {name: "Northern Ireland", population: 1811000, capital: "Belfast"}
result = united_kingdom[3]
p "Here is the new hash for the united_kingdom array: #{result}."

# Use a loop to print the names of all the countries in the UK.
p "Here are the names of the countries in the UK: "
countries = Array.new
for country in united_kingdom
  countries << country[:name]
end
p countries

# # Use a loop to find the total population of the UK.
pop = 0
for country in united_kingdom
  pop += country[:population]
end
p "The total population of the UK is: #{pop}"
