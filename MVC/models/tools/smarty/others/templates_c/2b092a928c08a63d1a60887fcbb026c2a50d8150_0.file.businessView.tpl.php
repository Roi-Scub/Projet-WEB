<?php
/* Smarty version 4.4.1, created on 2024-04-02 09:16:21
  from 'C:\xampp\apache\project\cesi\Projet WEB\MVC\views\components\businesses\businessView.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.4.1',
  'unifunc' => 'content_660bb0c53adb57_56281421',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '2b092a928c08a63d1a60887fcbb026c2a50d8150' => 
    array (
      0 => 'C:\\xampp\\apache\\project\\cesi\\Projet WEB\\MVC\\views\\components\\businesses\\businessView.tpl',
      1 => 1712042174,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_660bb0c53adb57_56281421 (Smarty_Internal_Template $_smarty_tpl) {
?><!-- This Design page will have the following sections: 
1. The Business Informations 
2. The Business offers 
3. The possibility to add a review with a rating
4. The Business Reviews from the users -->



<!-- The Business Informations -->

<div class="container">
    <div class="left">
        <div class="row">
            <div class="col-md-12">
                <h1 class="text-center">Business Informations</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <h2 class="text-center">Business Name</h2>
            </div>
        </div>
    

        <!-- The Business offers -->

        <div class="row">
            <div class="col-md-12">
                <h1 class="text-center">Business Offers</h1>
            </div>
        </div>
            <div class="row">
                <div class="col-md-12">
                    <h2 class="text-center">Offer 1</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <h3 class="text-center">Offer 2</h3>
                </div>

            </div>
            <div class="row">
                <div class="col-md-12">
                    <h4 class="text-center">Offer 3</h4>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <h5 class="text-center">Offer 4</h5>
                </div>

            </div>
    </div>
    <div class="right">
            <!-- The possibility to add a review with a rating -->
            <div class="form-container">

                <form class="form">

                  <div class="rating">

                      <input value="5" name="rating" id="star5" type="radio">
                      <label for="star5"></label>
                      <input value="4" name="rating" id="star4" type="radio">
                      <label for="star4"></label>
                      <input value="3" name="rating" id="star3" type="radio">
                      <label for="star3"></label>
                      <input value="2" name="rating" id="star2" type="radio">
                      <label for="star2"></label>
                      <input value="1" name="rating" id="star1" type="radio">
                      <label for="star1"></label>

                  </div>

                  <div class="form-group">

                    <label for="email">Company Email</label>
                    <input type="text" id="email" name="email" required="">

                  </div>

                  <div class="form-group">

                    <label for="textarea">How Can We Help You?</label>
                    <textarea name="textarea" id="textarea" rows="10" cols="50" required=""></textarea>

                  </div>

                    <button class="form-submit-btn" type="submit">Submit</button>

                </form>

            </div>
            <!-- The Business Reviews from the users -->

            <div class="row">
                <div class="col-md-12">
                    <h1 class="text-center">Business Reviews</h1>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <h2 class="text-center">Review 1</h2>
                </div>

            </div>
            <div class="row">
                <div class="col-md-12">
                    <h3 class="text-center">Review 2</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <h4 class="text-center">Review 3</h4>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <h5 class="text-center">Review 4</h5>
                </div>
            </div>

        </div>
    </div>
</div>

<?php }
}
