require 'ruble'

command 'Redaxo Frontpage' do |cmd|
  cmd.scope = 'source.php, text.html source.php, text'
  cmd.input = :none
  cmd.output = :insert_as_snippet
  # cmd.key_binding = 'CONTROL+SHIFT+E'
  cmd.invoke do |context|
    context.output =<<-EOF 
      if (\$REX[\'START_ARTICLE_ID\'] == REX_ARTICLE_ID) {
          ${1}
      } else {
          ${2}
      }
EOF
  end
end

command 'Empty Sidebar' do |cmd|
  cmd.scope = 'source.php, text.html source.php, text'
  cmd.input = :none
  cmd.output = :insert_as_snippet
  # cmd.key_binding = 'CONTROL+SHIFT+E'
  cmd.invoke do |context|
    context.output =<<-EOF 
     \$article = \$this->getArticle(${1});
      if (empty(\$article)) {
          \$noSidebar = true;    
      } else {
          \$noSidebar = false;
      }
EOF
  end
end

command 'Redaxo Navigation + CSS Class' do |cmd|
  cmd.scope = 'source.php, text.html source.php, text'
  cmd.input = :none
  cmd.output = :insert_as_snippet
  # cmd.key_binding = 'CONTROL+SHIFT+E'
  cmd.invoke do |context|
    context.output =<<-EOF 
      <?php 
          \$nav = rex_navigation::factory();
          \$nav->setClasses(array('${1}'));
          \$nav->setLinkClasses(array('${2}'));
          echo \$nav->get(${3},1,TRUE,TRUE); 
      ?>
EOF
  end
end

# -------------------------
#  insert as text snippets
# -------------------------
command 'Article/Category online' do |cmd|
  cmd.scope = 'source.php, text.html source.php, text'
  cmd.input = :none
  cmd.output = :insert_as_text
  # cmd.key_binding = 'CONTROL+SHIFT+E'
  cmd.invoke do |context|
    context.output =<<-EOF 
      if ($this->getValue('status') == 0)
      {
        header ('HTTP/1.0 404 Not Found');
        header('Location: '.$REX['SERVER'].rex_getUrl($REX['NOTFOUND_ARTICLE_ID']));
        exit;
      }
EOF
  end
end

command 'REXSeo <head>' do |cmd|
  cmd.scope = 'source.php, text.html source.php, text'
  cmd.input = :none
  cmd.output = :insert_as_text
  # cmd.key_binding = 'CONTROL+SHIFT+E'
  cmd.invoke do |context|
    context.output =<<-EOF
      <?php
        if(OOAddon::isAvailable('rexseo')) {
            $meta_description   = rexseo::description();
            $meta_keywords      = rexseo::keywords();
            $meta_title         = rexseo::title();
            $meta_canonical     = rexseo::canonical();
            $meta_base          = rexseo::base();
        }
        else {
            $OOStartArticle     = OOArticle::getArticleById($REX['START_ARTICLE_ID'], $REX['CUR_CLANG']);
            $meta_description   = $OOStartArticle->getValue("art_description");
            $meta_keywords      = $OOStartArticle->getValue("art_keywords");

            if($this->getValue("art_description") != "")
                $meta_description = htmlspecialchars($this->getValue("art_description"));
            if($this->getValue("art_keywords") != "")
                $meta_keywords    = htmlspecialchars($this->getValue("art_keywords"));
            
            $meta_title         = $REX['SERVERNAME'].' | '.$this->getValue("name");
            $meta_canonical     = isset($_REQUEST['REQUEST_URI']) ? $_REQUEST['REQUEST_URI'] : '';
            $meta_base          = 'http://'.$_SERVER['HTTP_HOST'].'/';
        }
    ?>
EOF
  end
end

# Use Commands > Bundle Development > Insert Bundle Section > Command
# to easily add new commands