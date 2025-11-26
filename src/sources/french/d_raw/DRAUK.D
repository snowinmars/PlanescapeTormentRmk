// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRAUK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DRAUK~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #4 /* Triggers after states #: 1 2 3 7 even though they appear after this state */
~  Global("Rings3","Global",0)
~ THEN BEGIN 0 // from:
  SAY #49900 /* ~Tu vois un jeune homme portant des vêtements simples mais propres. À ton approche, il s'arrête.~ */
  IF ~~ THEN REPLY #49901 /* ~"Bonjour…"~ */ GOTO 4
  IF ~~ THEN REPLY #49902 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 2 3 7 even though they appear after this state */
~  Global("Rings3","Global",1)
~ THEN BEGIN 1 // from:
  SAY #49903 /* ~"Toi les avoir apportés ? Oui ?"~ */
  IF ~  PartyHasItem("SilRing")
PartyHasItem("BroRing")
PartyHasItem("GolRing")
~ THEN REPLY #49904 /* ~"J'ai tous les anneaux. Tiens."~ */ DO ~TakePartyItemNum("SilRing",1)
TakePartyItemNum("BroRing",1)
TakePartyItemNum("GolRing",1)
~ GOTO 6
  IF ~~ THEN REPLY #49905 /* ~"Je reviendrai quand je les aurai tous. Au revoir."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 3 7 even though they appear after this state */
~  Global("Rings3","Global",2)
~ THEN BEGIN 2 // from:
  SAY #49906 /* ~"Toi, ami. Aider Rauk. Bien."~ */
  IF ~~ THEN REPLY #49907 /* ~"Au revoir."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 7 even though they appear after this state */
~  Global("WIdiots","Global",1)
~ THEN BEGIN 3 // from:
  SAY #49908 /* ~"Rauk avoir perdu amis. Mais Rauk faire nouveau ami. Toi appeler lui Chose Verte."~ */
  IF ~~ THEN REPLY #49909 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.0
  SAY #49910 /* ~"Rauk avoir problèmes, gros problèmes. Toi aider ?"~ */
  IF ~~ THEN REPLY #49911 /* ~"Qu'est-ce qui ne va pas ?"~ */ GOTO 5
  IF ~~ THEN REPLY #49912 /* ~"Je n'ai pas le temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #49913 /* ~"Rauk avoir oublié anneaux dans tente. Amis avoir besoin magie avec. Pas anneaux, devenir fou contre Rauk. Un anneau marron, comme jonc. Autre brillant comme miroir. Dernier être joli et jaune. Apporter à Rauk ?"~ */
  IF ~~ THEN REPLY #49914 /* ~"Je vais te les rapporter, Rauk."~ */ DO ~SetGlobal("Rings3","Global",1)
~ JOURNAL #49916 /* ~Rauk m'a demandé d'aller récupérer trois anneaux sous sa tente. D'après la description qu'il m'en a faite, le premier est en or, le deuxième en argent et le troisième en bronze. Il ne me reste donc plus qu'à trouver la tente en question. Rauk a l'air d'être simple d'esprit ; sa tente devrait donc se trouver tout près.~ */ EXIT
  IF ~~ THEN REPLY #49915 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.0
  SAY #49917 /* ~"Toi être nouvel ami de Rauk maintenant. Rauk prendre anneaux maintenant. Rauk remercier nouveaux amis."~ */
  IF ~~ THEN REPLY #49918 /* ~"Au revoir, Rauk."~ */ DO ~SetGlobal("Rings3","Global",2)
AddexperienceParty(500)
StartCutSceneMode()
StartCutSceneEx("3012cut1",FALSE)
~ JOURNAL #49919 /* ~Je suis revenu avec les trois anneaux et je les ai donnés à Rauk. Une tâche on ne peut plus simple, qui m'a été confiée par un homme qui l'est tout autant.~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Apprent_DEAD_KAPUTZ","GLOBAL",0)
!Global("Rings3","GLOBAL",2)
~ THEN BEGIN 7 // from:
  SAY #66367 /* ~"Toi tuer ami Rauk. Maintenant, Rauk faire très mal à toi."~ */
  IF ~~ THEN REPLY #66368 /* ~Attaque Rauk.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
