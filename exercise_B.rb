#Exercise B

#Given the following data structure:

users = {
  "Jonathan" => {
    :twitter => "jonnyt",
    :lottery_numbers => [6, 12, 49, 33, 45, 20],
    :home_town => "Stirling",
    :pets => [
    {
      :name => "fluffy",
      :species => "cat"
    },
    {
      :name => "fido",
      :species => "dog"
    },
    {
      :name => "spike",
      :species => "dog"
    }
  ]
  },
  "Erik" => {
    :twitter => "eriksf",
    :lottery_numbers => [18, 34, 8, 11, 24],
    :home_town => "Linlithgow",
    :pets => [
    {
      :name => "nemo",
      :species => "fish"
    },
    {
      :name => "kevin",
      :species => "fish"
    },
    {
      :name => "spike",
      :species => "dog"
    },
    {
      :name => "rupert",
      :species => "parrot"
    }
  ]
  },
  "Avril" => {
    :twitter => "bridgpally",
    :lottery_numbers => [12, 14, 33, 38, 9, 25],
    :home_town => "Dunbar",
    :pets => [
      {
        :name => "monty",
        :species => "snake"
      }
    ]
  }
}
# Complete these tasks:
#
# Get Jonathan's Twitter handle (i.e. the string "jonnyt")
result = users["Jonathan"][:twitter]
p "Jonathan's Twitter handle is: #{result}."

# Get Erik's hometown
result = users["Erik"][:home_town]
p "Erik's hometown is: #{result}."

# Get the array of Erik's lottery numbers
result = users["Erik"][:lottery_numbers]
p "Erik's lottery numbers are: #{result}."

# Get the type of Avril's pet Monty
result = users["Avril"][:pets][0][:species]
p "Avril's pet Monty is a: #{result}"

# Get the smallest of Erik's lottery numbers
result = users["Erik"][:lottery_numbers].min
p "The smallest of Erik's lottery numbers is: #{result}."

# Return an array of Avril's lottery numbers that are even
result = users["Avril"][:lottery_numbers]
new_result = result.reject{|x| x % 2 != 0}
p "Avril's even lottery numbers are: #{new_result}."

# Erik is one lottery number short! Add the number 7 to be included in his lottery numbers
result = users["Erik"][:lottery_numbers]
new_result = result.push(7)
p "Here are Erik's new lottery numbers: #{new_result}"

# Change Erik's hometown to Edinburgh
users["Erik"][:home_town] = "Edinburgh"
result = users["Erik"][:home_town]
p "Erik's new home is: #{result}."

# Add a pet dog to Erik called "Fluffy"
users["Erik"][:pets] << {:name => "Fluffy"}
users["Erik"][:pets] << {:species => "dog"}
result = users["Erik"][:pets][4][:name]
p "Erik has a new dog, its name is: #{result}"

# Add another person to the users hash
users[:Adam] = "new user"
p "Please, meet with Adam, he is our: #{users[:Adam]}"
