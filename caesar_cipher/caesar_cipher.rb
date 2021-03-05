def caesar_cipher(string, code)
  lowercase_alphabet = ('a'..'z').to_a
  uppercase_alphabet = ('A'..'Z').to_a

  cipher_array =string.split("").map do |char|
    if lowercase_alphabet.include?(char)
      old_idx = lowercase_alphabet.index(char)
      new_idx = ( old_idx + code ) % lowercase_alphabet.length
      lowercase_alphabet[new_idx]
    elsif uppercase_alphabet.include?(char)
      old_idx = uppercase_alphabet.index(char)
      new_idx = ( old_idx + code ) % uppercase_alphabet.length
      uppercase_alphabet[new_idx]
    else
      char
    end
  end

  cipher_array.join("")
end

puts caesar_cipher("What a string!", 5)