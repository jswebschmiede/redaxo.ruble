require 'ruble'

with_defaults :scope => 'text.html, source.php' do
  snippet "VALUE" do |snip|
    snip.trigger = "REX"
    snip.expansion = "VALUE[${0}]"
  end
  snippet "REX_VALUE" do |snip|
    snip.trigger = "REX"
    snip.expansion = "REX_VALUE[${0}]"
  end
  snippet "REX_PHP" do |snip|
    snip.trigger = "REX"
    snip.expansion = "REX_PHP[${0}]"
  end
  snippet "INPUT_HTML" do |snip|
    snip.trigger = "REX"
    snip.expansion = "INPUT_HTML[${0}]"
  end
  snippet "INPUT_PHP" do |snip|
    snip.trigger = "REX"
    snip.expansion = "INPUT_PHP[${0}]"
  end
  snippet "REX_HTML" do |snip|
    snip.trigger = "REX"
    snip.expansion = "REX_HTML[${0}]"
  end
  snippet "REX_LINK" do |snip|
    snip.trigger = "REX"
    snip.expansion = "REX_LINK[${0}]"
  end
  snippet "REX_LINK_ID" do |snip|
    snip.trigger = "REX"
    snip.expansion = "REX_LINK_ID[${0}]"
  end
  snippet "REX_LINK_BUTTON" do |snip|
    snip.trigger = "REX"
    snip.expansion = "REX_LINK_BUTTON[${0}]"
  end
  snippet "REX_MEDIALIST_BUTTON" do |snip|
    snip.trigger = "REX"
    snip.expansion = "REX_MEDIALIST_BUTTON[${0}]"
  end
  snippet "REX_MEDIA_BUTTON" do |snip|
    snip.trigger = "REX"
    snip.expansion = "REX_MEDIA_BUTTON[${0}]"
  end
  snippet "REX_LINKLIST_BUTTON" do |snip|
    snip.trigger = "REX"
    snip.expansion = "REX_LINKLIST_BUTTON[${0}]"
  end
  snippet "REX_IS_VALUE" do |snip|
    snip.trigger = "REX"
    snip.expansion = "REX_IS_VALUE[${0}]"
  end
end