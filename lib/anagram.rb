class Anagram
    attr_accessor :word
    def initialize(word)
        @word = word
    end
    def match(anagram_array)
        new_array = anagram_array.map do |anagram_word|
            if anagram_word.split("").sort == word.split("").sort
                anagram_word
            end
        end
        new_array.compact
    end
end