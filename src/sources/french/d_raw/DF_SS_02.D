// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_02.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_02~

IF ~  !Global("S_Stone","AR0603",2)
!Global("S_Stone","AR0603",9)
~ THEN BEGIN 0 // from:
  SAY #47110 /* ~Voici une pierre bleu pâle peu commune. Elle est solidement attachée au piédestal sur lequel elle repose.~ */
  IF ~~ THEN REPLY #47111 /* ~Pars.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",2)
~ THEN BEGIN 1 // from:
  SAY #47112 /* ~C'est vers cette pierre bleu pâle que l'employé t'a envoyé. Elle recèle l'expérience intitulée 'amour tendre'.~ */
  IF ~~ THEN REPLY #47113 /* ~Laisse les sensations affluer.~ */ GOTO 2
  IF ~~ THEN REPLY #47114 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47115 /* ~Tu as les yeux fermés et tu te trouves dressé sur la pointe des pieds, serré contre quelqu'un. Des lèvres infiniment douces frôlent les tiennes pour te donner le plus délicat des baisers. Ton cœur bat à tout rompre et tu as l'impression que tu pourrais te mettre à flotter.~ */
  IF ~  Global("Sensation02","AR0603",0)
~ THEN REPLY #47116 /* ~Reprends tes esprits.~ */ DO ~SetGlobal("Sensation02","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation02","AR0603",1)
~ THEN REPLY #47117 /* ~Reprends tes esprits et va-t'en.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",9)
~ THEN BEGIN 3 // from:
  SAY #47118 /* ~C'est vers cette pierre bleu pâle que l'employé t'a envoyé. Elle recèle l'expérience intitulée 'jalousie larvée'.~ */
  IF ~~ THEN REPLY #47119 /* ~Laisse les sensations affluer.~ */ GOTO 4
  IF ~~ THEN REPLY #47120 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47121 /* ~Tu ne peux retenir un rictus en voyant le jeune héros à l'armure rutilante pénétrer de nouveau dans la taverne. Il accroche sa cape de velours au mur et inspecte les clients de ses yeux bleu-vert, sans se départir d'un sourire qui fait se pâmer les serveuses. Poussant un grognement de dépit, tu reposes la chope que tu étais en train d'essuyer et tu te dis qu'il serait bien agréable de l'envoyer bouler, cul par-dessus tête, dans un tonneau plein d'eau de pluie…~ */
  IF ~  Global("Sensation09","AR0603",0)
~ THEN REPLY #47122 /* ~Reprends tes esprits.~ */ DO ~SetGlobal("Sensation09","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation09","AR0603",1)
~ THEN REPLY #47123 /* ~Reprends tes esprits et va-t'en.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0 4.0
  SAY #47124 /* ~L'expérience te rappelle un événement vaguement familier. Tu as la très nette impression que l'utilisation de cette pierre sensorielle t'a été bénéfique.~ */
  IF ~~ THEN REPLY #47125 /* ~Pars.~ */ EXIT
END
