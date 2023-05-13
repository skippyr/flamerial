class CaseTreater
	def self.to_title_case(text)
		is_to_use_upper_case = true
		characters = []
		for character in text.split("")
			if character == "_"
				characters << " "
				is_to_use_upper_case = true
			else
				if is_to_use_upper_case
					characters << character.upcase()
				else
					characters << character.downcase()
				end
				is_to_use_upper_case = false
			end
		end
		characters.join("")
	end
end

