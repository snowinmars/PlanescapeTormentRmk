// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWACTM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWACTM~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #28177 /* ~Der vornehme Herr verfolgt aufmerksam die Vorstellung eines Schauspielduos.~ */
  IF ~~ THEN REPLY #28178 /* ~"Sei gegrüßt..."~ */ GOTO 1
  IF ~~ THEN REPLY #28193 /* ~Laß den Mann in Ruhe.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #28179 /* ~Der Mann dreht sich zu dir um, aber der größte Teil seiner Aufmerksamkeit gilt nach wie vor den Schauspielern. Er spricht im Flüsterton: "Ja, sei gegrüßt. Was meinst du? Der linke da ist nicht schlecht, aber sein Partner könnte noch ein bißchen üben, oder?"~ */
  IF ~~ THEN REPLY #28180 /* ~"Ich habe dazu keine richtige Meinung."~ */ GOTO 2
  IF ~~ THEN REPLY #28190 /* ~"Ja, er ist ein schlechter Schauspieler."~ */ GOTO 2
  IF ~~ THEN REPLY #28191 /* ~"Ich finde eigentlich, daß er ein guter Schauspieler ist."~ */ GOTO 2
  IF ~~ THEN REPLY #28192 /* ~"Du... ich hätte da ein paar Fragen..."~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.2
  SAY #28181 /* ~"Hmmm." Der Mann sieht wieder aufmerksam den Schauspielern zu.~ */
  IF ~~ THEN REPLY #28182 /* ~"Ich hätte ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #28189 /* ~Geh.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.3 2.0 5.0
  SAY #28183 /* ~Er sieht dich verärgert an und spricht mit leiser Stimme: "Nicht jetzt, ich sehe mir die Vorstellung an. Leb wohl."~ */
  IF ~~ THEN REPLY #28184 /* ~"Ich hätte da nur ein paar klitzekleine Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #28188 /* ~Geh.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #28185 /* ~Er spricht immer noch mit leiser Stimme, doch der Tonfall ist jetzt drohender: "Nein. Laß mich in Ruhe. Du zwingst mich sonst, dich von den Wachen hier wegbringen zu lassen."~ */
  IF ~~ THEN REPLY #28186 /* ~"Dann ruf sie doch."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Audience_1","GLOBALLaw",-1)
IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #28187 /* ~Geh.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #28194 /* ~Der Mann nickt zum Gruß, bedeutet dir aber, still zu sein..~ */
  IF ~~ THEN REPLY #28195 /* ~"Ich hätte ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #68101 /* ~Geh weg.~ */ EXIT
END
