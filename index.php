<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="utf-8">
	<title>Importar dados do Excel</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<style type="text/css">
		input[type='file']{
			display: none;
		}
		#view-img{
    		cursor: pointer;
		}
		#file, #enviar{
			width: 100%;
			text-align: center;
		}	
	</style>
</head>
<body>
	<div class="jumbotron">
		<h1 class="text-center">Upload Excel</h1>
	</div>
	<div class="col-xs-4 col-xs-offset-4">
		<div class="panel panel-default text-center">
			<nav class="navbar navbar-default">
				<h3 class="text-center text-success">Selecione um arquivo XML</h3>
			</nav>
			<form method="POST" action="processa.php" enctype="multipart/form-data">
            	<label for="arquivo">
            		<img class="img-responsive" id="view-img" src="logo-excel.png">
            		<div id="file"></div>
            		<input id="arquivo" type="file" name="arquivo" required>  
            	</label>  	
            	<input id="enviar" class="btn btn-success" type="submit" value="Enviar">	
            </form>	
        </div>    
    </div>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
    <script>
		$('#arquivo').on('change', function() {
  			var fileName = $(this)[0].files[0].name;
  			$('#file').html(fileName);
		});
	</script>
</body>
</html>