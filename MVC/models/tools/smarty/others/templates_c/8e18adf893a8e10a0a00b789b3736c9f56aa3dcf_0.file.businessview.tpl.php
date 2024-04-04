<?php
/* Smarty version 4.4.1, created on 2024-04-03 22:09:34
  from 'C:\xampp\apache\project\cesi\Projet WEB\MVC\views\components\businesses\businessview.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.4.1',
  'unifunc' => 'content_660db77e505c14_10342071',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '8e18adf893a8e10a0a00b789b3736c9f56aa3dcf' => 
    array (
      0 => 'C:\\xampp\\apache\\project\\cesi\\Projet WEB\\MVC\\views\\components\\businesses\\businessview.tpl',
      1 => 1712174973,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_660db77e505c14_10342071 (Smarty_Internal_Template $_smarty_tpl) {
?><!-- This Design page will have the following sections: 
1. The Business Informations 
2. The Business offers 
3. The possibility to add a review with a rating
4. The Business Reviews from the users -->



<!-- The Business Informations -->
<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['business']->value, 'b');
$_smarty_tpl->tpl_vars['b']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['b']->value) {
$_smarty_tpl->tpl_vars['b']->do_else = false;
?>
<div class="container">
    <div class="left">
        <div class="row">
            <div class="col-md-12">
                <h1 class="text-center">Business Informations</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <h2 class="text-center"><?php echo $_smarty_tpl->tpl_vars['b']->value->getName();?>
</h2>
            </div>
        </div>
<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
      The Business offers 

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
            The possibility to add a review with a rating 
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
            The Business Reviews from the users 

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
