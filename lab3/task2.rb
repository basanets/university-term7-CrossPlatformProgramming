input_file = File.new("files/input_task2.txt", "r")
words = input_file.read().split()

words = words.shuffle()

output_file = File.new("files/output_task2.txt", "w")
output_file.write(words.join(" "))