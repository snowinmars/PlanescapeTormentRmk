// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRAUK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DRAUK~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #4 /* Triggers after states #: 1 2 3 7 even though they appear after this state */
~  Global("Rings3","Global",0)
~ THEN BEGIN 0 // from:
  SAY #49900 /* ~Du triffst auf einen jungen Mann in schlichter, aber gepflegter Kleidung. Er verlangsamt seinen Schritt, als du dich ihm näherst.~ */
  IF ~~ THEN REPLY #49901 /* ~"Sei gegrüßt..."~ */ GOTO 4
  IF ~~ THEN REPLY #49902 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 2 3 7 even though they appear after this state */
~  Global("Rings3","Global",1)
~ THEN BEGIN 1 // from:
  SAY #49903 /* ~"Hast du sie? Ja?"~ */
  IF ~  PartyHasItem("SilRing")
PartyHasItem("BroRing")
PartyHasItem("GolRing")
~ THEN REPLY #49904 /* ~"Ich hab alle Ringe. Hier."~ */ DO ~TakePartyItemNum("SilRing",1)
TakePartyItemNum("BroRing",1)
TakePartyItemNum("GolRing",1)
~ GOTO 6
  IF ~~ THEN REPLY #49905 /* ~"Ich komme wieder, wenn ich alle hab. Leb wohl."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 3 7 even though they appear after this state */
~  Global("Rings3","Global",2)
~ THEN BEGIN 2 // from:
  SAY #49906 /* ~"Du Freund. Hilfst Rauk. Gut."~ */
  IF ~~ THEN REPLY #49907 /* ~"Leb wohl."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 7 even though they appear after this state */
~  Global("WIdiots","Global",1)
~ THEN BEGIN 3 // from:
  SAY #49908 /* ~"Rauk Freunde verloren. Aber Rauk hat neuen Freund. Nenn ihn Grünes Ding."~ */
  IF ~~ THEN REPLY #49909 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.0
  SAY #49910 /* ~"Rauk in großen Schwierigkeiten. Hilfst du?"~ */
  IF ~~ THEN REPLY #49911 /* ~"Was hast du denn?"~ */ GOTO 5
  IF ~~ THEN REPLY #49912 /* ~"Ich hab keine Zeit dafür. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #49913 /* ~"Rauk vergißt Ringe in Zelt. Freunde brauchen sie, um damit zu zaubern. Keine Ringe, wütend auf Rauk. Ein Ring braun wie Klimper. Anderer glänzend wie Spiegel. Letzter hübsch und gelb. Bringst du sie Rauk?"~ */
  IF ~~ THEN REPLY #49914 /* ~"Ich bring sie dir zurück, Rauk."~ */ DO ~SetGlobal("Rings3","Global",1)
~ JOURNAL #49916 /* ~Rauk hat mir aufgetragen, ihm drei Ringe aus seinem Zelt zu bringen. Nach seiner Beschreibung ist der erste aus Gold, der zweite aus Silber und der dritte aus Bronze. Jetzt muß ich bloß noch Rauks Zelt finden. Er scheint ja eher einfach gestrickt zu sein... Es ist also wahrscheinlich nicht so weit weg.~ */ EXIT
  IF ~~ THEN REPLY #49915 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.0
  SAY #49917 /* ~"Du jetzt Rauks neuer Freund. Rauk nimmt jetzt Ringe. Rauk dankt neuem Freund."~ */
  IF ~~ THEN REPLY #49918 /* ~"Leb wohl, Rauk."~ */ DO ~SetGlobal("Rings3","Global",2)
AddexperienceParty(500)
StartCutSceneMode()
StartCutSceneEx("3012cut1",FALSE)
~ JOURNAL #49919 /* ~Ich bin mit den drei Ringen zu Rauk zurückgekehrt und hab sie ihm gegeben. Eine simple Aufgabe für eine simple Person.~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Apprent_DEAD_KAPUTZ","GLOBAL",0)
!Global("Rings3","GLOBAL",2)
~ THEN BEGIN 7 // from:
  SAY #66367 /* ~"Du hast Freund von Rauk getötet. Rauk dich jetzt böse verletzt."~ */
  IF ~~ THEN REPLY #66368 /* ~Greif Rauk an.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
