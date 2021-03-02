require 'date'

INCHES = 39.3701

def main
	puts 'What is your name?'
	name = gets
	puts 'Your name is ' + name + '!'
	puts 'What is your family name?'
	family_name = gets.chomp
	puts 'Your family name is: ' + family_name + '!'
	puts 'What year were you born?'
	year_born = gets.chomp
	age = Date.today.year - year_born.to_i
	puts 'So you are ' + age.to_s + ' years old'
	puts 'Enter your height in metres (i.e as a float): '
	value = gets.to_f # convert to a float
	value = value * INCHES
	puts 'Your height in inches is: '
	puts value.to_s
	puts 'Finished'
end

main