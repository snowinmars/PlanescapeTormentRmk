// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_03.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_03~

IF ~  !Global("S_Stone","AR0603",3)
!Global("S_Stone","AR0603",10)
~ THEN BEGIN 0 // from:
  SAY #34214 /* ~Voici une pierre violette peu commune. Elle est solidement attachée au piédestal sur lequel elle repose.~ */
  IF ~~ THEN REPLY #47414 /* ~Pars.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",3)
~ THEN BEGIN 1 // from:
  SAY #47415 /* ~C'est vers cette pierre violette que l'employé t'a envoyé. Elle recèle l'expérience intitulée 'ennui assommant'.~ */
  IF ~~ THEN REPLY #47428 /* ~Laisse les sensations affluer.~ */ GOTO 2
  IF ~~ THEN REPLY #47429 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47417 /* ~Nul doute que l'expérience ne dure que quelques minutes, mais tu as l'impression qu'elle se prolonge plusieurs heures durant. Tu assistes à un cours barbant dans la salle de classe la plus austère de l'université de Kalm, à Sigil. Tu regardes tout autour de toi, espérant te détendre en faisant des grimaces aux autres étudiants, mais ceux qui n'ont pas le regard vide dorment déjà. Pour t'occuper, tu laisses encore et encore tomber ta plume sur ton pupitre. Il te vient même l'envie de te la planter dans l'œil, ne serait-ce que pour voir si tous tes sens ne sont pas atrophiés…~ */
  IF ~  Global("Sensation03","AR0603",0)
~ THEN REPLY #47418 /* ~Reprends tes esprits.~ */ DO ~SetGlobal("Sensation03","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation03","AR0603",1)
~ THEN REPLY #47419 /* ~Reprends tes esprits et va-t'en.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",10)
~ THEN BEGIN 3 // from:
  SAY #47420 /* ~C'est vers cette pierre violette que l'employé t'a envoyé. Elle recèle l'expérience intitulée 'haine farouche'.~ */
  IF ~~ THEN REPLY #47421 /* ~Laisse les sensations affluer.~ */ GOTO 4
  IF ~~ THEN REPLY #47422 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47423 /* ~Alors que tes yeux jaunes laissent échapper des larmes de douleur toxiques, tu ramasses tes lambeaux d'ailes rouges et écailleuses gisant par terre. Cela fait, tu sors humblement du bureau de Groba, sans pouvoir t'empêcher de grincer des dents. Bien sûr, tu n'es qu'un humble spinagon, l'un des plus faibles diables qui soient, mais ce n'est pas pour ça qu'un diantrefosse a le droit de t'arracher les ailes simplement parce qu'il n'apprécie pas le message que tu lui apportes ! Que va dire ton gélugon de maître ? Pas de risque qu'il se plaigne auprès de Groba, et à quoi peut bien servir un spinagon sans ailes ? Ton 'incompétence' sera sans doute châtiée par un aller sans retour dans la Fosse à Feu. La vengeance est hors de question, car tu ne peux rien faire d'autre que secouer ton petit poing griffu et haïr Groba, le *HAÏR* comme seul un fiélon au cœur noir peut le faire…~ */
  IF ~  Global("Sensation10","AR0603",0)
~ THEN REPLY #47424 /* ~Reprends tes esprits.~ */ DO ~SetGlobal("Sensation10","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation10","AR0603",1)
~ THEN REPLY #47425 /* ~Reprends tes esprits et va-t'en.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0 4.0
  SAY #47426 /* ~L'expérience te rappelle un événement vaguement familier. Tu as la très nette impression que l'utilisation de cette pierre sensorielle t'a été bénéfique.~ */
  IF ~~ THEN REPLY #47427 /* ~Pars.~ */ EXIT
END
