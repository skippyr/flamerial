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

  # All files are created using permissions 0644.
  # 0644 = rw-r--r--
  File.write(file, `ruby #{File.join($scripts_ports_directory, port)}`)

  # Turn Shell Script files executable by using permission 0755.
  # 0755 = rwxr-xr-x
  File.chmod(0755, file) if (ext == '.sh')
end
