template_path = File.dirname(__FILE__)
%w{clean mootools jammit compass gems git finish}.each do |template|
  apply "#{template_path}/#{template}.rb"
end
