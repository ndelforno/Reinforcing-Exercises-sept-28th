

hash = Hash.new
[[nil, "Pumpkin", nil, nil],["Socks", nil, "Mimi", nil],["Gismo", "Shadow", nil, nil],["Smokey","Toast","Pacha","Mau"]].each_with_index{ |item,index|
  hash[index + 1] = item
}

hash

hash.each do |k,v|
  count = 1
  v.each do |num|
    if num == nil
      puts "row #{k} seat #{count} is free. Do you want to sit there?"
      user_answer = gets.chomp
    end
    if user_answer == "y"
      puts "what is your name ?"
      user_name = gets.chomp
      v[count- 1] = user_name
    end
    count = count + 1
  end
end

# puts "what is your name ?"
# user_name = gets.chomp

p hash
