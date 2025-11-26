// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : PLACE2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~PLACE2~

IF ~  Global("Jhelai","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #38700 /* ~Tu aperçois un homme maigre aux vêtements souillés. Il a le nez crochu et, sur le front, deux cornes trapues. Il se traîne en marmonnant… Il empeste la saumure, le vomi et la vinasse.~ */
  IF ~  Global("Craddock_Quest","GLOBAL",1)
~ THEN REPLY #38701 /* ~"Bonjour."~ */ DO ~SetGlobal("Jhelai","GLOBAL",1)
SetGlobal("Craddock_Quest","GLOBAL",2)
~ GOTO 1
  IF ~~ THEN REPLY #38702 /* ~"C'est toi Jhelai ? Si oui, Craddock a besoin de toi sur la place du marché."~ */ JOURNAL #30880 /* ~Pensée Pondérée m'a dit que Ravel avait été jetée dans l'un des dédales de la Dame des Douleurs, et que selon la rumeur, la clé du portail de son dédale était une partie d'elle-même. Ça ne m'a pas beaucoup avancé.~ */ EXIT
  IF ~~ THEN REPLY #38703 /* ~Continue ta route.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #38704 /* ~"Hein ?" L'homme louche vers toi d'un œil trouble. "Quesse-s-est ? Qu'esse-y-a ? Quoi ?"~ */
  IF ~~ THEN REPLY #38705 /* ~"C'est toi Jhelai ? Si oui, Craddock a besoin de toi sur la place du marché."~ */ EXIT
  IF ~~ THEN REPLY #38706 /* ~"Peu importe. Désolé de t'avoir dérangé."~ */ EXIT
END
