def traverse_entry (path)
    if File.file?(path)
        puts(path)
        return File.size(path)
    elsif File.directory?(path)
        entries = Dir.glob(Dir.children(path).map() {|f| File.join(path, f)})
        return entries.map() {|entry| traverse_entry(entry)} .sum()
    end
end

total_size = traverse_entry("files")
puts "Total size of the folder is #{total_size}"
