movies = {
  "Avengers" => 4
  } 


puts "Would you like to add/update/display or delete a movie?" 
choice = gets.chomp

case choice 
  when "add" 
    puts "What movie would you like to add?" 
  	title = gets.chomp
  if 
    movies[title].nil?
  	puts "What rating is it? (0 to 4)" 
  	rating = gets.chomp 
  movies= { title.to_sym => rating.to_i}
  puts "#{title}, #{rating} was successfully added"
  else 
    puts "That movie already exists! Its rating is #{movies[rating]}!" 
  end
  when "update" 
  	puts "What movie would you like to update?"
  title = gets.chomp
  if 
    movies[title].nil? 
    puts "This movie is not in the library" 
  else 
    puts "What is the new rating?" 
    rating = gets.chomp 
    movies[title.to_sym] = rating.to_i 
    puts "#{title} has been updated with new rating of #{rating}."
  end
  when "display" 
  	movies.each do |movie, rating|
    puts "#{movie}: #{rating}"
  end  
  when "delete"
  	puts "Which movie would you like to delete?" 
  title = gets.chomp 
  if 
    movies[title].nil? 
    puts "This movie doesn't exist" 
  else
    movies.delete(title) 
    puts "#{title} has been deleted!" 
  end 
  else 
    puts "Error!" 
end  
