function envoyerLister(){
	$.ajax({
		url:'serveur/controleurFilms.php',
		type:'POST',
		data:{"action":'lister'},
		dataType:'JSON',
		success: function(listeFilms){
	       vue('listerJSON',listeFilms);
			//alert(JSON.stringify(listeFilms));
		},
		fail:function(){
			alert("Vous avez un GROS problème");
		}
	});
}
function envoyerCategorie(catego){
	$.ajax({
		url:'serveur/controleurFilms.php',
		type:'POST',
		data:{"action":'listercategorie',"categorie":catego},
		dataType:'json',
		success:function(listeFilms){
			vue('listerJSON',listeFilms)
		},
		fail:function(){
			alert("Vous avez un GROS problème");
		}
	})
	
}

//controleur des requetes
var requetes=function(action,catego){
switch(action){
	case 'lister' :
		envoyerLister();
	break;
	case 'listercategorie' :
		envoyerCategorie(catego);
	break;
	default :
}	
}