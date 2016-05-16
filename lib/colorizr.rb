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

  def self.colors
    @@color_codes.keys
  end

  def self.create_colors
  	@@color_codes.each do |key, value|
  	  send(:define_method, "#{key}") do
  	  	strng = "\e[#{value}m#{self}\e[0m"
  	  	return strng 
  	  end
    end
  end

  def self.sample_colors
    colors.each do |color|
  	  puts "This is " + "#{color.to_s.split("_").map(&:capitalize).join(' ')}".send(color)
    end
    return nil
  end

end

String.create_colors