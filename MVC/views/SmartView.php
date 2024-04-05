<?php
/*
    Cette classe va permettre l'affichage des vues de l'application.

*/
class SmartyView
{
    private $_file;
    private $_title;
    private $_styles;
    private $_scripts;
    private $_smarty;

    // Conctructeur 

    public function __construct($module)
    {
        
        $smartyFolderPath = 'models/tools/smarty/';
        require_once($smartyFolderPath . 'libs/Smarty.class.php');
        $smarty = new Smarty();

        // --- Configuration of the Smarty template directory ---

        $smarty->setTemplateDir($smartyFolderPath . 'others/templates');
        $smarty->setCompileDir($smartyFolderPath . 'others/templates_c');
        $smarty->setConfigDir($smartyFolderPath . 'others/configs');
        $smarty->setCacheDir($smartyFolderPath . 'others/cache');

        
        // ---  Assigne les atributs de la classe ---

       
        $module = strtolower($module);
        //var_dump($module);
        $this->_smarty = $smarty;
       
        if ($module == 'offerscrud') {

            $this->_file = 'views/modules/' . 'offers' . '/' . $module . 'Module.php';

        } else if ($module == 'businessescrud') {

            $this->_file = 'views/modules/' . 'businesses' . '/' . $module . 'Module.php'; 

        } else if ($module == 'businessesview') {

            $this->_file = 'views/modules/' . 'businesses' . '/' . $module . 'Module.php'; 

        } else {
            $this->_file = 'views/modules/' . $module . '/' . $module . 'Module.php'; 
        }
        
        
        $this->_styles = array("../global/styles/global.css");
        $this->_scripts = array();

        //var_dump("hello");

    }

    // --- Méthodes privées ---

    /**
     * Attribue un style à la vue.
     */
    private function appendStyle($element)
    {
        array_push($this->_styles, "../global/styles/" . $element);
    }

    /**
     * Attribue un script à la vue.
     */
    private function appendScript($element)
    {
        array_push($this->_scripts, "../global/javascript". '/' . $element );
    }

    // --- Méthodes publiques ---

    /**
     * Generate the view of the application.
     * 
     * @param array $data les données qui doivent être affichées dans le module.
     * @param string  $headerRender Le nom du module d'en-tête qui doit être affiché. La valeur par défaut est "navigationBar". Pour désactiver l'en-tête, définissez la valeur sur NULL.
     * @param string $footerRender le nom du module de pied de page qui doit être affiché. La valeur par défaut est "footer". Pour désactiver le pied de page, définissez la valeur sur NULL.
     */
    public function generate($data , $headerModule = "header", $footerModule = "footer")
    {
        extract($data);

        (!is_null($headerModule)) ? require_once('views/modules/' . $headerModule . '/' . $headerModule . 'Module.php') : $headerRender = NULL;
        require_once($this->_file);
        (!is_null($footerModule)) ? require_once('views/modules/' . $footerModule . '/' . $footerModule . 'Module.php') : $footerRender = NULL;

       
        $this->_smarty->assign('title', $this->_title);
        $this->_smarty->assign('styles', $this->_styles);
        $this->_smarty->assign('scripts', $this->_scripts);
        
        $this->_smarty->assign('mainRender', $mainRender);
        $this->_smarty->assign('headerRender', $headerRender);
        $this->_smarty->assign('footerRender', $footerRender);
        
        $this->_smarty->display('views/template.tpl');
    }

}