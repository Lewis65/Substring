puts "> Please enter the text to search:"
@input = gets.chomp
puts "> "
puts "> Please enter the substrings to search for in the text separated by spaces:"
@targets = gets.chomp
puts "> "

def substring(string)

	#Define target dictionary
	dictionary = @targets.split(" ")
	#Split the input into words (needed to catch multiple instances)
	words = string.chomp.split(" ")
	#Target substrings are keys and target counts are values
	count = {}

	#Make each target string a key in the hash
	dictionary.each do |target|
		target.downcase!
		count[target] = 0
	end

	#Check if each word includes each target
	words.each do |w|
		dictionary.each do |d|
			#If the words includes the target, increase the hash value
			if w.downcase.include?(d)
				count[d] += 1
			end
		end
	end

	output = ""
	count.each do |w, n|
		output += "#{w}: #{n}, "
	end
	return "> " + output.chomp(", ")

end

puts substring(@input)