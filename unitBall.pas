unit unitBall;

interface
	uses unitGameObjet;

	type ball=record
		obj : gameObjet;
		couleur: integer;
		velocite: integer;
end;

	procedure setObjet (var boule : ball ; obj : gameObjet);
	procedure setCouleur (var boule : ball; couleur : integer);
	procedure setVelocite (var boule : ball; velocite : integer);
	function getObjet (boule : ball) : gameObjet;
	function getCouleur (boule : ball) : integer;
	function getVelocite (boule : ball) : integer; 

implementation
	
	procedure setObjet (var boule : ball ; obj : gameObjet);
	//BUT : Applique un game objet a une boule
	//ENTREE : une boule et un game objet
	//SORTIE : la balle 
	begin
		boule.obj := obj;
	end;

	procedure setCouleur (var boule : ball ; couleur : integer);
	//BUT : Applique une couleur a une boule
	//ENTREE : une boule et une couleur
	//SORTIE : la balle coloré
	begin
		boule.couleur := couleur;
	end;

	procedure setVelocite (var boule : ball ; velocite : integer);
	//BUT : Applique une velocite a une boule
	//ENTREE : une boule et une velocite
	//SORTIE : la balle en mouvement
	begin
		boule.velocite := velocite;
	end;

	function getObjet (boule : ball) : gameObjet;
	//BUT : Recupere l'objet d'une balle
	//ENTREE : une balle
	//SORTIE : un game objet
	begin
		getObjet := boule.obj;
	end;

	function getCouleur (boule : ball) : integer;
	//BUT : Recupere la couleur d'une balle
	//ENTREE : une balle
	//SORTIE : la couleur
	begin
		getCouleur := boule.couleur;
	end;

	function getVelocite (boule : ball) : integer;
	//BUT : Recupere la velocite d'une balle
	//ENTREE : une balle
	//SORTIE : la velocite
	begin
		getVelocite := boule.velocite;
	end;

end.