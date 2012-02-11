require 'ruble'

with_defaults :scope => 'source.php, text', :input => :none, :output => :insert_as_text do |bundle|
  
  command 'REX Module Header' do |cmd|
  # cmd.key_binding = 'CONTROL+SHIFT+E'
    cmd.invoke do |context|
      context.output =<<-EOF
<?php
/**
 *=======================================================
 * @name: MODLUENAME
 * @version: 1.0
 * Bereich: Modul Eingabe
 * @autor: AUTORNAME (www.your-website.de)
 * Redaxo Version: 4.0.x, 4.1.x, 4.2.x, 4.3.x
 * Redaxo AddOns: MODULES YOU NEED
 * Source Download: http://www.your-website.de
 * @source: http://www.your-website.de
 * @date:
 *=======================================================
 */
  <style type="text/css">
  .js-rex-MODULENAME-form {
    overflow: hidden; 
  }
  .js-rex-MODULENAME-form label {
    display:block !important;
    font-weight:bold;
    margin-bottom:10px;
  }
  .js-rex-MODULENAME-form select {
    width: 140px;
  } 
  .js-rex-MODULENAME-form select,
  .js-rex-MODULENAME-form input,
  .js-rex-MODULENAME-form textarea {
    margin-bottom:20px;
    display:block; 
  }
</style>
    <div class="js-rex-MODULENAME-form">
    
    </div>
?>
EOF
    end
  end
   
  command 'REX Module Addon Available' do |cmd|
  # cmd.key_binding = 'CONTROL+SHIFT+E'
    cmd.invoke do |context|
      context.output =<<-EOF
if(OOAddon::isAvailable('MODULE'))
{
  
}
EOF
    end
  end
  
  command 'REX Module select foreach' do |cmd|
  # cmd.key_binding = 'CONTROL+SHIFT+E'
    cmd.invoke do |context|
      context.output =<<-EOF
<select name="VALUE[]" id="VALUE[]">
<?php
  foreach (array("one", "two", "three") as $value)
  {
    echo '<option value="'.$value.'" ';
    if ("REX_VALUE[]" == "$value")
    {
      echo 'selected="selected" ';
    }
    echo '>'.$value.'</option>';
  }
?>
</select>
EOF
    end
  end
  
end