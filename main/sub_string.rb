require 'pry-byebug'

def substring_compare(content, dictionary)
    substring_array = content.downcase.split(" "); #make content lower case then convert to an array
    dictionary_array = dictionary.map{|i| i.downcase} #convert dictionary to lowercase
    match_array = [] # create empty array to push elements to
    for i in 0..(substring_array.length-1) do
        for j in 0..(dictionary_array.length-1) do
            if substring_array[i] == dictionary_array[j]
                match_array << dictionary_array[j] # push matching elements to array
            end
        end
    end
    match_tally = {} # create empty hash to fill with the tally enumerable
    return match_tally = match_array.tally(match_tally)
end

test = substring_compare("Hello Test", ['HelLo', 'cHeck']);