// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : FINNOTE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~FINNOTE~

IF ~  Global("P_Journal","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY #50376 /* ~Toto jsou poznámky zesnulého lingvisty Fina Andlye. Byly vytvořeny při jeho výzkumu jazyka Uyo... který se zdá být nápadně podobný nápisům, jež jsi našel ukryté v hlavolamu dvanáctistěnu.~ */
  IF ~~ THEN REPLY #50377 /* ~Pozorně je pročti, jestli ti probudí vzpomínky.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PlaySoundNotRanged("SPTR_01")
SetGlobal("P_Journal","GLOBAL",4)
~ JOURNAL #50379 /* ~Pročetl jsem poznámky lingvisty Fina Andlye a zjistil jsem, že už ten jazyk, v němž jsou napsány nápisy v hlavolamu dvanáctistěnu, znám - mrtvý jazyk Uyo. Teď už jsem konečně schopen tu věc přečíst. ~ */ GOTO 1
  IF ~~ THEN REPLY #50378 /* ~Odlož je.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #50380 /* ~Při pročítání poznámek Fina Andlye, pojednávajících o ztraceném jazyku Uyo, jsi ve svých skráních pocítil pulsující pocit, jak se na povrch derou vzpomínky... vzpomínky na tento jazyk.

Vybavuješ si písmena, slova, fráze, až se ti jazyk - jako vítr z Věže odvívající přikrývku jedovatého smogu z Velké slévárny - ukázal v celém svém rozsahu. Teď bys měl být schopen přečíst nápisy v dvanáctistěnu. ~ */
  IF ~~ THEN REPLY #50381 /* ~Odlož poznámky.~ */ EXIT
END

IF ~  !Global("P_Journal","GLOBAL",3)
~ THEN BEGIN 2 // from:
  SAY #50382 /* ~Toto jsou poznámky zesnulého lingvisty Fina Andlye. Byly vytvořeny při jeho výzkumu jazyka Uyo.~ */
  IF ~~ THEN REPLY #50383 /* ~Odlož je.~ */ EXIT
END
