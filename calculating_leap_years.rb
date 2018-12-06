def leap(year)

    if year % 400 == 0
        true
    elsif year % 100 == 0
        false
    elsif year % 4 == 0
        true
    else
        false
    end

end

puts "Please tell me a starting year"
a = gets.chomp.to_i
puts "Thank you. What a great choice! Now tell me the end year"
b = gets.chomp.to_i

puts "This are the following leap years:"

years = (a...b) 
years.each do |year|
    if leap(year)
        puts "#{year}" 
    end
end
