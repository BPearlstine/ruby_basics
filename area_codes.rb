# print out list of city names
def get_city_names(phone_book)
  phone_book.each {|city, areacode| puts city}
end

# Get area code based on given hash and key
def get_area_code(phone_book, key)
  phone_book[key]
end

def main
  # hash of city => area code
  phone_book = {
    "new york" => 212,
    "miami" => 305,
    "raleigh" => 919
  }

  # as long as this var is 'y' you can keep looking up area codes
  continue_lookup = 'y'
  while continue_lookup == 'y'
    # check if they want to do the thing, and if not break out of loop
    puts "Do you want to lookup an area code based on a city (Y/N)"
    continue_lookup = gets.chomp.downcase
    if continue_lookup!= 'y'
      break
    end
    # print out all of the cities in the phone book 
    puts "Which city do you want the area code for?"
    20.times { print "-" } 
    puts
    get_city_names(phone_book)
    20.times { print "-" } 
    puts
    # grab selected city from input
    print "Enter selection: "
    selected_city = gets.chomp.downcase
    # find the related area_code and print out
    area_code = get_area_code(phone_book, selected_city)
    # check that the area code was found
    if area_code.nil?
      puts "Sorry the city #{selected_city} can't be found"
    else
      puts "#{selected_city}'s area code is #{area_code}"
    end
    puts
  end

end

main()