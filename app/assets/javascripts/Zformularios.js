var widthIni;
function adopta(){
	$("#info").animate(
            {opacity: 0}	, "slow");
			setTimeout("document.getElementById('info').style.display = 'none';",800);
			$("#fotoMascota").animate(
		            {width: "100px", height:"100px",marginTop:"110px"}	, "slow");
			
			
					setTimeout("document.getElementById('solicitud-info').style.display = 'block';",600);
			
					setTimeout("$('#solicitud-info').animate({opacity: 1,marginLeft:'-40px'}	, 'slow');",200);
			
	widthIni = document.getElementById('fotoMascota').style.width;
	
}

function cierraFormulario(){
	$("#info").animate(
            {opacity: 1}	, "slow");
			setTimeout("document.getElementById('info').style.display = 'block';",800);
			$("#fotoMascota").animate(
		            {height: "281px",width:widthIni,marginTop:"0"}	, "slow");
			
			
		
			
					setTimeout("$('#solicitud-info').animate({opacity: 0,marginLeft:'40px'}	, 'slow');",200);
			
					setTimeout("document.getElementById('solicitud-info').style.display = 'none';",800);
	
}

