require 'ruble'

with_defaults :scope => 'text.html' do
  snippet "REX_TEMPLATE" do |snip|
    snip.trigger = "REX"
    snip.expansion = "REX_TEMPLATE[${0}]"
  end
  
  snippet "REX_ARTICLE" do |snip|
    snip.trigger = "REX"
    snip.expansion = "REX_ARTICLE[ctype=${0}]"
  end
end

with_defaults :scope => 'source.php' do
  snippet "rex_getUrl" do |snip|
    snip.trigger = "rex"
    snip.expansion = "rex_getUrl(${0});"
  end
  
  snippet "$REX['HTDOCS_PATH']" do |snip|
    snip.trigger = "$REX"
    snip.expansion = "$REX['HTDOCS_PATH']${0}"
  end
  
  snippet "REX_ARTICLE_ID" do |snip|
    snip.trigger = "REX"
    snip.expansion = "REX_ARTICLE_ID"
  end
  
  snippet "$REX['SERVER']" do |snip|
    snip.trigger = "$REX"
    snip.expansion = "$REX['SERVER']${0}"
  end
  
  snippet "$REX['CUR_CLANG']" do |snip|
    snip.trigger = "$REX"
    snip.expansion = "$REX['CUR_CLANG']${0}"
  end
  
  snippet "$REX['SERVERNAME']" do |snip|
    snip.trigger = "$REX"
    snip.expansion = "$REX['SERVERNAME']${0}"
  end
  
  snippet "$REX['NOTFOUND_ARTICLE_ID']" do |snip|
    snip.trigger = "$REX"
    snip.expansion = "$REX['NOTFOUND_ARTICLE_ID']${0}"
  end
  
  snippet "$REX['START_ARTICLE_ID']" do |snip|
    snip.trigger = "$REX"
    snip.expansion = "$REX['START_ARTICLE_ID']${0}"
  end
end
# Use Commands > Bundle Development > Insert Bundle Section > Snippet
# to easily add new snippets