// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINSCR5.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DINSCR5~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #38105 /* ~I have lost lifetimes because of my killer. I cannot deceive him, so I must kill him. I tried to throw him off the scent. I left false bodies, tailored in such a way to placate him. I roamed the most outer planes, hoping to use distance as a shield. I built this tomb filled with traps to try and kill the killer. I hid. ~ */
  IF ~~ THEN REPLY #53727 /* ~Continue.~ */ GOTO 1
  IF ~~ THEN REPLY #53728 /* ~Turn away from the inscription.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53729 /* ~All I bought was time. The attacks inevitably begin again, with more fury than before. Deceptions are useless. Somehow, the killer always knows that I live. And no matter where on the planes I hide, he finds me... eventually.~ */
  IF ~  Global("Inscr_5","GLOBAL",0)
~ THEN REPLY #53730 /* ~Examine the panel.~ */ DO ~SetGlobal("Know_Player_Killer","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #53731 /* ~Turn away from the inscription.~ */ DO ~SetGlobal("Know_Player_Killer","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53732 /* ~The panel looks as if it can recess into the wall.~ */
  IF ~~ THEN REPLY #53733 /* ~Push the panel.~ */ DO ~SetGlobal("Inscr_5","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #53734 /* ~Leave the panel alone.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #53735 /* ~The panel slides smoothly into the wall. You hear a click from the sarcophagus behind you.~ */
  IF ~~ THEN REPLY #53736 /* ~Turn away from the inscription.~ */ EXIT
END
