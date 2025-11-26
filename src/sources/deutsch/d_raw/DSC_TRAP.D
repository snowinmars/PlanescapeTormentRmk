// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSC_TRAP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DSC_TRAP~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #50384 /* ~Dies ist eine alte, vergilbt und harmlos aussehende Pergamentrolle, die mit einem einzigen roten Band zusammengebunden ist und schwach nach Schimmel riecht. Das Band ist mit einem schlichten Wachssiegel fixiert.~ */
  IF ~~ THEN REPLY #50385 /* ~Brich das Siegel, öffne die Schriftrolle, und lies sie.~ */ GOTO 1
  IF ~~ THEN REPLY #50386 /* ~Leg die Schriftrolle weg.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #50387 /* ~Die Schriftrolle enthält einige handschriftliche Zeilen, die mit zittriger Hand erstellt worden sind und eine merkwürdige Rune. Der Text der Handschrift lautet:

"dies TÖTET dich vielleicht nicht, aber es macht dich LANGSAMER, da bin ich SICHER "
"HÖRT AUF MICH ZU JAGEN IHR DIEBISCHEN BASTARDE das ist MEIN Körper MEINER MEINER MEINER"
"nun... STERBT"~ */
  IF ~~ THEN REPLY #50388 /* ~"Was zum...?"~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #50389 /* ~~ */
  IF ~~ THEN REPLY #50390 /* ~~ */ DO ~ApplySpell(Protagonist,WIZARD_BALL_LIGHTNING)
DestroyPartyItem("SCTrap",FALSE)
~ EXIT
END
