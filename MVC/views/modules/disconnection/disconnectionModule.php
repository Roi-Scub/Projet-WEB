<?php

$moduleName = "disconnection";

$this->appendStyle('global.css');
$this->appendScript('disconnection.js');
var_dump($this->appendScript('disconnection.js'));



$mainRender = $this->_smarty->fetch('views/modules/' . $moduleName . '/disconnection.tpl');
?>

