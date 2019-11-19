class PigLatinizer
    # attr_accessor :user_phrase
    # def initialize
    #     @user_phrase = user_phrase.downcase
    # end

    def piglatinize(user_phrase)
        char_arr = []
        converted_string = ""

        arr = user_phrase.split(" ")

        arr.each do |word|
            char_arr = word.split("")
            char_string = ""
            char_arr.each do |c|
                if c.scan(/[bcdfghjklmnpqrstvwxyz]/).size > 0 || c.scan(/[BCDFGHJKLMNPQRSTVWXYZ]/).size > 0
                    char_string += c 
                else
                    break
                end
            end

            converted_string = converted_string + word[char_string.size..-1] + char_string + (char_string.empty? ? "way " : "ay ")
            # binding.pry
        end
        converted_string.strip
    end

end
