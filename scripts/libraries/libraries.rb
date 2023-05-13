require "fileutils"

for file in Dir.children(__dir__)
	if file != File.basename(__FILE__)
		require_relative(file)
	end
end

