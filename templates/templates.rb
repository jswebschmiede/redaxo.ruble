require 'ruble'

template "Superfish Navigations Template" do |t|
  t.filetype = "*.php"
  t.invoke do |context|
    raw_contents = IO.read("#{ENV['TM_BUNDLE_PATH']}/templates/superfish_nav_template.php")
    raw_contents.gsub(/\$\{([^}]*)\}/) {|match| ENV[match[2..-2]] }
  end
end

#project_template "Superfish Navigations Template" do |t|
#  t.type = :web
#  t.location = "templates/superfish_nav_template.zip"
#  t.description = "A basic template which includes only a default index.html file"
#  t.replace_parameters = true
#end

# Use Commands > Bundle Development > Insert Bundle Section > File Template and Project Template
# to easily add new sections