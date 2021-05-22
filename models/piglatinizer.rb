require "pry"

class PigLatinizer
    def piglatinize(str)
        str.split(" ").map do |word|
            vowel = "aeiouAEIOU"
            if vowel.include?(word[0])
                word + "way"
            else
                new_vowel = word.split("").detect {|letter| vowel.include?(letter)}
                vowel_index = word.index(new_vowel)
                const = word.slice(0...vowel_index)
                leftovers = word.slice(vowel_index..)
                leftovers + const + "ay"
            end
        end.join(" ")
    end
end
