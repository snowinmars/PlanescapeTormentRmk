// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCLOCK1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCLOCK1~

IF ~  Global("Clock_1","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #64225 /* ~On dirait que cette énorme horloge s'est en partie amalgamée à la pierre noire qui l'entoure… mais il semble que quelqu'un ait laissé des empreintes 'récentes' sur le sol autour d'elle - peut-être au cours de ces quelques dernières années. ~ */
  IF ~~ THEN DO ~SetGlobal("Clock_1","GLOBAL",1)
~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #64226 /* ~Quelque chose est grossièrement gravé sur la surface de l'horloge et tu sens soudain des picotements à l'arrière de ton crâne - tu sais que ce qui est écrit est un message pour toi… adressé par toi-même.~ */
  IF ~~ THEN REPLY #64229 /* ~Examine les inscriptions.~ */ JOURNAL #63983 /* ~J'ai découvert un message qui m'était destiné. Laissé par l'une de mes incarnations précédentes, il avait été gravé sur une horloge de la forteresse. Il disait : 'COURS - PORTES sont MENSONGES - UTILISE canons - puis PORTAIL'. Une flèche indiquait le coin nord-est de la pièce, comme s'il y avait quelque chose à cet endroit.~ */ GOTO 2
  IF ~~ THEN REPLY #64230 /* ~Laisse l'horloge.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0
  SAY #64227 /* ~Il semble qu'on ait utilisé une dague pour graver le message sur l'horloge.

COURS - PORTES sont MENSONGES - UTILISE canons - puis PORTAIL

Il semble que le message ait été gravé à la hâte. Après le message une sorte de flèche pointe dans la direction opposée à celle de la grande aiguille.~ */
  IF ~~ THEN REPLY #64231 /* ~"Merci pour le conseil…"~ */ EXIT
END

IF ~  Global("Clock_1","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #64228 /* ~On dirait que cette énorme horloge s'est en partie amalgamée à la pierre noire qui l'entoure… mais il semble que quelqu'un ait laissé des empreintes 'récentes' sur le sol autour d'elle - peut-être au cours de ces quelques dernières années.. Dessus, est gravé un message pour toi… adressé par toi-même.~ */
  IF ~~ THEN REPLY #64232 /* ~Examine les inscriptions.~ */ JOURNAL #63983 /* ~J'ai découvert un message qui m'était destiné. Laissé par l'une de mes incarnations précédentes, il avait été gravé sur une horloge de la forteresse. Il disait : 'COURS - PORTES sont MENSONGES - UTILISE canons - puis PORTAIL'. Une flèche indiquait le coin nord-est de la pièce, comme s'il y avait quelque chose à cet endroit.~ */ GOTO 2
  IF ~~ THEN REPLY #64233 /* ~Laisse l'horloge.~ */ EXIT
END
