# Loads library
require 'lib'

# Print
puts "String and the #{variable}"
print "String\n"

# format

# User input
$stdin.gets.chomp

# Conditions control
if a == b
elsif a == c
else
end

# Case
case expr0
when expr1, expr2
	stmt1
when expr3, expr4
	stmt2
else
	stmt3
end

# Loop
# ex1
for fruit in fruits
	puts "#{fruit}"
end

# ex2
fruits.each do |fruit|
	puts "#{fruit}"
end

# ex3
fruits.each { |fruit| puts "fruit" }

# Range operator
(0..5).each do |i|
	puts "#{i}"
end

# while
while i < 6
end

#
loop do
end

# File
file = open("sample.txt", 'r')

File.open("file.rb") if File::exists?( "file.rb" )

# Argument
argument = ARGV

# Shell command
exec('cmd'[, arg...])
Dir.chdir("/usr/bin")

# Array
list_a = [1, 2, 3]
list_a.push(4)

# Hash
hsh = { "red" => 0xf00, "green" => 0x0f0 }
hsh.each do |key, value|
	print key, " is ", value, "\n"
end

# Range
(1..5)        #==> 1, 2, 3, 4, 5
(1...5)       #==> 1, 2, 3, 4
('a'..'d')    #==> 'a', 'b', 'c', 'd'

# String

# Class
class Fruits < superclass
	@@no_of_fruits	= 0
	def initialize(id, name)
		@fruit_id = id
		@fruit_name = name
	end
end

fruit_1 = Fruits.new('1', 'banana')

# Module
module Identifier
end

# Method
def method_name(arg_list, *list_expr, &block_expr)
end

# Regular Expression
# Create Regexps using /pat/ or literal %r{pat}
# '=~' operator return index of first match or nil
# #match method returns a MatchData Object

/hay/ =~ 'haystack' #=> 0
/st/.match('haystack') #=> #<MatchData "st">

# /pattern/options
# i: ignore case

# Raise, Exception

# http://ruby-doc.org/core-2.1.1/Regexp.html

# random
srand([seed])
rand([max=0])

XXX.sort_by(rand)

# Variable types
$global_variable
@@class_variable
@instance_variable
[OtherClass::]CONSTANT
local_variable

# Pseudo variables
# self: The receiver object of the current method.
# true: Value representing true.
# false: Value representing false.
# nil: Value representing undefined.
# __FILE__: The name of the current source file.
# __LINE__: The current line number in the source file.

# Predefined variables
# Predefined constants

# http://learnrubythehardway.org/
# http://www.tutorialspoint.com/ruby/ruby_quick_guide.htm
