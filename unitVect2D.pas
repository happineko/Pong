unit unitVect2D;

interface
	type vect2D=record
		posX : integer;
		posY : integer;
end;

	procedure setVectPosX (var position : vect2D; x : integer);
	procedure setVectPosY (var position : vect2D; y : integer);
	function getVectPosX (position : vect2D) : integer;
	function getVectPosY (position : vect2D) : integer;

	function addScal(vecteur1,vecteur2 : vect2D):vect2D;
	function sousScal(vecteur1,vecteur2 : vect2D):vect2D;
	function prodUnScal(vecteur : vect2D; a : integer):vect2D;
	function prodScal(vecteur1,vecteur2 : vect2D):integer;
	function prodVect(vecteur1,vecteur2 : vect2D):vect2D;


implementation

	procedure setVectPosX (var position : vect2D; x : integer);
	//BUT : Applique une valeur x en position x du vecteur 2D
	//ENTREE : Un vecteur 2D et x
	//SORTIE : La valeur x du vecteur 2D
	begin
		position.posX := x;
	end;

	procedure setVectPosY (var position : vect2D; y : integer);
	//BUT : Applique une valeur y en position y du vecteur 2D
	//ENTREE : Un vecteur 2D et y
	//SORTIE : La valeur y du vecteur 2D
	begin
		position.posY := y;
	end;

	function getVectPosX (position : vect2D) : integer;
	//BUT : Récupère la position x d'un vecteur 2D
	//ENTREE : Un vecteur 2D
	//SORTIE : la valeur x du vecteur 2D
	begin
		getVectPosX := position.posX
	end;

	function getVectPosY (position : vect2D) : integer;
	//BUT : Récupère la position y d'un vecteur 2D
	//ENTREE : Un vecteur 2D
	//SORTIE : la valeur y du vecteur 2D
	begin
		getVectPosY := position.posY
	end;

	function addScal(vecteur1,vecteur2 : vect2D):vect2D;
	//BUT : Additionner deux vecteurs et donner leur somme.
	//ENTREE : Deux vecteur à additionner.
	//SORTIE : Un vecteur somme.
	var vectsomme:vect2D;
	begin
	    setVectPosX(vectsomme, getVectPosX(vecteur1)+getVectPosX(vecteur2));
	    setVectPosY(vectsomme, getVectPosY(vecteur1)+getVectPosY(vecteur2));
	    addScal:=vectsomme;
	end;

	function sousScal(vecteur1,vecteur2 : vect2D):vect2D;
	//BUT : Soustraire deux vecteurs et donner leur differences.
	//ENTREE : Deux vecteur à additionner.
	//SORTIE : Un vecteur difference.
	var vectdiff:vect2D;
	begin
	    setVectPosX(vectdiff, getVectPosX(vecteur1)-getVectPosX(vecteur2));
	    setVectPosY(vectdiff, getVectPosY(vecteur1)-getVectPosY(vecteur2));
	    sousScal:=vectdiff;
	end;

	function prodUnScal(vecteur : vect2D; a : integer):vect2D;
	//BUT : Multiplier un vecteur et un entier.
	//ENTREE : un vecteur et un entier à multiplier.
	//SORTIE : le produit.
	var vectprod:vect2D;
	begin
	    setVectPosX(vectprod, getVectPosX(vecteur)*a);
	    setVectPosY(vectprod, getVectPosY(vecteur)*a);
	    prodUnScal:=vectprod;
	end;

	function prodScal(vecteur1,vecteur2 : vect2D):integer;
	//BUT : Multiplier deux scalaires.
	//ENTREE : les deux vecteurs.
	//SORTIE : la somme des produits.
	begin
	    prodScal:= (getVectPosX(vecteur1)*getVectPosX(vecteur2)) + (getVectPosY(vecteur1)*getVectPosY(vecteur2));
	end;

	function prodVect(vecteur1,vecteur2 : vect2D):vect2D;
	//BUT : Multiplie deux vecteurs.
	//ENTREE : Deux vecteur à multiplier.
	//SORTIE : Un produit vecteur.
	var vectdiff:vect2D;
	begin
	    setVectPosX(vectdiff, getVectPosY(vecteur1)-getVectPosY(vecteur2));
	    setVectPosY(vectdiff, getVectPosX(vecteur2)-getVectPosX(vecteur1));
	    prodVect:=vectdiff;
	end;
end.