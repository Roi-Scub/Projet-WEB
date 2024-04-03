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

        
        // --- Assign attributes of the class ---

        // Secure Module name
        $module = strtolower($module);
        //var_dump($module);
        $this->_smarty = $smarty;
       
        if ($module == 'offerscrud') {
            $this->_file = 'views/modules/' . 'offers' . '/' . $module . 'Module.php'; 
        } else {

            $this->_file = 'views/modules/' . $module . '/' . $module . 'Module.php'; 
        }
        
        
        $this->_styles = array("../global/styles/global.css");
        $this->_scripts = array();

        //var_dump("hello");

    }

    // --- Private methods ---

    /**
     * Append a style file to the final render.
     */
    private function appendStyle($element)
    {
        array_push($this->_styles, "../global/styles/" . $element);
    }

    /**
     * Append a script file to the final render.
     */
    private function appendScript($element)
    {
        array_push($this->_scripts, "../global/javascript". '/' . $element );
    }

    // --- Public methods ---

    /**
     * Generate the view of the application.
     * 
     * @param array $data The data that have to be displayed in the module.
     * @param string $headerModule The name of the header module that have to be displayed. Default value is "navigationBar". To disable the header, set the value to NULL.
     * @param string $footerModule The name of the footer module that have to be displayed. Default value is "footer". To disable the footer, set the value to NULL.
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
        
        $this->_smarty->assign('headerRender', $headerRender);
        $this->_smarty->assign('mainRender', $mainRender);
        $this->_smarty->assign('footerRender', $footerRender);
        
        $this->_smarty->display('views/template.tpl');
    }

}