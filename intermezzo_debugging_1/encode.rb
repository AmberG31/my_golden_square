# copied from another code, need to check the logic with coaches
def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars) # changed from exclusive ... to inclusive ..
  ciphertext_chars = plaintext.chars.map do |char|
    (65 + cipher.find_index(char)).chr
  end
  return ciphertext_chars.join
end


# not touched
def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  plaintext_chars = ciphertext.chars.map do |char|
    cipher[char.ord - 65] # minusing 65 from char rather than share from 65
  end
  return plaintext_chars.join
end

puts encode("theswiftfoxjumpedoverthelazydog", "secretkey")
puts "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"

puts decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
puts "theswiftfoxjumpedoverthelazydog"


# Intended output:
#
# > encode("theswiftfoxjumpedoverthelazydog", "secretkey")
# => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
#
# > decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
# => "theswiftfoxjumpedoverthelazydog"

