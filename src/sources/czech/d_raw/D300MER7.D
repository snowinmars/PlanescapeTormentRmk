// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D300MER7.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~D300MER7~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #17734 /* ~Tento hubený mladý muž - obchodník s oblečením - volá na kolemjdoucí, má na tváři nervózní úsměv. Nezdá se, že by si všiml, jak tam stojíš.~ */
  IF ~~ THEN REPLY #17744 /* ~"Zdravím tě..."~ */ GOTO 2
  IF ~~ THEN REPLY #17745 /* ~Nechej obchodníka být.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #17736 /* ~"Buď opět vítán. Můžu ti, ehmmm, něco nabídnout?"~ */
  IF ~~ THEN REPLY #17746 /* ~"Ne, nepotřebuju žádné šaty. Přesto mám pár otázek..."~ */ GOTO 3
  IF ~~ THEN REPLY #17747 /* ~"Ne, já jednoduše jenom procházím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #17737 /* ~"Vítej, ehmmm... vítej! Co ti můžu dnes nabídnout? Kůže? Hedvábí? Bavlnu?"~ */
  IF ~~ THEN REPLY #17748 /* ~"Ne. Já nepotřebuju žádné šaty. Mám několik otázek..."~ */ GOTO 3
  IF ~~ THEN REPLY #17749 /* ~"Nic, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #17738 /* ~"Ale jistě, prosím, ptej se na cokoliv, co budeš chtít." Bystře se usmál - chabý pokus udělat dobrý dojem.~ */
  IF ~~ THEN REPLY #17750 /* ~"Řekni mi o této oblasti."~ */ GOTO 4
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17751 /* ~"Hledám muže jménem Pharod."~ */ GOTO 4
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17752 /* ~"Hledám deník, který jsem ztratil."~ */ GOTO 4
  IF ~~ THEN REPLY #17753 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1 3.2
  SAY #17739 /* ~"Och!" Náhle vypadá zklamaně. "Já... ehmmm... já 'sem si myslel, že se budeš chtít zeptat na... šaty."~ */
  IF ~~ THEN REPLY #17754 /* ~"Šaty?"~ */ GOTO 5
  IF ~~ THEN REPLY #17755 /* ~"Ne. Můžeš odpovědět na moje otázky?"~ */ GOTO 6
  IF ~~ THEN REPLY #17756 /* ~"Zapomeň, že jsem se ptal. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #17741 /* ~Obchodníkovy oči se rozzářily. "Jó šaty! Já mám všechny druhy šatů, příteli... jakýkoliv druh který bys mohl chtít! Chtěl by sis prohlédnout něco důkladněji?"~ */
  IF ~~ THEN REPLY #17757 /* ~"Ne, ale můžeš odpovědět na moje otázky?"~ */ GOTO 6
  IF ~~ THEN REPLY #17758 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.0
  SAY #17742 /* ~Zamračil se a pokýval hlavou. "Ehmmm... ne." Náhle, jako by ho napadla jasná myšlenka, ukazuje na jeho role látek: "Šaty?"~ */
  IF ~~ THEN REPLY #17759 /* ~"Ne. Sbohem."~ */ EXIT
END
