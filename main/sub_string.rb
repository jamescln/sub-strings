require 'pry-byebug'

def substring_compare(content, dictionary)
    substring_array = content.split(" "); #convert content to an array
    # will likely use the to_h method on nested array
    common_words = substring_array.intersection(dictionary)
    binding.pry
end

test = substring_compare("hello test", ['hello', 'check']);