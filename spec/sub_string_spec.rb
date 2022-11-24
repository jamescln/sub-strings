require 'spec_helper'
require_relative '../main/sub_string'

dictionary = ['hello', 'hi', 'welcome', 'greetings', 'rest', 'rejoice', 'weary', 'celebrate']

RSpec.describe 'Sub String' do
    
    describe 'exercise using set dictionary' do

        it 'will return a hash with one key-value pair when given a word' do
            expect(substring_compare('hello', dictionary)).to eq("hello" => 1)
        end

        it 'will return hash of two key-value pairs when given two words' do
            expect(substring_compare('hello greetings', dictionary)).to eq("hello" => 1, "greetings" => 1)
        end
    end
end