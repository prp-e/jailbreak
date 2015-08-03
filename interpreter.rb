require './jailbreak.rb'

file = ARGV[0]

File.open(file, 'r') do |ln|
while line = ln.gets
 line["\n"] = ""
 puts MarkUp.convert(line)
end
end
