require 'pry'
def starts_with_a_vowel?(word)
  # \b start with a word boundary = start with 
  if word.match(/\A[aeiouAEIOU]/) != nil 
    true 
  else
    false
  end
end

def words_starting_with_un_and_ending_with_ing(text)
  text.split.select do |word|
    if word.match(/bun|ing\b/) != nil 
      word
    end
  end
end

def words_five_letters_long(text)
  text.split.select do |word|
   if word.scan(/[a-z]|[A-Z]/).length == 5 
     word
   end
 end
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  text.scan(/\A[A-Z]|\.\z/).length == 2
end

def valid_phone_number?(phone)
  phone.scan(/[\d\s()-]/).join == phone
end
