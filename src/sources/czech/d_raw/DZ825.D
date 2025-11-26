// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ825.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ825~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #24564 /* ~Mrtvola narovnává svou hlavu... vychylující se z krku. Vypadá to, že tento člověk byl zřejmě oběšen. Na straně hlavy má namalované číslo "825".~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #24565 /* ~"Hledám klíč... je možné jeden dostat?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #24568 /* ~"Hledám klíč... je možné, abys ho měl ty?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #24569 /* ~"Tak... viděl jsi něco zajímavého?"~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #24570 /* ~"Vím, že nejsi zombie, víš. Nikoho neoklameš."~ */ GOTO 2
  IF ~~ THEN REPLY #24573 /* ~Použij na mrtvole Kosti vyprávějte.~ */ EXIT
  IF ~~ THEN REPLY #24574 /* ~Prohledej mrtvolu, koukni jestli nemá klíč.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #24566 /* ~Mrtvola zírá na podlahu a neodpovídá.~ */
  IF ~~ THEN REPLY #24567 /* ~"No, nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #24571 /* ~Mrtvola se nehýbe. Vypadá to, že je natolik hotová, že nemůže odpovědět na jakoukoliv tvou otázku.~ */
  IF ~~ THEN REPLY #24572 /* ~Nech mrtvolu na pokoji.~ */ EXIT
END
