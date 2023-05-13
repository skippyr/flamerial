class Project
	def self.get_repository_directory_path()
		File.dirname(File.dirname(__dir__))
	end

	def self.get_images_directory_path()
		File.join(self.get_repository_directory_path(), "images")
	end
end

