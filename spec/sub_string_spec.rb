require 'spec_helper'
require_relative '../main/sub_string'

dictionary = ['hello', 'hi', 'welcome', 'greetings', 'rest', 'rejoice', 'weary', 'celebrate']

RSpec.describe 'Sub String' do
    
    describe 'Substring exercise using set dictionary' do
        it 'returns hash of two key-value pairs' do
            expext(substring_compare('hello greetings', dictionary)).to eq("hello" => 1, "greetings" => 1)
        end
    end
end