// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWPOETM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWPOETM~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #28210 /* ~Der vornehme Herr verfolgt aufmerksam die Lesung eines älteren Dichters.~ */
  IF ~~ THEN REPLY #28211 /* ~"Sei gegrüßt..."~ */ GOTO 1
  IF ~~ THEN REPLY #28212 /* ~Laß den Mann in Ruhe.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #28213 /* ~Der Mann dreht sich zu dir um, doch der größte Teil seiner Aufmerksamkeit gilt nach wie vor dem Dichter. Er spricht im Flüsterton: "Sei ebenfalls gegrüßt." Er hält einen Moment inne und flüstert dann: "Nicht die beste Dichtkunst, die ich jemals gehört habe, aber bestimmt nicht schlecht, was?"~ */
  IF ~~ THEN REPLY #28214 /* ~"Ich habe dazu keine richtige Meinung."~ */ GOTO 2
  IF ~~ THEN REPLY #28215 /* ~"Ja, er ist ein schlechter Dichter."~ */ GOTO 2
  IF ~~ THEN REPLY #28216 /* ~"Ich finde eigentlich, daß er ein guter Dichter ist."~ */ GOTO 2
  IF ~~ THEN REPLY #28217 /* ~"Du... ich hätte da ein paar Fragen..."~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.2
  SAY #28218 /* ~"Hmmm." Der Mann nickt und blickt den alten Dichter weiter an.~ */
  IF ~~ THEN REPLY #28219 /* ~"Ich hätte ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #28220 /* ~Geh.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.3 2.0 5.0
  SAY #28221 /* ~Er sieht dich verärgert an und spricht mit leiser Stimme: "Nein, nicht jetzt. Ich höre der Dichtkunst dieses Mannes zu. Leb wohl."~ */
  IF ~~ THEN REPLY #28222 /* ~"Ich hätte da nur ein paar klitzekleine Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #28223 /* ~Geh.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #28224 /* ~Er spricht immer noch mit leiser Stimme, doch der Tonfall ist jetzt drohender: "Sei still oder geh, bevor ich gezwungen bin, die Wachen zu rufen."~ */
  IF ~~ THEN REPLY #28225 /* ~"Dann ruf sie doch."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Audience_1","GLOBALLaw",-1)
IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #28226 /* ~Geh.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #28227 /* ~Der Mann nickt zum Gruß, bedeutet dir aber, still zu sein..
~ */
  IF ~~ THEN REPLY #28228 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #68103 /* ~Geh weg.~ */ EXIT
END
