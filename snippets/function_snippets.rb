require 'ruble'

with_defaults :scope => 'text.html, source.php' do |bundle|
  snippet "function sortMediaByOrgName" do |snip|
    snip.trigger = "function"
    snip.expansion = "  
    if (!function_exists('sortMediaByOrgName')) {
     function sortMediaByOrgName($artA, $artB) {
        $nameA = $artA->getValue('orgname'); // originalname
        $nameB = $artB->getValue('orgname'); // originalname
        if ($nameA == $nameB){
           return 0;
        }
        $names = array($nameA,$nameB);
        sort($names, SORT_STRING);
        return $names[0] == $nameA ? -1 : 1;
     }
    }"
  end
  snippet "function sortMediaByName" do |snip|
    snip.trigger = "function"
    snip.expansion = "  
    if (!function_exists('sortMediaByName')) {
     function sortMediasByFileName($artA, $artB) {
        $nameA = $artA->getValue('filename'); // filename
        $nameB = $artB->getValue('filename'); // filename
        if ($nameA == $nameB){
           return 0;
        }
        $names = array($nameA,$nameB);
        sort($names, SORT_STRING);
        return $names[0] == $nameA ? -1 : 1;
     }
    }"
  end
  snippet "function sortArticlesByPrio" do |snip|
    snip.trigger = "function"
    snip.expansion = "  
    if (!function_exists('sortArticlesByPrio')) {
     function sortArticlesByPrio( $artA, $artB) {
        $prioA = $artA->getPriority();
        $prioB = $artB->getPriority();
    
        if ( $prioA == $prioB) {
           return 0;
        }
        return $prioA > $prioB ? -1 : 1;
     }
    }"
  end
  snippet "function sortArticlesByCreateDate" do |snip|
    snip.trigger = "function"
    snip.expansion = "  
    if (!function_exists('sortArticlesByCreateDate')) {
     function sortArticlesByCreateDate( $artA, $artB) {
        $createA = $artA->getCreateDate();
        $createB = $artB->getCreateDate();
    
        if ( $createA == $createB) {
           return 0;
        }
        return $createA > $createB ? -1 : 1;
     }
    }"
  end
  snippet "function sortArticlesByUpdateDate" do |snip|
    snip.trigger = "function"
    snip.expansion = "  
    if (!function_exists('sortArticlesByUpdateDate')) {
     function sortArticlesByUpdateDate( $artA, $artB) {
        $updateA = $artA->getUpdateDate();
        $updateB = $artB->getUpdateDate();
    
        if ( $updateA == $updateB) {
           return 0;
        }
        return $updateA > $updateB ? -1 : 1;
     }
    }"
  end
  snippet "function sortArticlesByName" do |snip|
    snip.trigger = "function"
    snip.expansion = "  
    if (!function_exists('sortArticlesByName')) {
     function sortArticlesByName( $artA, $artB) {
        $nameA = $artA->getName();
        $nameB = $artB->getName();
    
        if ( $nameA == $nameB) {
           return 0;
        }
        $names = array($nameA,$nameB);
        sort( $names, SORT_STRING);
        return $names[0] == $nameA ? -1 : 1;
     }
    }"
  end
end