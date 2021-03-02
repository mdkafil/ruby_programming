def main 
	puts 'Enter the appetizer price:'
	appetizer_price = gets.chomp.to_f
	puts 'Enter the main price:'
	main_price = gets.chomp.to_f
	puts 'Enter the dessert price:'
	dessert_price = gets.chomp.to_f
	total_price = appetizer_price + main_price + dessert_price
	# printf("$%.2f\n", total_price)
	print("$")
	printf("%.2f", total_price) # format the float to 2 decimal places
	print("\n") # print a newline character to move down one line
end

main