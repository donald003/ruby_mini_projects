def substrings(text, dictionary)
    matches = {}
    lowercase = text.downcase
    dictionary.each do |word|
        matches[word] = lowercase.scan(/(?=#{word})/).count if lowercase.include?(word)
    end
    matches
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
puts substrings("below", dictionary)