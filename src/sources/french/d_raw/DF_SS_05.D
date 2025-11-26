// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_05.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_05~

IF ~  !Global("S_Stone","AR0603",5)
!Global("S_Stone","AR0603",12)
~ THEN BEGIN 0 // from:
  SAY #34216 /* ~Voici une pierre d'un rouge orangé. Elle est solidement attachée au piédestal sur lequel elle repose.~ */
  IF ~~ THEN REPLY #47445 /* ~Pars.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",5)
~ THEN BEGIN 1 // from:
  SAY #47446 /* ~C'est vers cette pierre rouge-orange que l'employé t'a envoyé. Elle recèle l'expérience intitulée 'impatience dévorante'.~ */
  IF ~~ THEN REPLY #47447 /* ~Laisse les sensations affluer.~ */ GOTO 2
  IF ~~ THEN REPLY #47448 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47449 /* ~Tu es engagé dans un long débat avec Amnas le Pondéré, Gardien de la Clé du Lion, afin de déterminer si ta quête est suffisamment importante, de son point de vue, pour qu'il te remette l'artefact. L'expérience est extrêmement frustrante, chacun de ses mots étant suivi d'une longue pause. Comme si cela ne suffisait pas, Amnas se répète à plusieurs reprises avant de te laisser la parole. Tu présentes ton argument, après quoi il te faut attendre des heures durant qu'il ait fini de te répondre, et ainsi de suite. Exaspéré par sa lenteur et ses sempiternelles répétitions, tu dois te retenir de ne pas trancher la tête du fiélon et prendre la clé sur sa dépouille…~ */
  IF ~  Global("Sensation05","AR0603",0)
~ THEN REPLY #47450 /* ~Reprends tes esprits.~ */ DO ~SetGlobal("Sensation05","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation05","AR0603",1)
~ THEN REPLY #47452 /* ~Reprends tes esprits et va-t'en.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",12)
~ THEN BEGIN 3 // from:
  SAY #47451 /* ~C'est vers cette pierre rouge-orange que l'employé t'a envoyé. Elle recèle l'expérience intitulée 'euphorie craintive'.~ */
  IF ~~ THEN REPLY #47453 /* ~Laisse les sensations affluer.~ */ GOTO 4
  IF ~~ THEN REPLY #47454 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47455 /* ~Tu tournes la tête pour observer l'étrange harnachement fixé à ton dos. Quatre ailes de chauve-souris en sortent. Faites de cuir, elles sont tendues sur une armature en osier. De là où tu es perché, au bord du précipice, la forteresse flottante de Dilgyar n'est qu'un point minuscule suspendu dans le ciel et distant de plusieurs kilomètres. 'C'est facile, t'a-t-on dit, puisque *tout le monde* voyage de cette façon dans le Plan de l'Air.' Tu grimaces puis, après avoir pris plusieurs pas d'élan, tu t'élances dans le vide… tandis que ton estomac semble rester au sommet de la falaise. Quand tes ailes commencent enfin à être portées par le vent, tu te sens pris d'une vive exaltation. Te voilà en train de voler au-dessus du vide, et le palais du prince des élémentaux se rapproche…~ */
  IF ~  Global("Sensation12","AR0603",0)
~ THEN REPLY #47456 /* ~Reprends tes esprits.~ */ DO ~SetGlobal("Sensation12","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation12","AR0603",1)
~ THEN REPLY #47457 /* ~Reprends tes esprits et va-t'en.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0 4.0
  SAY #47458 /* ~L'expérience te rappelle un événement vaguement familier. Tu as la très nette impression que l'utilisation de cette pierre sensorielle t'a été bénéfique.~ */
  IF ~~ THEN REPLY #47459 /* ~Pars.~ */ EXIT
END
