arr = Array.new(2){rand(0..100)}

thread_max = Thread.new{Thread.current[:output] = arr.max()}
thread_min = Thread.new{Thread.current[:output] = arr.min()}

puts arr

thread_max.join()
thread_min.join()

max = thread_max[:output]
min = thread_min[:output]

puts("Max element is #{max}, min element is #{min}")
puts("Sum of max and min elements is #{min + max}")

