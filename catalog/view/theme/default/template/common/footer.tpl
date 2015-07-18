  </div>
  <div id="side-footer"></div>
  <div id="footer">
  	<div id="footer-content">
    <div class="column">
      <h3><?php echo $text_information; ?></h3>
      <ul>
        <?php foreach ($informations as $information) { ?>
        <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
    <div class="column">
      <h3><?php echo $text_service; ?></h3>
      <ul>
        <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
        <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
        <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
      </ul>
    </div>
    <div class="column">
      <h3><?php echo $text_extra; ?></h3>
      <ul>
        <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
        <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
        <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
        <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
      </ul>
    </div>
    <div class="column">
      <h3><?php echo $text_account; ?></h3>
      <ul>
        <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
        <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
        <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
        <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
      </ul>
    </div>
      <div id="powered">Wooupy Inc (Call/SMS : 085294076828) - (Pin BB : 29221E07)
      
      	<br />Copyright &copy; 2011 - <?php echo date('Y'); ?> | All Rights Reserved</div>
  </div>
  </div>
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-23510774-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
</body>
</html>