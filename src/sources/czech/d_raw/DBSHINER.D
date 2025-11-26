// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBSHINER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DBSHINER~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #51711 /* ~Mladý muž se usmál a naznačil, ať vstoupíš do jeho stanu a posadíš se. "Vyčistit a navoskovat boty, pane? Skvělá zář za pouhé dva měďáky..."~ */
  IF ~~ THEN REPLY #51712 /* ~"Ne, dík. Sbohem."~ */ GOTO 2
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #51713 /* ~"Vítám tě znovu, pane. Přišel jsi pro lesk na své boty? Čištění a voskování za dvě měděné mince..."~ */
  IF ~~ THEN REPLY #51714 /* ~"Ne, dík. Sbohem."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #51715 /* ~"A tobě také sbohem, pane. Prosím, vrať se, kdyby tvé boty potřebovaly lesk."~ */
  IF ~~ THEN REPLY #51716 /* ~Odejdi.~ */ EXIT
END
