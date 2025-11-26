// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART09.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DART09~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34201 /* ~Cette peinture semble représenter un long fleuve de gaz vert comme de la bile, qui se perd dans l'obscurité. Dans l'angle inférieur droit du tableau, on voit l'horizon d'une plaine désolée et rocheuse… On a l'impression que la 'tête' du nuage vert se dresse pour la frapper. Une pancarte annonce : 'Hazazoth consommant N'gar'.~ */
  IF ~~ THEN REPLY #42673 /* ~Pars.~ */ DO ~SetGlobal("View_Art_09","AR0608",1)
~ EXIT
END
