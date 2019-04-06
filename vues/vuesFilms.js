function listerJSON(listeFilms){
    var res="<div class=\"col-4\">";
	var taille=listeFilms.length;
	for( var i=0; i<taille; i++){
		ligne=listeFilms[i];
		rep="<div class=\"col-4\">";
		rep="<img class=\"card-img-top\" src='pochettes/"+(ligne.pochette)+"' class=\"img-responsive\" alt=\"Image\" >\n";
		rep+="<div class=\"card-body\">";
		rep+="<h5 class=\"card-title\">"+(ligne.titre)+"</h5>\n";
		rep+="<p class=\"card-text\">Réalisateur :"+(ligne.reali)+"</p>\n";
		rep+="<p class=\"card-text\">Durée:"+(ligne.duree)+"min</p>\n";
		rep+="<p class=\"card-text\">Prix :"+(ligne.prix)+ "$</p>\n";
		rep+="</div>";
		rep+="</div>"
		
        res= res+rep+"</div>"+"<div class=\"col-4\">";		
		
	}
	document.getElementById("contenu").innerHTML = res;	
	 
}
var vue=function(action,donnees){
	switch(action){
		case 'enregistrer':
			$('#message').html(donnees);
			setTimeout(function(){ $('#message').html(""); }, 3000);
		break;
		case 'enregistrerJSON':
		case 'enleverJSON' :
		case 'ficheJSON' :
		case 'modifierJSON':
			$('#message').html(donnees.msg);
			setTimeout(function(){ $('#message').html(""); }, 3000);
		break;
		case 'enregistrerXML':
			var msg=donnees.getElementsByTagName('msg')[0].firstChild.nodeValue;
			$('#message').html(msg);
			setTimeout(function(){ $('#message').html(""); }, 3000);
		break;
		case 'listerJSON':
			listerJSON(donnees);
		break;
		case 'montrerFiche':
			montrerFiche(donnees);
		break;
		
	}
	
}