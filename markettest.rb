require 'http'

response = HTTP.get("https://data.ny.gov/resource/xjya-f8ng.json")

markets = response.parse(:json)

p "What's the first name of the Farmers Market you are looking for?"
answer = gets.chomp
array = []
markets.each do |market|
  if answer == "Veggie"
    array << market["market_name"][0..5] == answer
  end
end

pp array
