// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJHELAI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DJHELAI~

IF ~  Global("Jhelai","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #21487 /* ~Tu aperçois un homme maigre aux vêtements tachés, au nez crochu, et avec deux cornes trapues qui dépassent de son front. Il déambule, parlant tout seul… Il empeste la saumure, le vomi et le vin de mauvaise qualité.~ */
  IF ~~ THEN REPLY #21488 /* ~"Bonjour."~ */ GOTO 1
  IF ~  Global("Craddock_Quest","GLOBAL",1)
~ THEN REPLY #22653 /* ~"C'est toi Jhelai ? Si oui, Craddock a besoin de toi sur la place du marché."~ */ DO ~SetGlobal("Jhelai","GLOBAL",1)
SetGlobal("Craddock_Quest","GLOBAL",2)
AddexperienceParty(250)
~ GOTO 2
  IF ~~ THEN REPLY #22654 /* ~Continue ta route.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #22655 /* ~"Hein ?" L'homme louche vers toi d'un œil trouble. "Quesse-s-est ? Qu'esse-y-a ? Quoi ?"~ */
  IF ~  Global("Craddock_Quest","GLOBAL",1)
~ THEN REPLY #22656 /* ~"C'est toi Jhelai ? Si oui, Craddock a besoin de toi sur la place du marché."~ */ DO ~SetGlobal("Jhelai","GLOBAL",1)
SetGlobal("Craddock_Quest","GLOBAL",2)
AddexperienceParty(250)
~ GOTO 2
  IF ~~ THEN REPLY #22657 /* ~"Peu importe. Désolé de t'avoir dérangé."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0
  SAY #22658 /* ~"Crad-ok ?" Les yeux de l'homme s'écarquillent. "Ah, Craddock, mon généreux patron… ben, tu peux l'y dire ça : 'qu'y peut aller caguer… et qu'c'est un sale chien, bâtard d'la pire espèce et que Jhelai travaillera plus JAMAIS pour lui !" Il pointe son index sous ton nez. "Dis-lui bien ça !"~ */
  IF ~~ THEN REPLY #22659 /* ~"J'lui dirai… de loin. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #22660 /* ~"Oui… J'lui dirai … au revoir, Jhelai."~ */ EXIT
END

IF ~  GlobalGT("Jhelai","GLOBAL",0)
GlobalLT("Craddock_Quest","GLOBAL",3)
~ THEN BEGIN 3 // from:
  SAY #22661 /* ~Tu aperçois Jhelai. Il déambule toujours, murmurant pour lui-même… Il empeste la saumure, le vomi et le vin de mauvaise qualité.~ */
  IF ~~ THEN REPLY #22662 /* ~Laisse-le à sa stupeur.~ */ EXIT
END

IF ~  GlobalGT("Jhelai","GLOBAL",0)
GlobalGT("Craddock_Quest","GLOBAL",2)
~ THEN BEGIN 4 // from:
  SAY #22663 /* ~Tu aperçois Jhelai. Il semble qu'il ait dessaoulé depuis la dernière fois que tu lui as parlé.~ */
  IF ~  GlobalGT("Lawful_Craddock_1","GLOBAL",0)
~ THEN REPLY #22664 /* ~"Jhelai… écoute. Je ferais gaffe si j'étais toi. Craddock est en colère et il menace de te tuer s'il te revoit."~ */ DO ~SetGlobal("Good_Jhelai_1","GLOBAL",1)
~ JOURNAL #22672 /* ~Je suis retourné prévenir Jhelai au sujet de Craddock ; c'est la moindre des choses. Jhelai a eu l'air de regretter d'avoir parlé, mais il m'a remercié de l'avoir prévenu, le pauvre vieux.~ */ GOTO 5
  IF ~  GlobalGT("Chaotic_Craddock_1","GLOBAL",0)
~ THEN REPLY #22667 /* ~"Jhelai… écoute. J'ai dit à Craddock que je te remplaçais temporairement … t'as pas perdu ton boulot mais fais gaffe à toi."~ */ DO ~SetGlobal("Good_Jhelai_1","GLOBAL",1)
~ JOURNAL #22673 /* ~Je suis retourné dire à Jhelai que je le remplacerai temporairement et qu'il conserverait son poste. Il a eu l'air de regretter d'avoir parlé, et m'a remercié d'avoir sauvé son poste.~ */ GOTO 6
  IF ~~ THEN REPLY #22668 /* ~Passe ton chemin.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #22665 /* ~Jhelai grogne. "Idiot que j'étais… J'suis juste sorti pour manger un morceau et l'moment d'après…" Il grince des dents. "Merci d'm'avoir averti…"~ */
  IF ~~ THEN REPLY #22666 /* ~"Fais gaffe, c'est tout. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #22646 /* ~Jhelai grogne. "Idiot que j'étais… J'suis juste sorti pour manger un morceau et l'moment d'après…" Il grince des dents. "Merci d'm'avoir dit ça… j'apprécie vraiment."~ */
  IF ~~ THEN REPLY #22670 /* ~"La prochaine fois, fais bien attention. Au revoir."~ */ EXIT
END
