<?php

/**
 * Copyright (C) 2008-2012 FluxBB
 * based on code by Rickard Andersson copyright (C) 2002-2008 PunBB
 * License: http://www.gnu.org/licenses/gpl.html GPL version 2 or higher
 */

// Tell header.php to use the afterbuy template
define('PUN_afterbuy', 1);

define('PUN_ROOT', dirname(__FILE__).'/');
require PUN_ROOT.'include/common.php';


if ($pun_user['g_read_board'] == '0')
	message($lang_common['No view'], false, '403 Forbidden');


// Load the afterbuy.php language file
require PUN_ROOT.'lang/'.$pun_user['language'].'/afterbuy.php';


$page_title = array(pun_htmlspecialchars($pun_config['o_board_title']), $lang_afterbuy['After Buy']);
define('PUN_ACTIVE_PAGE', 'afterbuy');
require PUN_ROOT.'header.php';
?>
<h2><span><?php echo $lang_afterbuy['After purchasing the subscription'] ?></span></h2>
<div class="box">
	<div class="inbox">
		<p><code>[1]<?php?>After purchasing the subscription, you have the above line indicates when you have completed the subscription</code></p>
		<p><code>[2]<?php?>Also, after purchasing a subscription, you are given a premium status and with this status you have access to a new premium section</code></p>
		<p><code>[3]<?php?>If for some reason you have changed HWID then you can reset it in the profile in the Premium section</code></p>
		<p><code>[4]<?php?>If you changed Discord for some reason, you can also reset it in the profile in the Premium section</code></p>
		<p><code>[5]<?php?>You can also request a refund if you have a payment error or have been hacked</code></p>
		<p><code>[6]<?php?>After the ban you can not request a refund</code></p>
		<p><code>[7]<?php?>Also, for violation of the rules you can withdraw a subscription or premium status or ban</code></p>
		<p><code></code></p>
        <p><code>Successful use</code></p>
        <p><code></code></p>
	</div>
</div>
<?php

require PUN_ROOT.'footer.php';