# all_supps_hash = {}

# previous_line = ""

# File.open(Rails.root + "db/supp_list.txt").each do |line|
# 	line = line.strip
# 	if line.start_with?("aka")
# 		line = line.gsub("aka ", "")
# 		all_supps_hash[previous_line] = line
# 	else
# 		all_supps_hash[line] = ""
# 	end
# 	previous_line = line
# end

# all_supps_hash.each do |name, aka|
# 	Supplement.create(name: name, aka: aka)
# end

# categories = ["Aesthetics", "Allergies and Immunity", "Antiaging and Longevity", "Antioxidant and Anti-inflammatory",
# 			  "Bone and Joint Health", "Cardiovascular", "Cognitive Function and Brain Health", "Energy and Stimulation",
# 			  "Eye Health", "Fat Loss", "General Health", "Gut Health", "Insulin Sensitivity", "Libido and Sexual Health",
# 			  "Liver Health and Detoxification", "Men's Health", "Mood", "Muscle Gain and Exercise", "Sleep",
# 			  "Testosterone Boosting", "Women's Health"]

# categories.each do |category|
# 	Category.create(description: category)
# end

# Supplement.all.each do |supplement|
#   if supplement.slug == nil
#   	supplement.update(slug: supplement.name.parameterize)
#   end
# end
