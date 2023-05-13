class Error
	def initialize(description, suggestion)
		@description = description
		@suggestion = suggestion
	end

	def throw()
		STDERR.puts("Opsie!")
		STDERR.puts("\tdescription: #{@description}")
		STDERR.puts("\tsuggestion: #{@suggestion}")
		exit(1)
	end
end

