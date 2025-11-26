// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_LDGR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_LDGR~

IF ~  NumTimesTalkedTo(0)
RandomNum(2,1)
~ THEN BEGIN 0 // from:
  SAY #67947 /* ~"Was zum... Ich *weiß* genau, daß ich die Tür hinter mir zugeschlossen habe! Raus hier, aber schnell!"~ */
  IF ~~ THEN REPLY #67948 /* ~Geh weg.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #67949 /* ~"Vielleicht bin ich selber schuld, wenn ich vergessen habe, die Tür zu verschließen... aber mir wäre es lieber, wenn du nicht ausgerechnet jetzt hier wärst. Geh bitte." Die Person deutet auf die Tür.~ */
  IF ~~ THEN REPLY #67950 /* ~Geh weg.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #67951 /* ~Die Person starrt dich böse an und zeigt in Richtung Tür, ohne auch nur ein Wort zu sprechen. ~ */
  IF ~~ THEN REPLY #67952 /* ~Geh weg.~ */ EXIT
END
