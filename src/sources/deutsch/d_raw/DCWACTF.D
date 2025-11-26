// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWACTF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWACTF~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #28158 /* ~Die attraktive junge Frau verfolgt aufmerksam die Vorstellung eines Schauspielduos.~ */
  IF ~~ THEN REPLY #28164 /* ~"Sei gegrüßt..."~ */ GOTO 1
  IF ~~ THEN REPLY #28165 /* ~Laß die Frau in Ruhe.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #28159 /* ~Die Frau dreht sich zu dir um, aber der größte Teil ihrer Aufmerksamkeit gilt nach wie vor den Schauspielern. Sie spricht im Flüsterton: "Freut mich, deine Bekanntschaft zu machen. Schaust du schon lange zu? Der linke da ist nicht schlecht, aber sein Partner könnte noch ein bißchen üben, nicht wahr?"~ */
  IF ~~ THEN REPLY #28166 /* ~"Ich habe dazu keine richtige Meinung."~ */ GOTO 2
  IF ~~ THEN REPLY #28167 /* ~"Ja, er ist ein schlechter Schauspieler."~ */ GOTO 2
  IF ~~ THEN REPLY #28168 /* ~"Ich finde eigentlich, daß er ein guter Schauspieler ist."~ */ GOTO 2
  IF ~~ THEN REPLY #28169 /* ~"Du... ich hätte da ein paar Fragen..."~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.2
  SAY #28160 /* ~Die Frau nickt nur als Antwort und sieht wieder aufmerksam den Schauspielern zu.~ */
  IF ~~ THEN REPLY #28170 /* ~"Ich hätte ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #28171 /* ~Geh.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.3 2.0 5.0
  SAY #28161 /* ~Sie guckt dich verärgert an und spricht mit leiser Stimme: "So sei doch etwas höflicher. Ich schaue mir die Vorstellung an. Leb wohl."~ */
  IF ~~ THEN REPLY #28172 /* ~"Ich hätte da nur ein paar klitzekleine Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #28173 /* ~Geh.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #28162 /* ~Sie spricht immer noch mit leiser Stimme, doch der Tonfall ist jetzt drohender: "Ich bitte dich, sei still. Oder geh. Sonst muß ich die Wachen rufen."~ */
  IF ~~ THEN REPLY #28174 /* ~"Dann ruf sie doch."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Audience_1","GLOBALLaw",-1)
IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #28175 /* ~Geh.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #28163 /* ~Die Frau nickt zum Gruß, bedeutet dir aber, still zu sein.~ */
  IF ~~ THEN REPLY #28176 /* ~"Ich hätte ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #68100 /* ~Geh weg.~ */ EXIT
END
