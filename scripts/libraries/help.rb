class Help
	def self.print_instructions()
		puts("Help Instructions - Flamerial Wizard")
		puts("Starting Point")
		puts("\tThis is a program to manage Flamerial files.")
		puts("Dependencies")
		puts("\tTo work properly, this program needs that ImageMagick is installed.")
		puts("Syntax")
		puts("\tUse this program with the following syntax:")
		puts("\t\truby wizard.rb [flags] <command>")
		puts("\tThe flags it can accept are:")
		puts("\t\t--help: print these help instructions.")
		puts("\tThe commands it can accept are:")
		puts("\t\tpreview-colors: print a preview of your terminal emulator's colors.")
		puts("\t\tcreate-images: creates the images for the README table preview.")
		puts("\t\tcreate-table: creates the HTML table for the README.")
	end
end

