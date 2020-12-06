input_file = File.new("files/input_task3.txt", "r")
text = input_file.read()

paragraphes = text.lines().select{|line| line.strip().chomp().size() > 0}
sentences = text.split(/[.!?]+/).map(&:strip)

total_characters = text.size()
total_spaces = text.scan(/\ /).size()
total_lines = text.lines().size()
total_paragraphes = paragraphes.size()

avg_words_in_sentence = sentences.map{|s| s.scan(/\w+/).size()}.sum() / sentences.size().to_f()
avg_sentences_in_paragraphes = paragraphes.map{|par| par.scan(/[.!?]+/).size()}.sum() / paragraphes.size().to_f()

puts "Total characters in file: #{total_characters}"
puts "Total spaces in file: #{total_spaces}"
puts "Total lines in file: #{total_lines}"
puts "Total paragraphes in file: #{total_paragraphes}"
puts "Avg number of words in sentence: #{avg_words_in_sentence}"
puts "Avg number of sentences in paragraphes: #{avg_sentences_in_paragraphes}"
