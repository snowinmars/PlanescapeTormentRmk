// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWPOETF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWPOETF~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #28196 /* ~Die attraktive junge Frau verfolgt aufmerksam die Lesung eines älteren Dichters.~ */
  IF ~~ THEN REPLY #28197 /* ~"Sei gegrüßt..."~ */ GOTO 1
  IF ~~ THEN REPLY #28653 /* ~Laß die Frau in Ruhe.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #28198 /* ~Die Frau dreht sich zu dir um, aber der größte Teil ihrer Aufmerksamkeit gilt nach wie vor dem Dichter. Sie spricht im Flüsterton: "Ich wäre dir sehr verbunden, wenn du etwas leiser sprechen würdest." Sie nickt dem Dichter zu. "Sicher kein Klassiker, aber der alte Knabe hat *auf jeden Fall* Potential."~ */
  IF ~~ THEN REPLY #28199 /* ~"Ich habe dazu keine richtige Meinung."~ */ GOTO 2
  IF ~~ THEN REPLY #28209 /* ~"Ja, er ist ein schlechter Dichter."~ */ GOTO 2
  IF ~~ THEN REPLY #28654 /* ~"Ich finde eigentlich, daß er ein guter Dichter ist."~ */ GOTO 2
  IF ~~ THEN REPLY #28655 /* ~"Du... ich hätte da ein paar Fragen..."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.2
  SAY #28200 /* ~Die Frau nickt langsam und hat ihre Augen immer noch auf den Dichter geheftet.~ */
  IF ~~ THEN REPLY #28201 /* ~"Ich hätte ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #28208 /* ~Geh.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0
  SAY #28202 /* ~Sie sieht dich verärgert an und spricht mit leiser Stimme: "Jetzt ist nicht der richtige Zeitpunkt dafür. Bitte hab' etwas mehr Hochachtung vor dem Dichter und sei ruhig... Leb wohl."~ */
  IF ~~ THEN REPLY #28203 /* ~"Ich hätte da nur ein paar klitzekleine Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #28207 /* ~Geh.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #28204 /* ~Sie spricht immer noch mit leiser Stimme, doch der Tonfall ist jetzt drohender: "Dies ist weder die Zeit noch der Ort für Fragen. Laß mich in Ruhe oder ich rufe die Wache."~ */
  IF ~~ THEN REPLY #28205 /* ~"Dann ruf sie doch."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Audience_1","GLOBALLaw",-1)
IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #28206 /* ~Geh.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #28650 /* ~Die Frau nickt zum Gruß, bedeutet dir aber, still zu sein.~ */
  IF ~~ THEN REPLY #28656 /* ~"Ich hätte ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #68102 /* ~Geh weg.~ */ EXIT
END
