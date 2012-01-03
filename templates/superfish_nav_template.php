<?php
// Variablen einlesen
$PATH = explode("|",$this->getValue("path").$this->getValue("article_id")."|");
$path1 = $PATH[1];
$path2 = $PATH[2];
$path3 = $PATH[3];

// Dropdown schreiben
$superfish .= '<ul class="sf-menu">';

// Kategorien des ersten Levels auslesen
foreach (OOCategory::getRootCategories() as $lev1) {

// Wenn online dann weiter
if ($lev1->isOnline(true)) {
$superfish .= '<li><a href="'.$lev1->getUrl().'">'.$lev1->getName().'</a>';

        // Wenn das erste Level Subkategorien hat dann weiter
        $lev1Size = sizeof($lev1->getChildren(true));
        if ($lev1Size != "0") {
        $superfish .= '<ul>';
        // Kategorien des zweiten Levels auslesen
        foreach ($lev1->getChildren() as $lev2)
        {
                // Wenn online dann weiter
                if ($lev2->isOnline(true))
                {
                     $superfish .= '<li';
                      if($lev1->getId() == $path1) {
                          // Aktiver Hauptpunkt
                          $superfish .= ' class="current">';
                      } else {
                        // Inaktiver Hauptpunkt
                        $superfish .= '>';
                      }

                       $superfish .= '<a href="'.$lev2->getUrl().'">'.$lev2->getName().'</a>';

                        // Wenn das zweite Level Subkategorien hat dann weiter
                        $lev2Size = sizeof($lev2->getChildren(true));
                        if ($lev2Size != "0")
                        {
                        $superfish .= '<ul>';
                        // Kategorien des dritten Levels auslesen
            foreach ($lev2->getChildren() as $lev3) {

                                // Wenn online dann weiter
                                if ($lev3->isOnline(true))
                                {
                $superfish .= '<li><a href="'.$lev3->getUrl().'">'.$lev3->getName().'</a></li>';
                                }
            }
                        $superfish .= '</ul></li>';
                        }
                        else { $superfish .= '</li>'; }
                }

        }

        $superfish .= '</ul></li>';
    }
        else { $superfish .= '</li>'; }

}
}
$superfish .= '</ul>';
print $superfish;
?>