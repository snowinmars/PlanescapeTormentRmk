// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_01.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_01~

IF ~  !Global("S_Stone","AR0603",1)
!Global("S_Stone","AR0603",8)
~ THEN BEGIN 0 // from:
  SAY #47094 /* ~Voici une pierre peu commune d'un jaune verdâtre. Elle est solidement attachée au piédestal sur lequel elle repose.~ */
  IF ~~ THEN REPLY #47095 /* ~Pars.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",1)
~ THEN BEGIN 1 // from:
  SAY #47096 /* ~C'est vers cette pierre vert-jaune que l'employé t'a envoyé. Elle recèle l'expérience intitulée 'douleur inévitable'.~ */
  IF ~~ THEN REPLY #47097 /* ~Laisse les sensations affluer.~ */ GOTO 2
  IF ~~ THEN REPLY #47098 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47099 /* ~L'expérience est courte mais violente : tu luttes contre un homme légèrement plus fort que toi au bord d'un ruisseau de lave bouillonnante, et ton adversaire pousse inexorablement ta main droite vers le magma. La chaleur est telle que ta sueur s'évapore à peine formée et que tes poils noircissent et se calcinent. Enfin, alors que tu pousses un hurlement à glacer les sangs, ta main et la hache qu'elle tient toujours plongent dans la lave, qui les réduit en cendres en l'espace de quelques secondes de douleur fulgurante.~ */
  IF ~  Global("Sensation01","AR0603",0)
~ THEN REPLY #47100 /* ~Reprends tes esprits.~ */ DO ~SetGlobal("Sensation01","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation01","AR0603",1)
~ THEN REPLY #47101 /* ~Reprends tes esprits et va-t'en.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",8)
~ THEN BEGIN 3 // from:
  SAY #47102 /* ~C'est vers cette pierre vert-jaune que l'employé t'a envoyé. Elle recèle l'expérience intitulée 'psychose'.~ */
  IF ~~ THEN REPLY #47103 /* ~Laisse les sensations affluer.~ */ GOTO 4
  IF ~~ THEN REPLY #47104 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47105 /* ~L'expérience est extrêmement dérangeante. Collé contre un inconnu, tu respires à son oreille alors que ta main l'empêche de crier et que tu presses un couteau contre sa gorge. Tu appuies lentement. La lame s'enfonce dans la chair, qui se déchire. Un flot de sang chaud sur ton avant-bras, un cri étranglé sous ta main, un brusque accès de joie perverse… c'est terminé.~ */
  IF ~  Global("Sensation08","AR0603",0)
~ THEN REPLY #47106 /* ~Reprends tes esprits.~ */ DO ~SetGlobal("Sensation08","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation08","AR0603",1)
~ THEN REPLY #47107 /* ~Reprends tes esprits et va-t'en.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0 4.0
  SAY #47108 /* ~L'expérience te rappelle un événement vaguement familier. Tu as la très nette impression que l'utilisation de cette pierre sensorielle t'a été bénéfique.~ */
  IF ~~ THEN REPLY #47109 /* ~Pars.~ */ EXIT
END
