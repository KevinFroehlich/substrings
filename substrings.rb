def substrings(sentence, dictionary)
    result = Hash.new(0)
    sentenceArr = sentence.split
    
dictionary.each do |word|
    sentenceArr.each do |w|
         matchCount = w.downcase.scan(word).length
        if matchCount > 0
            result[word] += matchCount
        end
    end
end
    result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
