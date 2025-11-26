// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCANNON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCANNON~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 3 even though they appear after this state */
~  True()
~ THEN BEGIN 0 // from:
  SAY #66183 /* ~Das riesige, energiegeladene Gerät trommelt vor sich hin. Es sieht wie eine nicht von selbst gewachsene, sondern künstlich geschaffene, gigantische Blume aus und ist mit Metallkolben und Flanschen bestückt. Ein Durcheinander von Knöpfen, Meßinstrumenten und Zündkanälen verwirrt dein Auge.~ */
  IF ~  Global("Sabotage","GLOBAL",4)
~ THEN REPLY #66188 /* ~Sabotiere den Schießmechanismus am Fuß der Kanone.~ */ DO ~SetGlobal("Sabotage","GLOBAL",5)
~ GOTO 1
  IF ~~ THEN REPLY #66189 /* ~Spiel an der Schalttafel herum.~ */ GOTO 2
  IF ~~ THEN REPLY #66190 /* ~Laß es in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #66185 /* ~Der Schießmechanismus wirkt gefährlich instabil. Mit einem kurzen Ruck reißt du ihn aus seiner Verankerung. Ausgehend von einem gleichmäßigen Summen, ändern sich die Vibrationsgeräusche der grollenden Maschine für dich kaum wahrnehmbar, aber dennoch hörbar. Du gehst jetzt besser weg.~ */
  IF ~~ THEN REPLY #66191 /* ~Geh weg.~ */ DO ~TeleportParty("AR0502",[963.1377],14)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #66186 /* ~Im Moment scheinst du nicht viel tun zu können.~ */
  IF ~~ THEN REPLY #66192 /* ~Geh weg.~ */ EXIT
END

IF WEIGHT #0 ~  Global("Sabotage","GLOBAL",5)
~ THEN BEGIN 3 // from:
  SAY #66187 /* ~Das kräftige Summen der Maschine wird in Windeseile zu einem ohrenbetäubenden Lärm. Du gehst besser weg, bevor die Explosion der Kanone dich in Stücke reißt.~ */
  IF ~~ THEN REPLY #66193 /* ~Geh weg.~ */ DO ~TeleportParty("AR0502",[963.1377],14)
~ EXIT
END
