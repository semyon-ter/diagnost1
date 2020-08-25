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
			<div class="popup-bg _popup-cls"></div>
			<div data-popup="i1" class="popup-item popup-item__width-1 _popup-item">
				<div class="popup-close _popup-cls"></div>
				<h2 class="title title_color-1 border-decor border-decor__color-2"><span>Креатинин</span></h2>
				<div data-scrollbar="true" class="roller roller__height-1 _roller">
					<div class="indent_pr-t1">
						<p><span class="t t-color3">Что это такое?</span><br> Креатинин является продуктом распада креатина в мышечной ткани и обеспечивает энергию для сокращения мышц. Почти весь креатин вырабатывается в почках, поэтому его концентрация в крови является надежным показателем их функции. Количество вырабатываемого креатина зависит от массы тела человека (в частности, мышечной массы). Мужчины, как правило, имеют более высокий уровень креатинина, чем женщины.</p>
						<p><span class="t t-color3">Что может означать низкий уровень креатинина? </span><br>Может быть несколько симптомов или последствий, по которым у вас низкий уровень креатинина, таких как голодание, чрезмерное употребление жидкости или снижение функции почечной фильтрации. Во всех этих условиях вам следует обратиться к врачу.</p>
						<p><span class="t t-color3">Что может означать высокий уровень креатинина? </span><br>Высокий уровень креатинина может быть в случае чрезмерной физической активности, чрезмерного потребления мяса или приема нейротоксичных лекарств. Это может быть признаком обезвоживания, острой и хронической почечной недостаточности, амилоидоза или повреждения почек при диабете. Чрезвычайно высокий уровень креатинина может быть связан с недостаточностью сердечно-сосудистой системы, а также с массивным разрушением мышечной ткани или повреждением почечных канальцев, которое может возникнуть из-за инфекционных или аутоиммунных заболеваний, и как результат высвобождение большого количества креатина из клеток в кровь.</p>
					</div>
				</div>
			</div>
		</div>
		<script src="js/jquery-3.5.1.js"></script>
		<script src="src-main/common.js"></script>
		<script src="lib/perfect-scrollbar/js/perfect-scrollbar.jquery.js"></script>
		<script src="lib/smooth-scrollbar/dist/smooth-scrollbar.js"></script>
		<script src="lib/smooth-scrollbar/dist/plugins/overscroll.js">   </script>
		<script src="js/all.js"></script>
	</body>
</html>