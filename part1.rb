def palindrome?(str)
  #take string and remove chars and whitespace
  #downcase and reverse it
  @string = str
  a = @string.gsub(/[\s\W+]/, "").downcase
  b = a.reverse
  a == b
end

def count_words(str)
  #Split each string into it's component words
  #For each word:
  #Check if the val exsists in the hash (.uniq)
  #  if it is uniq push each key to a hash with a starting val of 1
  #  if it is already in the hash
  #  increment the hash key vals +1 for each instance of the word
  ary_of_str = str.downcase.gsub(/[\W+]/, " ").split(' ')
  unique_ary = ary_of_str.uniq
  answer_hash = Hash.new

  unique_ary.each do |word|
  	answer_hash[word] = 0
  end

  ary_of_str.each do |word|
  	answer_hash[word] += 1
  end

  p answer_hash

end

#p palindrome?("These are bananas")
#p palindrome?("Madam, I'm Adam!")
#p palindrome?("A man, a plan, a canal -- Panama")

count_words "This is bananas Bananas"
count_words "A man, a plan, a canal -- Panama"