// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : SCTRAP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~SCTRAP~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #66878 /* ~Dies ist eine alte, vergilbt und harmlos aussehende Pergamentrolle, die mit einem einzigen roten Band zusammengebunden ist und schwach nach Schimmel riecht. Das Band ist mit einem schlichten Wachssiegel fixiert.~ */
  IF ~~ THEN REPLY #66880 /* ~Brich das Siegel, öffne die Schriftrolle, und lies sie.~ */ DO ~SetGlobal("CW_Scroll_Trap","GLOBAL",1)
~ JOURNAL #66828 /* ~Ich habe die magisch gefangene Schriftrolle geöffnet und gelesen. Da stand einfach nur:

"Das TÖTET euch vielleicht nicht, aber es wird euch VERLANGSAMEN, da bin ich mir SICHER"
"HÖRT AUF MICH ZU JAGEN, IHR DIEBISCHEN BASTARDE, das ist MEIN Körper MEINER MEINER MEINER "
"nun... STERBT"

Ich habe die Schriftrolle von einer Frau bekommen, die mir erzählt hat, daß sie ihr von ihrer Mutter mit der Anweisung gegeben wurde, sie einem Mann meiner Beschreibung zu geben.~ */ GOTO 1
  IF ~~ THEN REPLY #66881 /* ~Leg die Schriftrolle weg.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #66882 /* ~Die Schriftrolle enthält einige handschriftliche Zeilen, die mit zittriger Hand erstellt worden sind und eine merkwürdige Rune. Der Text der Handschrift lautet:

"dies TÖTET dich vielleicht nicht, aber es macht dich LANGSAMER, da bin ich SICHER "
"HÖRT AUF MICH ZU JAGEN IHR DIEBISCHEN BASTARDE das ist MEIN Körper MEINER MEINER MEINER"
"nun... STERBT"~ */
  IF ~  HPLT(Protagonist,36)
~ THEN REPLY #66883 /* ~"Was zum...?"~ */ GOTO 2
  IF ~  HPGT(Protagonist,35)
~ THEN REPLY #66884 /* ~"Was zum...?"~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #66885 /* ~Die Rune pulsiert plötzlich, und die gesamte Schriftrolle beginnt, sich in ein stinkendes schwarzes Gemisch aufzulösen. Die Flüssigkeit sickert sofort in das Fleisch deiner Hände... In wenigen Sekunden verwandelt das magische Hemotoxin dein Blut in schwarze Gallenflüssigkeit. Du stirbst einen außerordentlich qualvollen Tod...~ */
  IF ~~ THEN REPLY #66886 /* ~Dunkelheit umgibt dich...~ */ DO ~Kill(Protagonist)
DestroyPartyItem("ScTrap",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #66887 /* ~Die Rune pulsiert plötzlich, und die gesamte Schriftrolle beginnt, sich in ein stinkendes schwarzes Gemisch aufzulösen. Die Flüssigkeit sickert sofort in das Fleisch deiner Hände... In wenigen Sekunden verwandelt das magische Hemotoxin dein Blut in schwarze Gallenflüssigkeit. Einen Moment lang klammerst du dich an dir selbst fest und schreist im Todeskampf... Und dann klingt der Schmerz ab. Trotz des schrecklichen Zaubers, mit dem die Schriftrolle behaftet gewesen ist, hast du überlebt.~ */
  IF ~~ THEN REPLY #66888 /* ~Geschafft.~ */ DO ~Damage(Protagonist,LOWER,35)
DestroyPartyItem("ScTrap",FALSE)
~ EXIT
END
