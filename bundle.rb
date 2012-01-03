require 'ruble'

bundle do |bundle|
  bundle.display_name = 'Redaxo'
  bundle.author = 'Joerg Schoenburg'
  bundle.copyright = <<END
(c) Copyright 2012 www.jswebschmiede.de Distributed under MIT license.
END

  bundle.description = <<END
Redaxo CMS Templates and Snippets for templating, addons etc.
END
  
  bundle.scope = 'text.html source.php, source.php'
  bundle.repository = 'git@github.com:jswebschmiede/redaxo.ruble.git'

  # Use Commands > Bundle Development > Insert Bundle Section > Menu
  # to easily add new sections
  bundle.menu 'Redaxo' do |main_menu|
    main_menu.menu 'Template' do |sub_menu|
      sub_menu.command 'Redaxo Frontpage'
      sub_menu.command 'Empty Sidebar'
      sub_menu.command 'Article/Category online'
      sub_menu.command 'REXSeo <head>'
      sub_menu.command 'Redaxo Navigation + CSS Class'
    end
  end
end