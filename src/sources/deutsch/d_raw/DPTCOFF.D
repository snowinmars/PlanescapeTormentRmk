// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPTCOFF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DPTCOFF~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 1 even though they appear after this state */
~  True()
~ THEN BEGIN 0 // from:
  SAY #51470 /* ~Du versuchst mit aller Kraft, den Deckel des Sarkophags zu öffnen, doch deine Bemühungen sind umsonst. Er scheint fest verschlossen zu sein.~ */
  IF ~~ THEN REPLY #51471 /* ~Geh weg.~ */ EXIT
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
  SAY #51473 /* ~Der Deckel des Sarkophags läßt sich leicht bewegen. Der Verankerungsmechanismus ist aufgebrochen.~ */
  IF ~  GlobalGT("Lo_Quest","GLOBAL",2)
~ THEN REPLY #53782 /* ~Öffne den Sarkophag.~ */ GOTO 5
  IF ~  Global("Lo_Quest","GLOBAL",2)
~ THEN REPLY #53783 /* ~Öffne den Sarkophag.~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",3)
~ GOTO 2
  IF ~  Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #53784 /* ~Öffne den Sarkophag.~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",3)
~ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #53785 /* ~Du öffnest den Sarkophag... und entdeckst darin einen einzelnen Schlüssel. Es liegt keine Leiche darin und, was noch wichtiger ist, kein Schädel.~ */
  IF ~~ THEN REPLY #53786 /* ~"Ich glaube nicht, daß Lothar sich freuen wird, das zu hören..."~ */ JOURNAL #51472 /* ~Ich habe die Gruft gefunden, aus der Lothar den Schädel wollte. Leider war der Sarkophag in der Gruft leer. Ich sollte Lothar davon erzählen.~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #53787 /* ~Einen Moment lang stehst du stumm da und betrachtest den Inhalt des Sarkophags.~ */
  IF ~~ THEN REPLY #53788 /* ~Nimm den Schlüssel und geh.~ */ DO ~SetGlobal("Journal","GLOBAL",1)
AddexperienceParty(2000)
GiveItemCreate("PTKey4",Player1,1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY #53789 /* ~Du öffnest den Sarkophag... und entdeckst darin einen einzelnen Schlüssel. Es liegt keine Leiche darin und nichts von irgendeinem Wert.~ */
  IF ~~ THEN REPLY #53790 /* ~Nimm den Schlüssel und geh.~ */ DO ~SetGlobal("Journal","GLOBAL",1)
AddexperienceParty(2000)
GiveItemCreate("PTKey4",Protagonist,1,0,0)
~ JOURNAL #51475 /* ~Ich habe in den Katakomben eine Gruft gefunden. In ihrer Mitte stand ein leerer Sarkophag.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.0
  SAY #53791 /* ~Der Sarkophag ist leer. Seit du das letzte Mal nachgesehen hast, hat sich nichts verändert.~ */
  IF ~~ THEN REPLY #53792 /* ~Geh weg.~ */ EXIT
END
