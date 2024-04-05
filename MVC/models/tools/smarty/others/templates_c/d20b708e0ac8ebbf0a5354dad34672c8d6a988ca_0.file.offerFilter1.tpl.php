<?php
/* Smarty version 4.4.1, created on 2024-03-30 20:28:18
  from 'C:\xampp\apache\project\cesi\Projet WEB\MVC\views\components\offer\offerFilter1.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.4.1',
  'unifunc' => 'content_660867d2103364_26560916',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'd20b708e0ac8ebbf0a5354dad34672c8d6a988ca' => 
    array (
      0 => 'C:\\xampp\\apache\\project\\cesi\\Projet WEB\\MVC\\views\\components\\offer\\offerFilter1.tpl',
      1 => 1711826880,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_660867d2103364_26560916 (Smarty_Internal_Template $_smarty_tpl) {
?><fieldset id="filters_fieldset">
            
                <legend id="filters_title">Filtres</legend>

                    <form id ="filters">  
                       
                            <h2 id="filters_name">Spécialité</h2>
                            <hr id="filters_bar">
                            
                                                        <!-- CHECKUP -->

                                <form id="specialiteSelect">

<!--
                                  <input type="radio" id="btp" name="speciality" value="BTP"  required>
                                      <label for="btp" class="radio">BTP</label><br>
                            
                                  <input type="radio" id="informatic" name="speciality" value="Informatique" >
                                      <label for="informatic" class="radio">Informatique</label><br>
                            
                                  <input type="radio" id="generalist" name="speciality" value="Généraliste" >
                                      <label for="generalist" class="radio">Généraliste</label><br>

                                  <input type="radio" id="s3e" name="speciality" value="S3E" >
                                      <label for="s3e" class="radio">S3E</label><br>
-->
                                        <div class="radio-container">
                                        <div class="radio-wrapper">
                                          <label class="radio-button">
                                            <input id="BTP" name="radio-group" type="radio">
                                            <span class="radio-checkmark"></span>
                                            <span class="radio-label">BTP</span>
                                          </label>
                                        </div>
                                      
                                        <div class="radio-wrapper">
                                          <label class="radio-button">
                                            <input id="Informatique" name="radio-group" type="radio">
                                            <span class="radio-checkmark"></span>
                                            <span class="radio-label">Informatique</span>
                                          </label>
                                        </div>
                                      
                                        <div class="radio-wrapper">
                                          <label class="radio-button">
                                            <input id="Generaliste" name="radio-group" type="radio">
                                            <span class="radio-checkmark"></span>
                                            <span class="radio-label">Généraliste</span>
                                          </label>
                                        </div>

                                        <div class="radio-wrapper">
                                          <label class="radio-button">
                                            <input id="S3E" name="radio-group" type="radio">
                                            <span class="radio-checkmark"></span>
                                            <span class="radio-label">S3E</span>
                                          </label>
                                        </div>
                                      </div>
                                      
                            <h2 id="filters_name">Dates</h2>
                            <hr id="filters_bar">
                            
                                <form id="type_select">

                                    <div class="radio-container">
                                        <div class="radio-wrapper">
                                          <label class="radio-button">
                                            <input id="Stage" name="radio-group" type="radio">
                                            <span class="radio-checkmark"></span>
                                            <span class="radio-label">Stage</span>
                                          </label>
                                        </div>

                                        <div class="radio-wrapper">
                                          <label class="radio-button">
                                            <input id="Alternance" name="radio-group" type="radio">
                                            <span class="radio-checkmark"></span>
                                            <span class="radio-label">Alternance</span>
                                          </label>
                                    </div>

                                    <h3 id="filter_title">Date du début : </h3>

                                        <input type="date" id="start" name="trip-start" value="datetime" min="datetime" max="2025-12-31"  required/>

                                    <h3 id="filter_title">Durée en semaine : </h3>

                                        <input type="number" id="week_input" name="week_inpu" min="10" max="45"  /> <h3 id="week_title">Semaines</h3>

                                </form>

                            <h2 id="filters_name">Rémunération</h2>
                            <hr id="filters_bar">

                                <form>

                                    <h3 id="filter_title">Salaire minimum : <span id="demo"></span> €</h3>

                                        <div class="slidecontainer">

                                            <input type="range" step="10" min="640" max="1250" value="640" class="slider" id="myRange">

                                            <input type="number" id="tentacles" class="tentacles" min="640" max="1250" /> <h3 id="salary_title">Saisie manuelle</h3>

                                        </div>

                                            <?php echo '<script'; ?>
 src="Js.js"><?php echo '</script'; ?>
>

                                </form>

                            <h2 id="filters_name">Entreprise</h2>
                            <hr id="filters_bar">

                                <form>

                                    <select id="select_box" name="Entreprise" required>
                                   
                                        <option value="">Choisir</option>

                                                           
                                               
                                    </select>

                                </form>


                    </form>

                                 
              
            </fieldset><?php }
}
