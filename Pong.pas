program pong;

uses crt, unitGameObjet, unitVect2D, unitBall;

var
    //Initialisation des variables
    balle : ball; //Une balle
    vectDeplacement : vect2D; //Un veteur de deplacement pour la balle
    vectRes : vect2D; //Un vecteur résultat pour les calculs
    vectResProdScal : integer; //Un entier resultat du produit scalaire

BEGIN
    //Initialisation de la balle et des vecteurs
    setVectPosX(balle.obj.position,9);
    setVectPosY(balle.obj.position,12);
    setVectPosX(vectDeplacement,2);
    setVectPosY(vectDeplacement,2);
    setTexture(balle.obj,1);
    setCouleur(balle,2);
    setVelocite(balle,3);

    clrscr;
    //Test position balle
    writeln('Position balle : (',balle.obj.position.posX,',',balle.obj.position.posY,')');

    //Test texture
    writeln('La balle a une texture ',balle.obj.texture);

    //Test couleur
    writeln('La balle a une couleur ',balle.couleur);

    //Test velocite
    writeln('La balle a une velocite ',balle.velocite);

    //Test vecteur deplacement
    writeln('Position vecteur deplacement : (',vectDeplacement.posX,',',vectDeplacement.posY,')');

    //Calcul addition scalaire
    vectRes := addScal(balle.obj.position,vectDeplacement);
    writeln('addition scalaire de la balle et du vecteur deplacement (',getVectPosX(vectRes),',',getVectPosY(vectRes),')');

    //Calcul soustraction scalaire
    vectRes := sousScal(balle.obj.position,vectDeplacement);
    writeln('soustraction scalaire de la balle et du vecteur deplacement (',getVectPosX(vectRes),',',getVectPosY(vectRes),')');

    //Calcul produit par un scalaire
    vectRes := prodUnScal(balle.obj.position,13);
    writeln('produit scalaire de la balle et d''un entier (',getVectPosX(vectRes),',',getVectPosY(vectRes),')');

    //Calcul produit
    vectResProdScal := prodScal(balle.obj.position,vectDeplacement);
    writeln('produit scalaire de la balle et du vecteur deplacement (',vectResProdScal,')');

    //Calcul produit vectoriel
    vectRes := prodVect(balle.obj.position,vectDeplacement);
    writeln('produit vectoriel de la balle et du vecteur deplacement (',getVectPosX(vectRes),',',getVectPosY(vectRes),')');
    readln();



END.
