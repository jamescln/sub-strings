require 'pry-byebug'

# this was the recommended solution. My solution didn't return all valid
# substrings, as I didn't consider the substrings within whole words.
# debugging this code has taught me about the scan method as well as other
# string operations such as match. 

def substring_compare(content, dictionary)
    result = {}
    lowered_text = content.downcase
    dictionary.each do |i|
        match = lowered_text.scan(i).length
        result[i] = match unless match == 0
    end
    binding.pry
    return result
end

dictionary = ["this", "is", "a", "test"]
substring_compare("this test", dictionary)