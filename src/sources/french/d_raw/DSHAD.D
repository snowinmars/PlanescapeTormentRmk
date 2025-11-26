// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSHAD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSHAD~

IF ~  Global("Zap","GLOBAL",1)
NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #23915 /* ~"Ne m'adresse pas la parole. Parle à Raimon." Le rat-garou évite ton regard.~ */
  IF ~~ THEN REPLY #23931 /* ~"Très bien."~ */ EXIT
END

IF ~  Global("Zap","GLOBAL",1)
NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #23309 /* ~"J't'ai dit de ne pas me parler." Le rat-garou ne te regarde toujours pas.~ */
  IF ~~ THEN REPLY #23933 /* ~"Bien."~ */ EXIT
END

IF ~  Global("Zap","GLOBAL",2)
~ THEN BEGIN 2 // from:
  SAY #23310 /* ~"Tu pourrais pas aller ailleurs ? Pas ici, par exemple ?" La voix du rat-garou est molle et calme.~ */
  IF ~~ THEN REPLY #23934 /* ~"Je suppose que si. Au revoir."~ */ EXIT
END

IF ~  Global("Zap","GLOBAL",3)
~ THEN BEGIN 3 // from:
  SAY #23916 /* ~"Grand homme, hein ? Dégage avant que Raimon reprenne du courage et appelle des renforts." Ce rat-garou semble bizarrement imperturbable.~ */
  IF ~~ THEN REPLY #23935 /* ~"Et si je TE menaçais ?"~ */ GOTO 4
  IF ~~ THEN REPLY #23936 /* ~"J'y vais, alors."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #23917 /* ~Il hausse les épaules.~ */
  IF ~~ THEN REPLY #23937 /* ~Attaque-le.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #23938 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~  Global("Zap","GLOBAL",4)
~ THEN BEGIN 5 // from:
  SAY #23918 /* ~"Ah, pour l'amour de… Je suppose qu'y faut qu'tu meures, bige…"~ */
  IF ~~ THEN REPLY #23939 /* ~"Et moi je suppose que tu peux toujours essayer."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  NearbyDialog("DAnnah")
~ THEN BEGIN 6 // from:
  SAY #23919 /* ~Après avoir tué son compagnon rat-garou, ce type regarde Annah. "Annah, j'm'appelle Shaddeus. J'te laisse sortir. Je supporte pas de te voir enfermée comme ça. Dis du bien de moi si tu réussis à rentrer au Village et dis-leur que quelque chose de mauvais arrive. J'peux pas dire quoi pour l'instant, mais… faut que vous le sachiez."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 160
END

IF ~~ THEN BEGIN 7 // from:
  SAY #23920 /* ~"Alors, voyons." Il prend les clés sur le corps de Raimon, déverrouille la porte et l'ouvre pour toi. "Et maintenant file." Il fait une petite révérence et détale.~ */
  IF ~~ THEN REPLY #23434 /* ~"Oui. Merci."~ */ DO ~SetGlobal("Zap","GLOBAL",5)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
EscapeArea()
~ EXIT
END

IF ~  !NearbyDialog("DAnnah")
~ THEN BEGIN 8 // from:
  SAY #23921 /* ~"Tu t'demandes pourquoi j'ai fait ça, hein ? J'étais un Villageois Enseveli. Je m'appelais Shaddeus. Je ne veux pas être un rat-garou et j'crois pas que cette maladie me rende moins loyal pour autant envers l'humanité. Dégage, maintenant." Il déverrouille la porte, l'ouvre pour toi et détale.~ */
  IF ~~ THEN REPLY #23940 /* ~"Merci, Shaddeus. Au revoir."~ */ DO ~SetGlobal("Zap","GLOBAL",5)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
EscapeArea()
~ EXIT
END
