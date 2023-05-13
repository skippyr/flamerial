class Arguments
	def self.is_to_print_help_instructions?()
		ARGV.include?("--help")
	end

	def self.is_to_preview_colors?()
		ARGV.include?("preview-colors")
	end

	def self.is_to_create_images?()
		ARGV.include?("create-images")
	end

	def self.is_to_create_table?()
		ARGV.include?("create-table")
	end
end

