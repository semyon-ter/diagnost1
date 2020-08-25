<!DOCTYPE html>
<html>
	<head>
		<meta name="viewport" content="width=device-width,initial-scale=1.0">
		<meta http-equiv="content-type" content="text/html; charset=utf-8">
		<meta name="keywords" content="">
		<meta name="description" content="">
		<title>Новый сайт        </title>
		<link href="style.css" rel="stylesheet" type="text/css">
		<link rel="icon" href="favicon.png" type="image/x-icon">
		<link rel="shortcut icon" href="favicon.png" type="image/x-icon">
		<link rel="stylesheet" href="lib/perfect-scrollbar/css/perfect-scrollbar.css">
	</head>
	<body> 
		<?php foreach($SECTIONS as $k=>$v) {; ?>
		<?php include_once(dirname(__FILE__).'/'.$v.'.php'); ?>
		<?php }; ?>
		<div class="popups-box _popup-box">
			<div class="popup-bg _popup-cls">
				<div class="popup-close"></div>
			</div>
			<div data-popup="1" class="popup-item _popup-item"> 
				<h2>Обратный звонок		</h2>
				<input type="text" placeholder="Имя">
				<input type="text" placeholder="Телефон">
				<input type="submit" value="Перезвонить">
			</div>
			<div data-popup="2" class="popup-item _popup-item">
				<h2>Поблагодарить персонал!		</h2>
				<textarea placeholder="Напишите ваш текст..."></textarea>
				<input type="submit" value="Перезвонить">
			</div>
		</div>
		<script src="js/jquery-3.5.1.js"></script>
		<script src="src-main/common.js"></script>
		<script src="js/all.js"></script>
		<script src="lib/perfect-scrollbar/js/perfect-scrollbar.jquery.js">   </script>
	</body>
</html>