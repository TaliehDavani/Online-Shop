<?php
require_once("../BD/connexion.inc.php");
//header('Content-Type: application/json');
$rep=array();
function lister(){
	
	global $connexion, $rep;	
	$requete="SELECT * FROM films";
	$stmt = $connexion->prepare($requete);
	$stmt->execute();
		
		//$reponse = $stmt->fetchAll(PDO::FETCH_ASSOC);
		//print_r($reponse);
		//header('Content-Type: application/json');
		//echo '{"allo":"allo"}';
		//echo( json_encode($reponse));
            
		while($ligne=$stmt->fetch(PDO::FETCH_ASSOC)){
			$rep[]=$ligne;

		}
		//print_r( $rep);
		echo json_encode($rep);
		
}
		
 function categorie($catego){
	
	global $connexion,$rep;
	$requete="SELECT * FROM films WHERE categorie=?";
$stmt = $connexion->prepare($requete);
$stmt->execute(array($catego));
  while($ligne=$stmt->fetch(PDO::FETCH_ASSOC)){
	$rep[]=$ligne;
}
  echo json_encode($rep);
}

//controleur films
$action=$_POST['action'];
 switch($action){
	case 'listercategorie':
	    $catego=$_POST['categorie'];
		categorie($catego);
	break;
	case 'lister':
		lister();
		
	break;
}
?>