require 'spec_helper'
require_relative '../main/sub_string'

dictionary = ['hello', 'hi', 'welcome', 'welcome', 'greetings', 'rest', 'rejoice', 'weary', 'celebrate']

RSpec.describe 'Sub String' do
    
    describe 'exercise using set dictionary' do

        it 'will return a hash with one key-value pair when given a word' do
            expect(substring_compare('hello', dictionary)).to eq("hello" => 1)
        end

        it 'will return hash of two key-value pairs when given multiple words' do
            expect(substring_compare('hello greetings how when where', dictionary)).to eq("hello" => 1, "greetings" => 1)
        end

        it "will return with no errors when input case doesn't match dictionary" do
            expect(substring_compare('hEllO WeLcOme', dictionary)).to eq("hello" => 1, "welcome" => 2)
        end

        it 'will return with no errors when duplicate words exist in the dictionary' do
            expect(substring_compare('welcome', dictionary)).to eq("welcome" => 2)
        end
    end
end