// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ569.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ569~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #24575 /* ~Tato belhající se mrtvola vypadá, že je mrtvá už několik let. Kůže kolem čela se už odloupala, čímž se odhalila její křídově bílá lebka. Někdo vyryl na odhalenou kost číslo "569". ~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #24576 /* ~"Hledám klíč... je možné, abys ho měl ty?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #24579 /* ~"Hledám klíč... je možné, abys ho měl ty?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #24580 /* ~"Tak... viděl jsi něco zajímavého?"~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #24581 /* ~"Vím, že nejsi zombie, víš. Nikoho neoklameš."~ */ GOTO 2
  IF ~~ THEN REPLY #24584 /* ~Použij na mrtvolu Kosti vyprávějte.~ */ EXIT
  IF ~~ THEN REPLY #24585 /* ~Prohledej mrtvolu, koukni se jestli nemá klíč.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #24577 /* ~Mrtvola na tebe tiše zírá..~ */
  IF ~~ THEN REPLY #24578 /* ~"No, nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #24582 /* ~Mrtvola se nehýbe. Vypadá to, že už je natolik hotová, že ti neodpoví na nějakou tvou otázku.~ */
  IF ~~ THEN REPLY #24583 /* ~Nechej mrtvolu na pokoji.~ */ EXIT
END
