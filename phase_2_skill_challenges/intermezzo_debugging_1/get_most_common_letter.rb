def get_most_common_letter(text)
  counter = Hash.new(0)
  text.chars.each do |char|
    counter[char] += 1
  end
  # p counter
  p counter.to_a.sort_by { |k, v| v }
 #  p counter.to_a.sort_by { |k, v| v }[0][0]
    counter.to_a.sort_by { |k, v| v }[-2][0] # arrays is sorted descending, we are grabbing the second to last character as the 1st one is a space.
end


p "Expected 'o' but get #{get_most_common_letter("the roof, the roof, the roof is on fire!")}"


# Intended output:
# 
# > get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"


# def get_most_common_letter(text)
#   counter = Hash.new(0)
#   text.chars.each do |char|
#     counter[char] += 1
#   end
#   counter.to_a.sort_by { |k, v| v }[0][0]
# end
