// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_04.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_04~

IF ~  !Global("S_Stone","AR0603",4)
!Global("S_Stone","AR0603",11)
~ THEN BEGIN 0 // from:
  SAY #34215 /* ~Voici une pierre peu commune d'un jaune verdâtre. Elle est solidement attachée au piédestal sur lequel elle repose.~ */
  IF ~~ THEN REPLY #47430 /* ~Pars.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",4)
~ THEN BEGIN 1 // from:
  SAY #47431 /* ~C'est vers cette pierre vert-jaune que l'employé t'a envoyé. Elle recèle l'expérience intitulée 'émerveillement'.~ */
  IF ~~ THEN REPLY #47432 /* ~Laisse les sensations affluer.~ */ GOTO 2
  IF ~~ THEN REPLY #47433 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47434 /* ~Après une longue hésitation, tu ouvres légèrement la bouche et tu inspires, mais à peine. L'eau emplit tes poumons tel l'air le plus pur. Souriant béatement, tu inspires profondément et tu te laisses couler jusqu'au fond de la rade, où des centaines de poissons multicolores évoluent au milieu de formations de corail lumineux. Quand tes pieds touchent enfin le fond, tu lèves les yeux vers ton navire et ton éclat de rire laisse échapper des bulles qui remontent en direction de la surface…~ */
  IF ~  Global("Sensation04","AR0603",0)
~ THEN REPLY #47435 /* ~Reprends tes esprits.~ */ DO ~SetGlobal("Sensation04","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation04","AR0603",1)
~ THEN REPLY #47436 /* ~Reprends tes esprits et va-t'en.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",11)
~ THEN BEGIN 3 // from:
  SAY #47437 /* ~C'est vers cette pierre vert-jaune que l'employé t'a envoyé. Elle recèle l'expérience intitulée 'jubilation'.~ */
  IF ~~ THEN REPLY #47438 /* ~Laisse les sensations affluer.~ */ GOTO 4
  IF ~~ THEN REPLY #47439 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47440 /* ~Dansant et bondissant au rythme de la musique des elfes des bois, la douzaine de danseurs dont tu fais partie tourbillonne au centre de la clairière, souriant et riant sans cesse. Les habitants de la forêt vous encouragent de leurs cris et marquent la cadence du pied ou en tapant dans leurs mains, tandis que de petites fées évoluent au-dessus de vos têtes en laissant des traînées lumineuses dans les airs…~ */
  IF ~  Global("Sensation11","AR0603",0)
~ THEN REPLY #47441 /* ~Reprends tes esprits.~ */ DO ~SetGlobal("Sensation11","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation11","AR0603",1)
~ THEN REPLY #47442 /* ~Reprends tes esprits et va-t'en.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0 4.0
  SAY #47443 /* ~L'expérience te rappelle un événement vaguement familier. Tu as la très nette impression que l'utilisation de cette pierre sensorielle t'a été bénéfique.~ */
  IF ~~ THEN REPLY #47444 /* ~Pars.~ */ EXIT
END
