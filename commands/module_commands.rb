require 'ruble'

with_defaults :scope => 'source.php, text', :input => :none, :output => :insert_as_snippet do |bundle|
  
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
?>
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
EOF
    end
  end
   
  command 'REX Module Addon Available' do |cmd|
  # cmd.key_binding = 'CONTROL+SHIFT+E'
    cmd.invoke do |context|
      context.output =<<-EOF 
<?php
if(OOAddon::isAvailable('MODULE')) {
  $1
} else {
    echo rex_warning('Dieses Modul ben&ouml;tigt das "MODULE" Addon!');
}
EOF
    end
  end
  
command 'REX Module select foreach' do |cmd|
  # cmd.key_binding = 'CONTROL+SHIFT+E'
    cmd.invoke do |context|
    context.output =<<-EOF
<select name="VALUE[$1]" id="$2">
<?php
  $options = array("one" => 1, "two" => 2, "three" => 3);
  foreach ($options as $option => $value)
  {
    echo '<option value="'.$option.'" ';
    if ("REX_VALUE[$1]" == "$option")
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
  
command 'Ausgabe im Backend' do |cmd|
  # cmd.key_binding = 'CONTROL+SHIFT+E'
    cmd.invoke do |context|
    context.output = "        
    // Ausgabe im Backend
    if ($REX['REDAXO']) {
      
    } else {
      
    }"
    end
  end
command 'Textile Modul Output' do |cmd|
  # cmd.key_binding = 'CONTROL+SHIFT+E'
    cmd.invoke do |context|
    context.output =<<-EOF
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
  end
  
command 'REX Category Select List' do |cmd|
  # cmd.key_binding = 'CONTROL+SHIFT+E'
    cmd.invoke do |context|
      context.output =<<-EOF
$s = new rex_category_select();
$s->setName('${0:VALUE}');
$s->setSize(${1:size});
$s->setSelected('${2:REX_VALUE}');
EOF
    end
  end
  
command 'REX Select List with Select Class' do |cmd|
  # cmd.key_binding = 'CONTROL+SHIFT+E'
    cmd.invoke do |context|
      context.output =<<-EOF
$s = new rex_select();
$s->setName('${0:VALUE}');
$s->setSize(${1:size});
$s->addOption('${2:showvalue}', '${2:value}');
$s->setSelected('${2:REX_VALUE}');
echo $s->get();
EOF
    end
  end
  
command 'REX Media Category Select List with Select Class' do |cmd|
  # cmd.key_binding = 'CONTROL+SHIFT+E'
    cmd.invoke do |context|
      context.output =<<-EOF
$s = new rex_mediacategory_select();
$s->setStyle('class="rex-form-select"');
$s->setSize(${1:size});
$s->setName('${2:VALUE[$3]}');
$s->setSelected('${4:REX_VALUE[$3]}');
echo $s->get();
EOF
    end
  end
end 
