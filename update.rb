# ruby sample code.
# process every line in a text file with ruby (version 1).
file='index.html.md'
array = []
result = []
File.readlines(file).each_with_index do |line, i|
  array << line
end

array.each_with_index do |line, i|
  if line[0..1] == "# "
    result << line
  end
  if line[0..1] == "##" && line[0..2] != "###"
    result << line
  end
  if line == "###HTTP Request\n"
    result << array[i+1]
  end
end

result.each do |line|
  puts line
end
