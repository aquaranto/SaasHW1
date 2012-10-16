def combine_anagrams(words)
  # get a list of the unique letters from the frist word in the array
  # join the combinations and see if they match words in the array. 
  # Build array of arrays
  a = []
  b = []
  final_solution = []
  words.each do |word|
   a << word.downcase.split('')
   b << word.downcase.split('').sort
  end
	
	p a
	z =  b[0].permutation(b[0].length).to_a

	if a[0].sort == a[3].sort
		final_solution << a[0]
		final_solution << a[3]
	end
	p final_solution

end

words = ['cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream']
combine_anagrams(words)