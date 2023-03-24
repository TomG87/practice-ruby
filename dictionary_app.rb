p "Please enter a word and I will provide you the definition"
answer = gets.chomp.times do
require 'http'

response = HTTP.get("https://api.wordnik.com/v4/word.json/#{answer}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=48dd829661f515d5abc0d03197a00582e888cc7da2484d5c7")

words = response.parse(:json)
words.each do |word|
  pp word 
end



# p "The definition of your word is #{answer}."


# pp words[0]["word"]





# Build a terminal dictionary app
# Create a new ruby file called dictionary_app.rb
# The program should ask the user to enter a word, then use the wordnik API to show the word’s definition: https://developer.wordnik.com/docs#!/word/getDefinitions
# Once that works, have it also display the top example and pronunciation (browse through the documentation to the top example and pronunciation).
# Bonus: Write your program in a loop such that the user can keep entering new words without having to restart the program. Give them the option of entering q to quit.