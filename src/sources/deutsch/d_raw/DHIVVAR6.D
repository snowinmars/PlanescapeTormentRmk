// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVVAR6.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVVAR6~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #49016 /* ~Du triffst auf eine Frau mit einem sorgenvollen Gesicht.~ */
  IF ~~ THEN REPLY #49017 /* ~"Sei gegrüßt."~ */ GOTO 2
  IF ~~ THEN REPLY #49018 /* ~Laß die Frau in Ruhe.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #49019 /* ~Die Frau seufzt. "Mein Mann ist wieder fortgegangen."~ */
  IF ~~ THEN REPLY #49020 /* ~"Scheint ja ein vielbeschäftigter Mann zu sein."~ */ GOTO 4
  IF ~~ THEN REPLY #49021 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #49022 /* ~"Ich warte, daß mein Mann zurückkommt. Er ist jetzt schon 'ne ganze Weile fort, und ich mach mir langsam Sorgen."~ */
  IF ~~ THEN REPLY #49023 /* ~"Er wird bestimmt bald zurück sein."~ */ GOTO 3
  IF ~~ THEN REPLY #49024 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #49025 /* ~"Du hast bestimmt recht. Herrjeh... schau nur, wie spät es schon ist! Wenn du mich jetzt entschuldigen würdest. Ich hab da noch ein bißchen Arbeit liegen."~ */
  IF ~~ THEN REPLY #49026 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0
  SAY #49027 /* ~"Ja, das ist er, und ich bin genauso beschäftigt... Also, könntest du dann jetzt bitte gehen?"~ */
  IF ~~ THEN REPLY #49028 /* ~"Leb wohl."~ */ EXIT
END
