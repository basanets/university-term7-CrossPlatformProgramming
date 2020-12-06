adj_matrix_file = File.new("adjacency_matrix.txt")
adj_matrix = adj_matrix_file.read().lines().map() {|line| line.split(" ").map(&:to_i)}

number_of_cities = adj_matrix.size();
MAX = adj_matrix.map() {|line| line.max()} . max() ** 2

current_city = 0;
total_path_cost = 0
visited_cities = Array.new{}
visited_cities << current_city

while visited_cities.size() != number_of_cities
    choosen = -1
    minimum_path_cost = MAX
    for i in 0..(number_of_cities - 1)
        if (!visited_cities.include?(i) && adj_matrix[current_city][i] < minimum_path_cost)
            choosen = i
            minimum_path_cost = adj_matrix[current_city][i]
        end
    end
    current_city = choosen
    visited_cities << current_city
    total_path_cost += minimum_path_cost
end

total_path_cost += adj_matrix[visited_cities.last()][visited_cities.first()]

puts "Total path cost: #{total_path_cost}"
puts "Path: "
for city in visited_cities
    print "#{city + 1} -> "
end
print "#{visited_cities.first() + 1} \n"
