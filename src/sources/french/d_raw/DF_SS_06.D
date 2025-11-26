// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_06.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_06~

IF ~  !Global("S_Stone","AR0603",6)
!Global("S_Stone","AR0603",13)
~ THEN BEGIN 0 // from:
  SAY #34217 /* ~Voici une pierre violette peu commune. Elle est solidement attachée au piédestal sur lequel elle repose.~ */
  IF ~~ THEN REPLY #47460 /* ~Pars.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",6)
~ THEN BEGIN 1 // from:
  SAY #47461 /* ~C'est vers cette pierre violette que l'employé t'a envoyé. Elle recèle l'expérience intitulée 'reddition finale'.~ */
  IF ~~ THEN REPLY #47462 /* ~Laisse les sensations affluer.~ */ GOTO 2
  IF ~~ THEN REPLY #47463 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47464 /* ~Claquant des dents et frissonnant de tous tes membres, espérant contre toute logique que quelqu'un finira par te retrouver, tu te mets en boule sous la neige pour conserver le peu de chaleur corporelle qui te reste. Luttant à chaque instant pour garder les yeux ouverts et rester éveillé, tu t'aperçois que tu ne sens plus tes bras, tes jambes, ni même la glace sur tes joues. Tu es si épuisé que tu finis par te résigner à l'inéluctable. Tu fermes les yeux et tu accueilles le dernier sommeil en laissant échapper une larme unique qui se cristallise avant même d'avoir atteint ta joue.~ */
  IF ~  Global("Sensation06","AR0603",0)
~ THEN REPLY #47465 /* ~Reprends tes esprits.~ */ DO ~SetGlobal("Sensation06","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation06","AR0603",1)
~ THEN REPLY #47466 /* ~Reprends tes esprits et va-t'en.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",13)
~ THEN BEGIN 3 // from:
  SAY #47467 /* ~C'est vers cette pierre violette que l'employé t'a envoyé. Elle recèle l'expérience intitulée 'farouche détermination'.~ */
  IF ~~ THEN REPLY #47468 /* ~Laisse les sensations affluer.~ */ GOTO 4
  IF ~~ THEN REPLY #47469 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47470 /* ~La taverne en ruines n'a pas fini d'être détruite, et ce, bien qu'elle ait déjà terriblement souffert des dizaines impacts d'armes et de sorts jetés par les nombreux combattants, dont chacun souhaitait être le dernier survivant. Une fumée verte et âcre s'élève du tas de corps inertes duquel tu viens de t'extraire, après avoir échappé de justesse aux effets d'un sortilège diabolique. Elle est encore là, de l'autre côté de la salle, par-delà la mêlée sanglante qui se poursuit devant toi, miraculeusement intacte sur la seule table encore debout : ta chope de bière. Et tu vas la récupérer, même s'il te faut pour cela étriper tous les clients qui se dressent entre elle et toi !~ */
  IF ~  Global("Sensation13","AR0603",0)
~ THEN REPLY #47471 /* ~Reprends tes esprits.~ */ DO ~SetGlobal("Sensation13","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation13","AR0603",1)
~ THEN REPLY #47472 /* ~Reprends tes esprits et va-t'en.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0 4.0
  SAY #47473 /* ~L'expérience te rappelle un événement vaguement familier. Tu as la très nette impression que l'utilisation de cette pierre sensorielle t'a été bénéfique.~ */
  IF ~~ THEN REPLY #47474 /* ~Pars.~ */ EXIT
END
