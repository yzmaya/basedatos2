<!DOCTYPE html> 
<html>
<head>
<meta charset="utf-8">
<title>Proyecto de base de datos 2 con ajax</title>

<script src="jquery-1.6.4.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="node_modules/bootstrap/dist/css/bootstrap.css"/>


<script>
$(document).ready(function(e) {
   // alert("probando jquery");
   $("#guardar").click(function(){
	$.ajax({
         //url:'http://localhost:9999/mensaje/'+$("#titulo").val()+'/'+$("#cuerpo").val(),
         url:'actualizar-producto',
         type:'post',
         data:{
           id:$("#id").val(),
           precio:$("#precio").val()
           
         },
         success:function(datos){
            $("#resultado").html(datos); 
            alert(datos);
         },
         failure:function(){
             alert("algo muy malo paso");
         }
            
        });
	
   });
}); 
</script>

</head> 
<body> 

<form class="form-inline">
  <div class="form-group">
    <label for="exampleInputName2">id</label>
    <input type="text" class="form-control" id="id" placeholder="mete tu id">
  </div>
  <div class="form-group">
    <label for="exampleInputEmail2">nuevo precio</label>
    <input type="text" class="form-control" id="precio" placeholder="echame tu precio">
  </div>
  <button id="guardar" type="button" class="btn btn-default">Actualizar Producto</button>
</form>
    <div id="resultado"></div>
</body>
</html>
