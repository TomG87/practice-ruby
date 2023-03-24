require 'http'

p "enter your word"
word = "banana"



response = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=")

definitions = response.parse(:json)

# pp definition
# top example 
response = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/topExample?useCanonical=false&api_key=")
top_example = response.parse(:json)
top_example = top_example['text']

# pronunciation
response = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/pronunciations?useCanonical=false&limit=50&api_key=")
pronunciations = response.parse(:json)
# pronunciation =  pronunciations[0]['raw']


p "Here is some information about the word #{word}"
p "here are the definitions"
definitions.each do |definition|
  if definition['text']
    p definition['text']
  end 
end
p ""
p ""
p ""
p ""
p ""
p ""
p "HERE'S THE TOP EXAMPLE"
p top_example

p ""
p ""
p ""
p ""
p ""
p "HERE ARE THE PRONUNCIATIONS"
pronunciations.each do |pronunciation|  
  p pronunciation['raw']
end




# do loop and show multiple definitions