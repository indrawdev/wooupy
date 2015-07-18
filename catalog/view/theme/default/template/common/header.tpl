<?php if (isset($_SERVER['HTTP_USER_AGENT']) && !strpos($_SERVER['HTTP_USER_AGENT'], 'MSIE 6')) echo '<?xml version="1.0" encoding="UTF-8"?>'. "\n"; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" xml:lang="<?php echo $lang; ?>">
<head>
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<meta name="google-site-verification" content="tKMUupe8QBrO1qekOUaIYM6tyILawQSPv3565uVW-Y0" />
<meta name="y_key" content="a3372eff3529415e" />
<meta name="msvalidate.01" content="ED43579E357776F213E2D399FFA007A9" />
<meta name="norton-safeweb-site-verification" content="3ms6lbdd8f2rxziwsn180lll5i0xig2nnibshfklvtyj3ye204-9wwhjqf2ulzfgh107gmgkfwr5o-kyj2b38epd9x53twlxzvu01zr81yq0da6-qv0tckagvx0fmjf1" />
<meta name="alexaVerifyID" content="fgbxS1Xp-eizw1bUNo4oMuvzxZI" />
<meta name="wot-verification" content="ae8a0c6976ca7d3cb04f" />
<meta name="bitly-verification" content="2efa9e571ade" />
<meta name="googlebot" content="index, follow" />
<meta name="robots" content="index, follow" />
<meta name="distribution" content="global" />
<link href="catalog/view/theme/default/image/favicon.ico" rel="shortcut icon" type="image/vnd.microsoft.icon" />
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/stylesheet.css" />
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.6.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.9.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.9.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/external/jquery.cookie.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/fancybox/jquery.fancybox-1.3.4.css" media="screen" />
<script type="text/javascript" src="catalog/view/javascript/jquery/tabs.js"></script>
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<!--<script type="text/javascript">
$(function(){
    var url = window.location.pathname, 
        urlRegExp = new RegExp(url.replace(/\/$/,'') + "$");
        $('#menu li a').each(function(){
		
            if(urlRegExp.test(this.href.replace(/\/$/,''))){
                $(this).addClass('selected');
            }
        });
});
</script>-->
<?php foreach ($scripts as $script) { ?>
<?php } ?>
<!--[if IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie7.css" />
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie6.css" />
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('.png, img');
</script>
<![endif]-->
<?php echo $google_analytics; ?>
</head>
<body>
<div id="container">
<div id="top-header"></div>
<div id="header">
  <h1 id="logo"><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
  <?php if (count($languages) > 1) { ?>
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
    <div id="language"><?php echo $text_language; ?><br />
      <?php foreach ($languages as $language) { ?>
      &nbsp;<img src="image/flags/<?php echo $language['image']; ?>" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>" onclick="$('input[name=\'language_code\']').attr('value', '<?php echo $language['code']; ?>').submit(); $(this).parent().parent().submit();" />
      <?php } ?>
      <input type="hidden" name="language_code" value="" />
      <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
    </div>
  </form>
  <?php } ?>
  <?php if (count($currencies) > 1) { ?>
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
    <div id="currency"><?php echo $text_currency; ?><br />
      <?php foreach ($currencies as $currency) { ?>
      <?php if ($currency['code'] == $currency_code) { ?>
      <?php if ($currency['symbol_left']) { ?>
      <a title="<?php echo $currency['title']; ?>"><b><?php echo $currency['symbol_left']; ?></b></a>
      <?php } else { ?>
      <a title="<?php echo $currency['title']; ?>"><b><?php echo $currency['symbol_right']; ?></b></a>
      <?php } ?>
      <?php } else { ?>
      <?php if ($currency['symbol_left']) { ?>
      <a title="<?php echo $currency['title']; ?>" onclick="$('input[name=\'currency_code\']').attr('value', '<?php echo $currency['code']; ?>').submit(); $(this).parent().parent().submit();"><?php echo $currency['symbol_left']; ?></a>
      <?php } else { ?>
      <a title="<?php echo $currency['title']; ?>" onclick="$('input[name=\'currency_code\']').attr('value', '<?php echo $currency['code']; ?>').submit(); $(this).parent().parent().submit();"><?php echo $currency['symbol_right']; ?></a>
      <?php } ?>
      <?php } ?>
      <?php } ?>
      <input type="hidden" name="currency_code" value="" />
      <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
    </div>
  </form>
  <?php } ?>
  <div id="cart">
    <div class="heading">
      <h4><?php echo $text_cart; ?></h4>
      <a><span id="cart_total"><?php echo $text_items; ?></span></a></div>
    <div class="content"></div>
  </div>
  <div id="search">
    <div class="button-search"></div>
    <?php if ($filter_name) { ?>
    <input type="text" name="filter_name" value="<?php echo $filter_name; ?>" />
    <?php } else { ?>
    <input type="text" name="filter_name" value="<?php echo $text_search; ?>" onclick="this.value = '';" onkeydown="this.style.color = '#000000';" />
    <?php } ?>
  </div>
  <div id="welcome">
    <?php if (!$logged) { ?>
    <?php echo $text_welcome; ?>
    <?php } else { ?>
    <?php echo $text_logged; ?>
    <?php } ?>
  </div>
  <div class="links">
  <ul class="navi">
  	<li class="home"><a href="<?php echo $home; ?>"><?php echo $text_home; ?></a></li>
    <li class="myaccount"><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
    <li class="cart"><a href="<?php echo $cart; ?>"><?php echo $text_cart; ?></a></li>
    <li class="checkout"><a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></li>
  </ul>
  </div>
</div>
<?php if ($categories) { ?>
<div id="menu">
  <ul>
    <?php foreach ($categories as $category) { ?>
    <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
      <?php if ($category['children']) { ?>
      <div>
        <?php for ($i = 0; $i < count($category['children']);) { ?>
        <ul>
          <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
          <?php for (; $i < $j; $i++) { ?>
          <?php if (isset($category['children'][$i])) { ?>
          <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
          <?php } ?>
          <?php } ?>
        </ul>
        <?php } ?>
      </div>
      <?php } ?>
    </li>
    <?php } ?>
  </ul>
</div>
<?php } ?>
<div id="notification"></div>