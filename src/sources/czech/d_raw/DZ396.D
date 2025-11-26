// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ396.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ396~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34931 /* ~Mrtvola přechází od desky k desce a obvazuje ležící těla. Do levého spánku má vyryto číslo "369", rty má pevně sešité. Všiml sis, že nese v ruce obvazy... vypadají použitelně.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #34932 /* ~"Můžu si půjčit ty obvazy?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #34935 /* ~"Můžu si půjčit ty obvazy?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #34936 /* ~Zkus ze zombie odmotat obvazy.~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #34937 /* ~"Vím, že nejsi zombie. Takhle nikoho neoblbneš."~ */ GOTO 2
  IF ~~ THEN REPLY #34940 /* ~Použij na mrtvolu Kosti-vyprávějte.~ */ EXIT
  IF ~~ THEN REPLY #34941 /* ~"Rád jsem si s tebou popovídal. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #34933 /* ~Mrtvola na tebe dál zírá.~ */
  IF ~~ THEN REPLY #34934 /* ~Zkus vytrhnout zombie z rukou obvazy.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #34938 /* ~Mrtvola se nehýbe. Asi už ti neodpoví na žádnou otázku.~ */
  IF ~~ THEN REPLY #34939 /* ~Nechej mrtvolu být.~ */ EXIT
END
