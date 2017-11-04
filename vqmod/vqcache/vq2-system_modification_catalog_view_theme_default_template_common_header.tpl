<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />

<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php echo $google_analytics; ?>

							<link href="catalog/view/theme/default/stylesheet/sizechart.css" rel="stylesheet">
			
</head>
<body class="<?php echo $class; ?>">
<nav id="top">
  <div class="container">
    <?php echo $currency; ?>
    <?php echo $language; ?>
    <div id="top-links" class="nav">
     <?php echo $search; ?>
      <ul class="list-inline pull-right">
       <li class="dropdown">
         <?php if ($logged) { ?>
		<a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_account; ?></span> <span class="caret"></span></a>
		  <ul class="dropdown-menu dropdown-menu-right">
		    <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
		    <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
		   <!-- <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li> -->
		   <!-- <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li> -->
		    <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
		   </ul>
           <?php } else { ?>
		  <!-- <a href="<?php echo $account; ?>" title="<?php echo $text_login; ?>" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_login; ?></span> <span class="caret"></span></a>
		     <ul class="dropdown-menu dropdown-menu-right">
			    <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
			    <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
<li><a href="<?php echo $feedextrack; ?>"><?php echo $text_feedextrack; ?></a></li>
		     </ul> -->
		     <a href="<?php echo $login; ?>" title="<?php echo $text_login; ?>" ><i class="fa fa-user"></i> <span><?php echo $text_login; ?></span></a>
		      
           <?php } ?>
          
        </li>
         <li><a href="<?php echo $contact; ?>"><i class="fa fa-phone"></i></a> <span class="hidden-xs hidden-sm hidden-md"><?php echo $telephone; ?></span></li>
        <li><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><i class="fa fa-heart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_wishlist; ?></span></a></li>
        <li><a href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>"><i class="fa fa-shopping-cart"></i> 
      <!--  <span id="cart-total">
         (<?php echo $text_items; ?>)
        </span>-->
        <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_shopping_cart; ?></span> 
        </a></li>
        <li><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><i class="fa fa-share"></i> <span class="hidden-xs hidden-sm hidden-md">Place Order</span></a></li>
         
      </ul>
     
    </div>
  </div>
</nav>
<header>
  <div class="container">
     <div id="top_container">
        <div id="logo">
          <?php if ($logo) { ?>
          <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
          <?php } else { ?>
          <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
        </div>
      <!--  <div id="promotion_content" > 
	    <a href="/about_us"><img src="<?php echo $maddy_img; ?>" title="About Maddy's Club" alt="about us" class="img-responsive" /></a>
    	</div> 
    	<div id="free_gift" class="blink hidden-xs hidden-sm hidden-md" > 
	   <img src="<?php echo $gifts_img; ?>" title="Gifts" class="img-responsive" />
	</div> -->
    	<div id="freeship_cod" > <!-- class="hidden-xs hidden-sm hidden-md" > -->
	  <img src="<?php echo $freeship_cod; ?>"  class="img-responsive" />
        </div>
         <?php echo $cart; ?>
      </div>
   </div>
</header>
<?php if ($categories) { ?>
<div class="container">
  <nav id="menu" class="navbar">
    <div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_category; ?></span>
      <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
    </div>
    <div class="collapse navbar-collapse navbar-ex1-collapse">
      <ul class="nav navbar-nav">
        <?php foreach ($categories as $category) { ?>
        <?php if ($category['children']) { ?>
        <li class="dropdown"><a  href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?></a>
          <div class="dropdown-menu">
            <div class="dropdown-inner">
              <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
              <ul class="list-unstyled">
                <?php foreach ($children as $child) { ?>
                <li>
                    <?php if ($child['name'] == 'Coming Soon..') { ?>
			                	<a href="#"><?php echo $child['name']; ?></a>
			                    <?php } else { ?>
			                    	<a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a>
                    <?php } ?>
                </li>
                <?php } ?>
              </ul>
              <?php } ?>
            </div>
           <!-- <a href="<?php echo $category['href']; ?>" class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a> -->
           </div>
        </li>
        <?php } else if($category['name'] == 'Offers') { ?>
        	 <li><a href="/offers"><?php echo $category['name']; ?></a></li>
       	<?php } else if($category['name'] == 'Customize a Dress') { ?>
       		<li><a class="custom_dress" href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
       	<?php } else if($category['name'] == 'Flash Sale') { ?>
       		<li><a class="blink" href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
        <?php } else { ?>
        	<li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
        <?php } ?>
        <?php } ?>
      </ul>
    </div>
  </nav>
</div>
<?php } ?>
