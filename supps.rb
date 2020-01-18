require 'pp'

all_supps_hash = {}

previous_line = ""

File.open("supps.txt").each do |line|
	line = line.strip
	if line.start_with?("aka")
		line = line.gsub("aka ", "")
		all_supps_hash[previous_line] = line
	else
		all_supps_hash[line] = ""
	end
	previous_line = line
end

pp all_supps_hash
