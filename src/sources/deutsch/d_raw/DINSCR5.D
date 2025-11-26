// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINSCR5.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DINSCR5~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #38105 /* ~Ich habe durch meinen Mörder ganze Leben verloren. Ich kann ihn nicht täuschen, also muß ich ihn töten. Ich habe versucht, ihn von meiner Fährte abzubringen. Ich habe falsche Leichen hinterlassen, die ich so zugerichtet habe, daß sie ihn zufriedenstellen sollten. Ich bin durch die Äußersten Ebenen gezogen in der Hoffnung, die Distanz als einen Schild zu benutzen. Ich habe dieses Grab gebaut und mit Fallen versehen, damit der Mörder darin umkäme. Ich habe mich versteckt.~ */
  IF ~~ THEN REPLY #53727 /* ~Weiter.~ */ GOTO 1
  IF ~~ THEN REPLY #53728 /* ~Wende dich von der Inschrift ab.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53729 /* ~Ich habe mir nur ein wenig Zeit erkauft. Die Angriffe beginnen unweigerlich von neuem, heftiger als zuvor. Täuschungsmanöver sind zwecklos. Irgendwie weiß der Killer immer, daß ich lebe. Egal, wo auf den Ebenen ich mich verstecke - er findet mich. Letztendlich.~ */
  IF ~  Global("Inscr_5","GLOBAL",0)
~ THEN REPLY #53730 /* ~Untersuche die Tafel.~ */ DO ~SetGlobal("Know_Player_Killer","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #53731 /* ~Wende dich von der Inschrift ab.~ */ DO ~SetGlobal("Know_Player_Killer","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53732 /* ~Die Tafel sieht aus, als ließe sie sich in die Wand schieben.~ */
  IF ~~ THEN REPLY #53733 /* ~Drücke gegen dieTafel.~ */ DO ~SetGlobal("Inscr_5","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #53734 /* ~Laß die Tafel in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #53735 /* ~Leicht gleitet die Tafel in die Wand. Du hörst ein Klicken von dem Sarkophag hinter dir.~ */
  IF ~~ THEN REPLY #53736 /* ~Wende dich von der Inschrift ab.~ */ EXIT
END
