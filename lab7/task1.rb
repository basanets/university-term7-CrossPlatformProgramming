printf("Enter the good initial price: ")
initialPrice = Float(gets().chomp)

printf("Enter the discount on the good in percentages (%%): ")
discount = Float(gets().chomp)

resultingPrice = initialPrice - initialPrice * discount / 100.0
printf("Resulting price is %.2f\n", resultingPrice)

