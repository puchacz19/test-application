cities = {
  "New York" => "202",
  "Cracow" => "30-438",
  "London" => "1232",
  "Budapest" => "2332",
  "Madrid" => "9399",
  "Lisbon" => "00-222",
  "Rome" => "49-999",
  "Paris" => "101010",
  "Berlin" => "6969",
  "Tokio" => "22-00-2299"
}

def get_city_names(cities)
  cities.each {|k,v| puts k }    
end

def display(cities, city)
  puts "The code for this city is: " + cities[city]
end


loop do
  puts "Do you want to lookup an area code based on a city name (Y/N)"
  
  answer = gets.chomp
  if answer != "Y"
    break
  end
  puts "Which city do you want  to the area code?"
  get_city_names(cities)
  prompt = gets.chomp
  
  if cities.include?(prompt)
    display(cities, prompt)
  else
    puts "No city in dictionaty"
  end
  
end