// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ613.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ613~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #6540 /* ~Číslo "613" je hluboko vyryto do čela této plahočící se mrtvoly, ale kousek odtržené tuhé kůže odděluje "1" a "3." Když se podíváš zblízka, s obtížemi tam rozluštíš vyřezanou "2".~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #6543 /* ~"Tak... je tam dál vidět něco zajímavého?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #6544 /* ~"Tak... je tam dál vidět něco zajímavého?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #6545 /* ~"Vím, že nejsi zombie, rozumíš. Nedělej si z nikoho blázny."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6546 /* ~Použij svou schopnost Kosti vyprávějte na mrtvolu.~ */ GOTO 2
  IF ~~ THEN REPLY #6547 /* ~"Rád jsem si s tebou popovídal. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #6548 /* ~Nechej mrtvolu být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #6541 /* ~Mrtvola na tebe stále zírá.~ */
  IF ~~ THEN REPLY #6549 /* ~Nechej mrtvolu být.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #6542 /* ~Mrtvola neodpovídá. Vypadá to, že je mrtvá příliš dlouho na to, aby byla schopna odpovědět na nějakou tvou otázku.~ */
  IF ~~ THEN REPLY #6550 /* ~Nechej mrtvolu být.~ */ EXIT
END
