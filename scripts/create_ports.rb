require_relative('libs/repo')
require('fileutils')

FileUtils.rm_rf($ports_directory)
Dir.children($scripts_ports_directory).each do |port|
  inter = File.basename(port, File.extname(port))
  ext = File.extname(inter)
  name = File.basename(inter, ext)
  directory = File.join($ports_directory, name)
  file = File.join(directory, "flamerial#{ext}")
  FileUtils.mkdir_p(directory)
  system("ruby #{File.join($scripts_ports_directory, port)} > #{file}")
  system("chmod +x #{file}") if (ext == '.sh')
end
