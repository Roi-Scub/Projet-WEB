<?php


$profile = $profileManager->getProfileInfo($profileId);


$this->_smarty->assign('profile', $profile);


$adminRender = $this->_smarty->fetch('views/components/profiles/admin.tpl');

?>