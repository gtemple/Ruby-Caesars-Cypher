puts 'Allow me to pass your message through a Caesar\'s Cypher.'
puts 'Please input the message you would like me to change.'
str = gets.chomp
puts 'Now please input how many places up thealphabet you would 
like your message modified to.'
n = gets.chomp.to_i

def wraps_big(char) #Wraps captialized characters with recursion
    if char > 90
        wraps_big(65 + (char - 91))
    else
        char
    end
end

def wraps_small(char) #Wraps small characters with recursion
    if char > 122
        wraps_small(97 + (char - 123))
    else
        char
    end
end

ascii = str.bytes #turns letters into ASCII
newStr = ascii.map do |letter|
    if letter >= 97 && letter <= 122
        letter = wraps_small(letter + n).chr
    elsif letter >= 65 && letter <= 90
        letter = wraps_big(letter + n).chr
    else
        letter.chr #If the letter is not a part of the alphabet, it will return it as is.
    end
end
.join('')

puts "#{str} moved #{n} places is #{newStr}"
