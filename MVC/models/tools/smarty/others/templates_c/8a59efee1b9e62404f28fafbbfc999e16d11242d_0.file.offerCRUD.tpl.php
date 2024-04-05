<?php
/* Smarty version 4.4.1, created on 2024-04-05 13:37:02
  from 'C:\xampp\apache\project\cesi\Projet WEB\MVC\views\components\offer\offerCRUD.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.4.1',
  'unifunc' => 'content_660fe25e210344_79713034',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '8a59efee1b9e62404f28fafbbfc999e16d11242d' => 
    array (
      0 => 'C:\\xampp\\apache\\project\\cesi\\Projet WEB\\MVC\\views\\components\\offer\\offerCRUD.tpl',
      1 => 1712317018,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_660fe25e210344_79713034 (Smarty_Internal_Template $_smarty_tpl) {
?>
    <body>
        <main>
           
            <h1>Formulaire Offre</h1>
           <!-- <section id="form">-->
                
            <button onclick="CreateForm()" class="button">Créer</button>
            <button onclick="UpdateForm()" class="button">Modifier</button>
            <button onclick="DeleteForm()" class="button">Supprimer</button>
            <button onclick="ViewForm()" class="button">Afficher</button>

        <form class="form">
            <form id="createForm" class="active">
            <p class="title">Crée Offre </p>
            <p class="message">Veuillez renseigner les informations. </p>
          

        <div class="flex">
             <label>
                   <input class="input" type="text" placeholder="" required="">
                <span>Nom de l'offre :</span>
            </label>
            

            <label>
                <input class="input" type="text" placeholder="" required="">
                <span>Salaire ( € ) :</span>
            </label> 
           
        </div>  
            <label>
               <input class="input" type="text" placeholder="" required="">
               <span>Description de l'offre</span>
            </label>
        <div class="flex">
            <label>
                <input class="input" type="date" placeholder="" required="">
                <span>Date de l'offre :</span>
            </label> 
            <label>
                <input class="input" type="int" placeholder="" required="">
                <span>Durée du stage :</span>
            </label>
            <label>
                <input class="input" type="date" placeholder="" required="">
                <span>Début de l'offre :</span>
            </label>
            
        </div>
        <div class="flex">
            <label>
                <input class="input" type="text" placeholder="" required="">
                 <span>Nombre de places prises :</span>
            </label>
            <label>
                <input class="input" type="text" placeholder="" required="">
                <span>Nombre de places disponibles :</span>
            </label>

        </div>
            <label>
                <input class="input" type="text" placeholder="" required="">
                <span>Entreprise</span>
            </label>
      
            

            <button class="submit">Submit</button>
            <p class="signin">Mauvais formulaire ?<a onclick="window.location.href='profile'">Retour</a> </p>
        </form>
        <form id="updateForm" >
        <p class="title">Modifier Offre </p>
        <p class="message">Veuillez renseigner les informations. </p>
      

    <div class="flex">
         <label>
               <input class="input" type="text" placeholder="" required="">
            <span>Nom de l'offre :</span>
        </label>
        <label>
            <input class="input" type="date" placeholder="" required="">
            <span>Date de l'offre :</span>
        </label> 
       
    </div>  
    
        <label>
           <input class="input" type="text" placeholder="" required="">
           <span>Description de l'offre</span>
        </label>
       
   
        <label>
            <input class="input" type="date" placeholder="" required="">
            <span>Date de début de l'offre :</span>
        </label>
        <label>
            <input class="input" type="int" placeholder="" required="">
            <span>Durée du stage :</span>
        </label>
        <label>
            <input class="input" type="text" placeholder="" required="">
             <span>Nombre de places prises :</span>
        </label>
        <label>
            <input class="input" type="text" placeholder="" required="">
            <span>Nombre de places disponibles :</span>
        </label>
        <label>
            <input class="input" type="text" placeholder="" required="">
            <span>Entreprise</span>
        </label>
  
        

        <button class="submit">Submit</button>
        <p class="signin">Mauvais formulaire ?<a onclick="window.location.href='profile'">Retour</a> </p>
    </form>

            <form id="viewForm" >
                <p class="title">Voir Offre </p>
                <p class="message">Veuillez renseigner les informations. </p>

                <div class="flex">
                    <label>
                        <input class="input" type="text" placeholder="" required="">
                        <span>Id de l'offre :</span>
                    </label>

                </div>
                <button class="submit">Submit</button>
                <p class="signin">Mauvais formulaire ?<a onclick="window.location.href='profile'">Retour</a> </p>



                </form>
        
        <form id="deleteForm">
            <p class="title">Supprimer Offre </p>
            <p class="message">Veuillez renseigner les informations. </p>
            <div class="flex">
                <label>
                    <input class="input" type="text" placeholder="" required="">
                    <span>Id de l'offre :</span>
                </label>
            </div>
            <button class="submit">Submit</button>
            <p class="signin">Mauvais formulaire ?<a onclick="window.location.href='profile'">Retour</a> </p>

        </form>

        </form>


        
        </main>
    </body>
   
<?php }
}
