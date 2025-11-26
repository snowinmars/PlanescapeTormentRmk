// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANARCH3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DANARCH3~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #44482 /* ~Vidíš mohutného muže s tupou tváří a povislou čelistí. Jeho svaly jsou skutečná podívaná. Stále na tebe zírá svýma mrtvýma očima. "Huh?"~ */
  IF ~  Global("Know_An_Pass","GLOBAL",1)
Global("Know_Anarchists","GLOBAL",0)
~ THEN REPLY #44485 /* ~"Doslechl jsem se, že tu najdu spolek Anarchistů. Heslo je 'úpadek.'" ~ */ GOTO 2
  IF ~~ THEN REPLY #44486 /* ~"Kdo jsi?"~ */ GOTO 2
  IF ~~ THEN REPLY #44487 /* ~"Co je tohle za místo?"~ */ GOTO 2
  IF ~~ THEN REPLY #44489 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #44547 /* ~"Huh?"~ */
  IF ~~ THEN REPLY #44548 /* ~"Ještě jednou, co jsi zač?"~ */ GOTO 2
  IF ~~ THEN REPLY #44549 /* ~"Co je tohle za místo?"~ */ GOTO 2
  IF ~  Global("Know_An_Pass","GLOBAL",1)
Global("Know_Anarchists","GLOBAL",0)
~ THEN REPLY #44550 /* ~"Doslechl jsem se, že tu najdu spolek Anarchistů. Heslo je 'úpadek.'" ~ */ GOTO 2
  IF ~~ THEN REPLY #44551 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 0.1 0.2 1.0 1.1 1.2
  SAY #44552 /* ~"Nepromlouvej se mnou. Promluv s Leenou." Mávl rukou s kůží jako kůra dubu k dohlížející ženě.~ */
  IF ~~ THEN REPLY #44553 /* ~"Jen pár otázek?"~ */ GOTO 3
  IF ~~ THEN REPLY #44554 /* ~"V pořádku. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #44555 /* ~"NEPROMLOUVEJ SE MNOU!" Vypadá rozčileně.~ */
  IF ~~ THEN REPLY #44557 /* ~"Dobře, dobře. Sbohem."~ */ EXIT
END
