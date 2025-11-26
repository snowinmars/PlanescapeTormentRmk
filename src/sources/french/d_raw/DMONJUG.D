// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMONJUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMONJUG~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 2 even though they appear after this state */
~  True()
~ THEN BEGIN 0 // from:
  SAY #50429 /* ~C'est une lourde cruche métallique toute simple équipée d'un bouchon articulé. Malgré son aspect ordinaire, tu répugnes à toucher la chose de peur qu'elle ne te morde. Tu as entendu dire que plusieurs monstres y avaient été piégés - mais en jetant un coup d'œil dans la cruche, tu ne vois rien d'autre que le noir le plus complet.~ */
  IF ~~ THEN REPLY #50432 /* ~Renverse la cruche pour voir s'il y a quelque chose à l'intérieur.~ */ GOTO 1
  IF ~~ THEN REPLY #50433 /* ~Range la cruche.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #50434 /* ~Au départ, il n'y a rien… mais alors, un liquide noir et visqueux commence à bouillonner hors du goulot de la cruche, formant un amas gluant d'immondices fumantes et bitumeuses sur le sol. Alors que la cruche commence à fondre entre tes mains, l'amas commence à se tordre, à battre fort et à se transformer en créature imposante et hideuse…~ */
  IF ~~ THEN REPLY #50435 /* ~"Qu'est-ce qu'… ?"~ */ DO ~CreateCreatureAtFeet("Geherl")
DestroyPartyItem("MonJug",FALSE)
~ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Current_Area","GLOBAL",1199)
GlobalLT("Current_Area","GLOBAL",1205)
~ THEN BEGIN 2 // from:
  SAY #64980 /* ~C'est une lourde jarre métallique avec un couvercle, elle semble pleine,. Malgré son apparence ordinaire, tu hésites à la toucher, comme si elle risquait de te mordre. On t'a raconté qu'il y avait une sorte de monstre emprisonné à l'intérieur - mais, quand tu regardes dedans, tu ne vois rien d'autre que les ténèbres.~ */
  IF ~~ THEN REPLY #64981 /* ~Renverse la jarre et vois si quelque chose en sort.~ */ GOTO 3
  IF ~~ THEN REPLY #64982 /* ~Referme la jarre.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #64983 /* ~Un liquide noir et visqueux s'échappe du bec de la cruche et forme une mare de boue gluante sur le sol. Mais rien d'autre ne se produit. ~ */
  IF ~~ THEN REPLY #64984 /* ~Jette l'urne vide.~ */ DO ~DestroyPartyItem("MonJug",FALSE)
~ EXIT
END
