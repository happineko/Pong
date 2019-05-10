unit unitGameObjet;

interface
	uses unitVect2D;

	type gameObjet=record
		Texture : integer;
		position : vect2D;
end;

	procedure setTexture (var obj : gameObjet; Texture : integer);
	procedure setPosition (var obj : gameObjet; position : vect2D);
	function getTexture (obj : gameObjet) : integer;
	function getPosition (obj : gameObjet) : vect2D;

implementation

	procedure setTexture (var obj : gameObjet; Texture : integer);
	//BUT Applique une texture a un game objet
	//ENTREE : un objet et une texture
	//SORTIE : l'objet avec la texture
	begin
	obj.Texture := Texture;
	end;

	procedure setPosition (var obj : gameObjet; position : vect2D);
	//BUT Applique une position a un game objet
	//ENTREE : un objet et une position
	//SORTIE : l'objet avec sa position
	begin
	obj.position := position;
	end;

	function getTexture (obj : gameObjet) : integer;
	//BUT : Recupere la texture d'un objet
	//ENTREE : un objet
	//SORTIE : la texture
	begin
	getTexture := obj.Texture;
	end;

	function getPosition (obj : gameObjet) : vect2D;
	//BUT : Recupere la position d'un objet
	//ENTREE : un objet
	//SORTIE : la position
	begin
	getPosition := obj.position;
	end;

end.