require 'pry-byebug'

def substring_compare(content, dictionary)
    substring_array = content.split(" "); #convert content to an array
    match_array = []
    for i in 0..(substring_array.length-1) do
        for j in 0..(dictionary.length-1) do
            if substring_array[i] == dictionary[j]
                match_array << dictionary[j]
            end
        end
    end
    match_tally = {}
    return match_tally = match_array.tally(match_tally)
    #substring_tally = {}
    #dictionary_tally = {}
    #substring_tally = substring_array.tally(substring_tally).to_a
    #dictionary_tally = dictionary.tally(dictionary_tally).to_a
    #return substring_tally.intersection(dictionary_tally).to_h
end

test = substring_compare("hello test", ['hello', 'check']);