// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPTCOFF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DPTCOFF~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 1 even though they appear after this state */
~  True()
~ THEN BEGIN 0 // from:
  SAY #51470 /* ~Tu t'évertues à essayer de soulever le couvercle du sarcophage, mais en vain. Il semble fermement scellé.~ */
  IF ~~ THEN REPLY #51471 /* ~Pars.~ */ EXIT
END

IF WEIGHT #0 ~  Global("Inscr_1","GLOBAL",1)
Global("Inscr_2","GLOBAL",1)
Global("Inscr_3","GLOBAL",1)
Global("Inscr_4","GLOBAL",1)
Global("Inscr_5","GLOBAL",1)
Global("Inscr_6","GLOBAL",1)
Global("Inscr_7","GLOBAL",1)
Global("Inscr_8","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #51473 /* ~Le couvercle du sarcophage s'ouvre facilement. Le mécanisme de fermeture a été retiré.~ */
  IF ~  GlobalGT("Lo_Quest","GLOBAL",2)
~ THEN REPLY #53782 /* ~Ouvre le sarcophage.~ */ GOTO 5
  IF ~  Global("Lo_Quest","GLOBAL",2)
~ THEN REPLY #53783 /* ~Ouvre le sarcophage.~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",3)
~ GOTO 2
  IF ~  Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #53784 /* ~Ouvre le sarcophage.~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",3)
~ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #53785 /* ~Tu ouvres le sarcophage… pour ne découvrir qu'une clé à l'intérieur. Il n'y a pas de corps, et plus important, pas de crâne.~ */
  IF ~~ THEN REPLY #53786 /* ~"Je ne crois pas que Lothar sera content d'apprendre ça…"~ */ JOURNAL #51472 /* ~J'ai trouvé le tombeau dans lequel Lothar voulait que je récupère le crâne. Malheureusement, le sarcophage était vide. Il vaut mieux que je le dise à Lothar.~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #53787 /* ~Tu restes silencieux un instant en contemplant le contenu du sarcophage.~ */
  IF ~~ THEN REPLY #53788 /* ~Prends la clé et pars.~ */ DO ~SetGlobal("Journal","GLOBAL",1)
AddexperienceParty(2000)
GiveItemCreate("PTKey4",Player1,1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY #53789 /* ~Tu ouvres le sarcophage… pour ne découvrir qu'une clé à l'intérieur. Il n'y a pas de corps, aucun objet de valeur.~ */
  IF ~~ THEN REPLY #53790 /* ~Prends la clé et pars.~ */ DO ~SetGlobal("Journal","GLOBAL",1)
AddexperienceParty(2000)
GiveItemCreate("PTKey4",Protagonist,1,0,0)
~ JOURNAL #51475 /* ~J'ai trouvé une tombe dans les catacombes. Au centre se trouvait un sarcophage vide.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.0
  SAY #53791 /* ~Le sarcophage est vide. Rien n'a changé depuis la dernière fois que tu l'as vérifié.~ */
  IF ~~ THEN REPLY #53792 /* ~Pars.~ */ EXIT
END
