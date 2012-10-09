require 'ruble'

with_defaults :scope => 'text.html, source.php' do
  snippet "VALUE" do |snip|
    snip.trigger = "REX_"
    snip.expansion = "VALUE[${0}]"
  end
  snippet "REX_VALUE" do |snip|
    snip.trigger = "REX_"
    snip.expansion = "REX_VALUE[${0}]"
  end
  snippet "REX_PHP" do |snip|
    snip.trigger = "REX_"
    snip.expansion = "REX_PHP[${0}]"
  end
  snippet "INPUT_HTML" do |snip|
    snip.trigger = "INPUT"
    snip.expansion = "INPUT_HTML[${0}]"
  end
  snippet "INPUT_PHP" do |snip|
    snip.trigger = "INPUT"
    snip.expansion = "INPUT_PHP[${0}]"
  end
  snippet "REX_HTML" do |snip|
    snip.trigger = "REX_H"
    snip.expansion = "REX_HTML[${0}]"
  end
  snippet "REX_LINK" do |snip|
    snip.trigger = "REX_L"
    snip.expansion = "REX_LINK[${0}]"
  end
  snippet "REX_LINK_ID" do |snip|
    snip.trigger = "REX_L"
    snip.expansion = "REX_LINK_ID[${0}]"
  end
  snippet "REX_LINK_BUTTON" do |snip|
    snip.trigger = "REX"
    snip.expansion = "REX_LINK_BUTTON[${0}]"
  end
  snippet "REX_MEDIALIST_BUTTON" do |snip|
    snip.trigger = "REX_M"
    snip.expansion = "REX_MEDIALIST_BUTTON[${0}]"
  end
  snippet "REX_MEDIA_BUTTON" do |snip|
    snip.trigger = "REX_M"
    snip.expansion = "REX_MEDIA_BUTTON[${0}]"
  end
  snippet "REX_LINKLIST_BUTTON" do |snip|
    snip.trigger = "REX_L"
    snip.expansion = "REX_LINKLIST_BUTTON[${0}]"
  end
  snippet "REX_IS_VALUE" do |snip|
    snip.trigger = "REX_I"
    snip.expansion = "REX_IS_VALUE[${0}]"
  end
  snippet "Textile Help Output" do |snip|
    snip.trigger = "textile"
    snip.expansion = "rex_a79_help_overview();"
  end
  snippet "Textile Modul Output" do |snip|
    snip.trigger = "textile"
    snip.expansion =<<-EOF
  $textile = '';
  if('REX_IS_VALUE[$1]') {
    $textile = htmlspecialchars_decode("REX_VALUE[$1]");
    $textile = str_replace("<br />","",$textile);
    $textile = rex_a79_textile($textile);
    $textile = str_replace("###","&#x20;",$textile);
  }
  echo $textile;
EOF
  end
  snippet "Ausgabe im Backend" do |snip|
    snip.trigger = "backend"
    snip.expansion = "        
    // Ausgabe im Backend
    if ($REX['REDAXO']) {
      
    } else {
      
    }"
  end
end