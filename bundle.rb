require 'ruble'

bundle do |bundle|
  bundle.display_name = 'Redaxo'
  bundle.author = 'Joerg Schoenburg'
  bundle.contact_email_rot_13 = 'info@jswebschmiede.de'
  bundle.copyright = <<END
(c) Copyright 2012 www.jswebschmiede.de Distributed under MIT license.
END

  bundle.description = <<END
Redaxo CMS Templates and Snippets for templating, addons etc.
END
  
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
      sub_menu.command 'Redaxo HTDOCS Path'
    end
    main_menu.menu 'Module' do |sub_menu|
      sub_menu.command 'REX Module Header'
      sub_menu.command 'REX Module Addon Available'
      sub_menu.command 'REX Module select foreach'
      sub_menu.command 'Ausgabe im Backend'
      sub_menu.command 'Textile Modul Output'
      sub_menu.command 'REX Category Select List'
      sub_menu.command 'REX Select List with Select Class'
      sub_menu.command 'REX Media Category Select List with Select Class'
    end
  end
end

# Special ENV vars for PHP scope
env 'source.php' do |e|
  e['TM_COMMENT_START'] = '// '
  e.delete('TM_COMMENT_END')
  e['TM_COMMENT_START_2'] = '# '
  e.delete('TM_COMMENT_END_2')
  e['TM_COMMENT_START_3'] = '/* '
  e['TM_COMMENT_END_3'] = '*/'
end