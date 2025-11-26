// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DWERNET.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DWERNET~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58937 /* ~Vidíš grázla. Má zjizvenou tvář, která vypráví bezpočet příběhů násilí, jeho hlas zní jako přesýpaný štěrk. "Co chceš, vole?"~ */
  IF ~  Global("Caretaker","GLOBAL",2)
~ THEN REPLY #66327 /* ~"Přišel jsem si s tebou promluvit o Kysovi, dozorci skládky."~ */ DO ~SetGlobal("Caretaker","GLOBAL",3)
~ GOTO 2
  IF ~~ THEN REPLY #66328 /* ~"Mám pár otázek..."~ */ GOTO 3
  IF ~~ THEN REPLY #66329 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #66324 /* ~"Co, zas ty?!" Začíná soptit.~ */
  IF ~  Global("Caretaker","GLOBAL",2)
~ THEN REPLY #66330 /* ~"Přišel jsem si s tebou promluvit o Kysovi, dozorci skládky."~ */ DO ~SetGlobal("Caretaker","GLOBAL",3)
~ GOTO 2
  IF ~~ THEN REPLY #66331 /* ~"Mám pár otázek..."~ */ GOTO 3
  IF ~~ THEN REPLY #66332 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #66325 /* ~"Á, ten malej ubožáček slyšel, že si dem pro jeho prachy?" Poškrábal se. "Di mu říct, ať je navalí, nebo z něj bude zdechlina. Padej."~ */
  IF ~~ THEN REPLY #66333 /* ~"Nejdřív mám pár otázek.."~ */ GOTO 3
  IF ~~ THEN REPLY #66334 /* ~"Fajn. Sbohem."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.0
  SAY #66326 /* ~"Nejsem ňákej blbej průvodce. Jestli chceš, ať ti někdo odpoví, tak se zeptej někoho, koho to zajímá, páč já ti na to kašlu. A teď vocaď zmizni, nebo na tebe pošlu svý kluky."~ */
  IF ~  Global("Caretaker","GLOBAL",3)
~ THEN REPLY #66335 /* ~"Tak fajn. Sbohem."~ */ DO ~EscapeArea()
~ EXIT
  IF ~  GlobalLT("Caretaker","GLOBAL",3)
~ THEN REPLY #66336 /* ~"Tak fajn. Sbohem."~ */ EXIT
END
