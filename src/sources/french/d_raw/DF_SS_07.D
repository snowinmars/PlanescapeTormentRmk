// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_07.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_07~

IF ~  !Global("S_Stone","AR0603",7)
!Global("S_Stone","AR0603",14)
~ THEN BEGIN 0 // from:
  SAY #34218 /* ~Voici une pierre bleu pâle peu commune. Elle est solidement attachée au piédestal sur lequel elle repose.~ */
  IF ~~ THEN REPLY #47475 /* ~Pars.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",7)
~ THEN BEGIN 1 // from:
  SAY #47476 /* ~C'est vers cette pierre bleu pâle que l'employé t'a envoyé. Elle recèle l'expérience intitulée 'désir surnaturel'.~ */
  IF ~~ THEN REPLY #47477 /* ~Laisse les sensations affluer.~ */ GOTO 2
  IF ~~ THEN REPLY #47478 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47479 /* ~Tu es en train de faire l'amour avec une succube, dont la beauté surnaturelle est si grande que même ses petites cornes et sa queue de fiélon ne tarissent en rien ton excitation. Elle gémit sous toi. Tu la désires tellement que ton existence tout entière se concentre sur votre union charnelle. Alors que ton énergie vitale s'échappe de toi dans une explosion d'extase, tu entends le rire joyeux de la succube qui te vide de tes forces et te transforme en coquille sans vie…~ */
  IF ~  Global("Sensation07","AR0603",0)
~ THEN REPLY #47480 /* ~Reprends tes esprits.~ */ DO ~SetGlobal("Sensation07","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation07","AR0603",1)
~ THEN REPLY #47481 /* ~Reprends tes esprits et va-t'en.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",14)
~ THEN BEGIN 3 // from:
  SAY #47482 /* ~C'est vers cette pierre bleu pâle que l'employé t'a envoyé. Elle recèle l'expérience intitulée 'totale stupéfaction'.~ */
  IF ~~ THEN REPLY #47483 /* ~Laisse les sensations affluer.~ */ GOTO 4
  IF ~~ THEN REPLY #47484 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47485 /* ~Tu te réveilles en plein rêve troublant, pour t'apercevoir que tu as été transformé en petite créature de chair à quatre membres. Tu es allongé sur le dos, sans ta carapace protectrice, et il te suffit de lever ta petite tête pour t'apercevoir que tes antennes sensorielles ont disparu et que ton ventre rose est couvert de poils bouclés, fort différents de ceux, durs et rêches, auxquels tu es habitué. Tes deux pattes antérieures (deux seulement !) prennent désormais naissance à l'extrémité de ton torse, plutôt que dans la partie basse de ton abdomen. Elles sont épaisses, laides et disproportionnées par rapport au reste de ton corps. Totalement molles, elles ne font rien pour te remettre à l'endroit. Ce n'est qu'en te concentrant que tu parviens à les bouger. Qu'est-ce qui a bien pu t'arriver ?~ */
  IF ~  Global("Sensation14","AR0603",0)
~ THEN REPLY #47486 /* ~Reprends tes esprits.~ */ DO ~SetGlobal("Sensation14","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation14","AR0603",1)
~ THEN REPLY #47487 /* ~Reprends tes esprits et va-t'en.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0 4.0
  SAY #47488 /* ~L'expérience te rappelle un événement vaguement familier. Tu as la très nette impression que l'utilisation de cette pierre sensorielle t'a été bénéfique.~ */
  IF ~~ THEN REPLY #47489 /* ~Pars.~ */ EXIT
END
