// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_WHORE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_WHORE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67953 /* ~Naparáděná, spoře oblečená, žena se na tebe usmála a povolila si podprsenku. "Dvacet měďáků, kámo, a jsem tvoje..."~ */
  IF ~~ THEN REPLY #67958 /* ~"Vlastně mám pár otázek..."~ */ GOTO 1
  IF ~  PartyGoldGT(19)
~ THEN REPLY #67959 /* ~"To zní dobře... tady jsou peníze."~ */ DO ~TakePartyGold(20)
FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
~ GOTO 4
  IF ~  PartyGoldGT(19)
~ THEN REPLY #67960 /* ~"Eh... s ostatníma tady kolem?"~ */ GOTO 2
  IF ~~ THEN REPLY #67961 /* ~"Ne, dík. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.1
  SAY #67954 /* ~Povzdychla si a uvedla podprsenku do původního stavu. "Promiň, ale na to nemám náladu."~ */
  IF ~~ THEN REPLY #67962 /* ~"Tak mi aspoň řekni, co je to s tím hlídačem támhle..."~ */ GOTO 3
  IF ~  PartyGoldGT(19)
~ THEN REPLY #67963 /* ~"No... tak co kdybys byla moje za dvacet mincí?"~ */ DO ~TakePartyGold(20)
FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
~ GOTO 4
  IF ~~ THEN REPLY #67964 /* ~"Fajn... sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2 3.1
  SAY #67955 /* ~"Proč ne?" Zle se usmála a pohrává si se svými vlasy. "Když to bude vypadat jako zábava, možná se přidají..." Mrkla a mávla rukou, ať jdeš k ní.~ */
  IF ~  PartyGoldGT(19)
~ THEN REPLY #67965 /* ~"Máš pravdu... proč ne? Tady jsou peníze."~ */ DO ~TakePartyGold(20)
FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
~ GOTO 4
  IF ~~ THEN REPLY #67966 /* ~"Vlastně... Mám jenom pár otázek..."~ */ GOTO 1
  IF ~~ THEN REPLY #67967 /* ~"Ne, dík. Sbohem.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0
  SAY #67956 /* ~"Oh, on?" Podívala se na statného hlídače u dveří, který je otočen zády do místnosti a dívá se do chodby. "Mí přátelé a já mu jenom dáváme pár drobných, aby na nás dával pozor, to je vše. Proč? Znervózňuje tě? Nemusíš mít strach, nebude se koukat... pojď ke mně..." Rozevřela náruč.~ */
  IF ~  PartyGoldGT(19)
~ THEN REPLY #67968 /* ~"Proč ne? Tady jsou peníze."~ */ DO ~TakePartyGold(20)
FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
~ EXIT
  IF ~  PartyGoldGT(19)
~ THEN REPLY #67969 /* ~"Eh... s ostatníma tady kolem?"~ */ GOTO 2
  IF ~~ THEN REPLY #67970 /* ~"Ne, dík. Sbohem.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1 1.1 2.0
  SAY #67957 /* ~Ukojil jsi své nečisté pudy, obléknul ses a sebral své věci.

"Mmm, tebe jen tak někdo neunaví, viď? No, přijď se na mně brzy zase podívat. Měj se."~ */
  IF ~~ THEN REPLY #67971 /* ~"Možná. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #67972 /* ~Odejdi.~ */ EXIT
END
