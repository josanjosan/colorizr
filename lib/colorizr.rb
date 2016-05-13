class String
  @@color_codes = {red: 31,
  	green: 32,
	yellow: 33,
	blue: 34,
	pink: 95,
	light_blue: 94, 
	white: 97,
	light_grey: 37,
	black: 30}

  def self.create_colors
  	@@color_codes.each do |key, value|
  	  self.send(:define_method, "#{key}") do
  	  	puts "\e[#{value}m#{self}\e[0m" 
  	  end
    end
  end

  def self.colors
    @@color_codes.keys
  end

  def self.sample_colors
  end
 #puts "\e[34mThis is blue text.\e[0m" 
end

#Test code below, erase when finished
String.create_colors

p String.colors

puts "this should be red".red
puts "this should be green".green
puts "this should be yellow".yellow
puts "this should be blue".blue
puts "this should be pink".pink
puts "this should be light blue".light_blue
puts "this should be white".white
puts "this should be light grey".light_grey
puts "this should be black".black
#String.sample_colors