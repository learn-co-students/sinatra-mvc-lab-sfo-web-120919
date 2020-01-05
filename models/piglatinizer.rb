class PigLatinizer

    def is_vowel(letter)
       letter = letter.downcase
       letter == 'a' || letter == 'i' || letter == 'o' || letter == 'u' || letter == 'e'
    end 

    def first_consonant_group_index(letters)
      letters.each_with_index do |letter, index|
        if is_vowel(letter)
          return index
        end 
      end 
      return nil
    end 

    def piglatinize_word(word)
       letters = word.split("")
       if is_vowel(letters[0])
         return letters.join + "way"
       else 
         removed = letters.slice!(0...first_consonant_group_index(letters)).join()
         return letters.join + removed + 'ay'
          
       end 
    end  

    def piglatinize(words)
        words_arr = words.split(" ")
        words_arr.map {|word| piglatinize_word(word)}.join(" ")
        
    end 

    

    

end 