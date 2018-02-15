{*
* 2007-2018 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
* @author    PrestaShop SA <contact@prestashop.com>
* @copyright 2007-2018 PrestaShop SA
* @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
* International Registered Trademark & Property of PrestaShop SA
*}
<div class="center_page">
    <form id="mj_login_form" action="{$MJ_adminmodules_link|escape:'htmlall':'UTF-8'|default:''}" method="post">
        <fieldset>
            <legend>{l s='Your Mailjet login information' mod='mailjet'}</legend>
            <div>
                <p>{l s='Please enter below your Mailjet login information.' mod='mailjet'} (<a href="https://eu.mailjet.com/account/api_keys" target="_blank"><u>{l s='Mailjet account' mod='mailjet'}</u></a>)</p>
                <p><label>Api Key :</label><input type="text" id="mj_api_key" name="mj_api_key" value="{$account->API_KEY|escape:'htmlall':'UTF-8'|default:''}" size="60" /></p>
                <p><label>Secret Key :</label><input type="text" id="mj_secret_key" name="mj_secret_key" value="{$account->SECRET_KEY|escape:'htmlall':'UTF-8'|default:''}" size="60" /></p>
                <div style="width: 45%;margin: 0 auto;">
                    {l s='Clicking the "Save & Login" will start an initial customer sync process, which will take a few minutes depending on the size of your customer database. Please be patient.' mod='mailjet'}
                </div>
                <p><label>&nbsp;</label><input type="submit" id="login_button" name="MJ_set_connect" value="{l s='Save & Login' mod='mailjet'}" class="button" /></p>
                <p style="display:none;color:black;width:45%;margin:0 auto;" id="loading_message"><strong>Please wait...</strong></p>
                <p style="display:none;color:red;width:45%;margin:0 auto;" id="wrong_credentials_message"><b>Wrong credentials</b></p>
            </div>
        </fieldset>
    </form>
    <p><a href="javascript:;" onclick="history.back()">&lt; {l s='Back to home' mod='mailjet'}</a></p>
</div>
