// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINSCR6.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DINSCR6~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #38107 /* ~Daran kann niemand etwas ändern. Erinnerungen sind verschwunden, vielleicht auf Nimmerwiedersehen. Mit jedem Tod verliere ich einen Teil meiner selbst.~ */
  IF ~~ THEN REPLY #53738 /* ~Weiter.~ */ GOTO 1
  IF ~~ THEN REPLY #53739 /* ~Wende dich von der Inschrift ab.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53740 /* ~Wie kann jemand unsterblich sein und dennoch sterben? ~ */
  IF ~~ THEN REPLY #53741 /* ~Weiter.~ */ GOTO 2
  IF ~~ THEN REPLY #53742 /* ~Wende dich von der Inschrift ab.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53743 /* ~Er hat mir gesagt, daß mein Geist mit jedem Tod schwächer wird. Ich fragte ihn, wie das sein könne, aber er konnte es mir nicht beantworten. Er war nutzlos. Ich habe ihn kaltgemacht, damit keine andere Inkarnation je Nutzen aus seiner Nutzlosigkeit ziehen kann.~ */
  IF ~  Global("Inscr_6","GLOBAL",0)
~ THEN REPLY #53744 /* ~Untersuche die Tafel.~ */ GOTO 3
  IF ~~ THEN REPLY #53745 /* ~Laß die Tafel in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #53746 /* ~Die Ritzzeichnungen dieser Inschrift sind unbeholfen und nehmen der Tafel ihre meisterhafte Wirkung. Bei genauerem Hinsehen glaubst du, daß die Tafel sich in die Wand schieben läßt.~ */
  IF ~~ THEN REPLY #53747 /* ~Drücke gegen dieTafel.~ */ DO ~SetGlobal("Inscr_6","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #53748 /* ~Laß die Tafel in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #53749 /* ~Die Tafel gleitet in die Wand, und du hörst ein Klicken von dem Sarkophag hinter dir.~ */
  IF ~~ THEN REPLY #53750 /* ~Wende dich von der Inschrift ab.~ */ EXIT
END
