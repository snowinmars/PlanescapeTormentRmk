// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLWCUSF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DLWCUSF~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3400 /* ~Je suis une cliente du Bas Quartier. Comme les hommes de mon espèce, je vais de magasin en magasin, je regarde la marchandise et je choisis ce que je veux acheter. Je suis moi aussi de la marchandise.~ */
  IF ~~ THEN REPLY #3401 /* ~C'est intéressant… le duvet, je veux dire. Merci de m'avoir accordé un moment, mon cœur.~ */ EXIT
END
