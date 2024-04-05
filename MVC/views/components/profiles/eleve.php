<?php


$profile = $profileManager->getProfileInfo($profileId);


$this->_smarty->assign('profile', $profile);


$eleveRender = $this->_smarty->fetch('views/components/profiles/eleve.tpl');

?>