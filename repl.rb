require './jailbreak.rb'
require 'pp'

while true
 print "> "
 ln = gets.chomp
 pp MarkUp.convert(ln)
end
