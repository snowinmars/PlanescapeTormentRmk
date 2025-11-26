// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSLAVE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSLAVE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #53237 /* ~Tu aperçois un citoyen de Maudith effrayé. "Merci de ton aide… Je ne sais pas ce que j'aurais fait… ils m'auraient tué…" Il balbutie des remerciements, puis déclare "Il faut que j'aille apporter mon aide. Je ne peux pas me permettre de jouer les égoïstes quand on voit l'état de la cité. Merci encore, vraiment. Au revoir."~ */
  IF ~~ THEN REPLY #53238 /* ~"C'est rien. Au revoir."~ */ DO ~EscapeArea()
~ EXIT
END
