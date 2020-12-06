input_file = File.new("files/input_task1.txt", "r")
array = input_file.read().split().map(&:to_i)

min_element_index = array.find_index(array.min())
max_element_index = array.find_index(array.max())

array[min_element_index], array[max_element_index] = array[max_element_index],  array[min_element_index] 

output_file = File.new("files/output_task1.txt", "w")
output_file.write(array.join(" "))
