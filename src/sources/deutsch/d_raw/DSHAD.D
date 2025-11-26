// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSHAD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DSHAD~

IF ~  Global("Zap","GLOBAL",1)
NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #23915 /* ~"Sprich nicht mit mir. Sprich mit Raimon." Die Werrate weicht deinem Blick aus.~ */
  IF ~~ THEN REPLY #23931 /* ~"Wie du meinst."~ */ EXIT
END

IF ~  Global("Zap","GLOBAL",1)
NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #23309 /* ~"Ich hab' gesagt: Sprich nicht mit mir." Die Werrate will dich immer noch nicht anschauen.~ */
  IF ~~ THEN REPLY #23933 /* ~"Gut."~ */ EXIT
END

IF ~  Global("Zap","GLOBAL",2)
~ THEN BEGIN 2 // from:
  SAY #23310 /* ~"Kannst du nicht woanders hingehen? Woanders als hier?" Die Stimme der Werratte klingt gelangweilt und unbekümmert.~ */
  IF ~~ THEN REPLY #23934 /* ~"Ich denk schon. Leb wohl."~ */ EXIT
END

IF ~  Global("Zap","GLOBAL",3)
~ THEN BEGIN 3 // from:
  SAY #23916 /* ~"Starker Mann, was? Hau lieber ab, bevor Raimon wieder Mut faßt und Verstärkung ruft." Die Werratte wirkt seltsam gleichgültig.~ */
  IF ~~ THEN REPLY #23935 /* ~"Was, wenn ich DIR drohen würde?"~ */ GOTO 4
  IF ~~ THEN REPLY #23936 /* ~"Ich muß dann los."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #23917 /* ~Er zuckt mit den Achseln.~ */
  IF ~~ THEN REPLY #23937 /* ~Greif ihn an.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #23938 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~  Global("Zap","GLOBAL",4)
~ THEN BEGIN 5 // from:
  SAY #23918 /* ~"Ah, bei aller Liebe... Ich schätze, du mußt sterben, Dussel..."~ */
  IF ~~ THEN REPLY #23939 /* ~"Versuch's doch mal."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  NearbyDialog("DAnnah")
~ THEN BEGIN 6 // from:
  SAY #23919 /* ~Nachdem sein Kumpel niedergemetzelt ist, sieht die Werratte Annah fest an. "Annah, ich bin's, Shaddeus! Ich laß dich raus! Ich kann es nicht ertragen, dich so eingesperrt zu sehen. Leg ein gutes Wort für mich ein, wenn du es zurück bis ins Dorf schaffst, und sag ihnen, daß etwas Schlimmes passieren wird. Kann noch nicht sagen, was, aber... nur, daß du's weißt."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 160
END

IF ~~ THEN BEGIN 7 // from:
  SAY #23920 /* ~"Also, dann." Er nimmt Raimons Leiche die Schlüssel ab, entriegelt und öffnet die Tür für dich. "Hau jetzt ab." Er macht eine kurze Verbeugung und huscht davon.
~ */
  IF ~~ THEN REPLY #23434 /* ~"Machen wir. Danke."~ */ DO ~SetGlobal("Zap","GLOBAL",5)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
EscapeArea()
~ EXIT
END

IF ~  !NearbyDialog("DAnnah")
~ THEN BEGIN 8 // from:
  SAY #23921 /* ~"Du fragst dich, warum ich das gemacht hab', stimmt's? Ich war mal jemand aus dem Begrabenen Dorf. Shaddeus war mein Name. Ich will keine Werratte sein, und ich denke nicht, daß mich diese Krankheit unloyaler gegenüber der Menschheit macht. Komm jetzt da raus!" Er entriegelt und öffnet die Tür für dich und huscht davon.~ */
  IF ~~ THEN REPLY #23940 /* ~"Danke, Shaddeus. Leb wohl."~ */ DO ~SetGlobal("Zap","GLOBAL",5)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
EscapeArea()
~ EXIT
END
