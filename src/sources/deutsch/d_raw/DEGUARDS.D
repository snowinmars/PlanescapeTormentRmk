// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DEGUARDS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DEGUARDS~

IF ~  Global("Woff1_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #57421 /* ~Dieser Wachposten dreht sich um, als du näherkommst, sagt aber keinen Ton. Durch die Schlitze in seinem Helm siehst du ein Paar dumpfe, apathische Augen.~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #57422 /* ~"Der Mann ist doch nur ein Sündenbock. Wenn ihr ihn hinrichtet, wird dies das Chaos, das diese Stadt überhaupt erst nach Carzeri verschoben hat, nur noch verstärken. Wir müssen diesem Wahnsinn ein Ende setzen, um Verdammnis dahin zurückzubefördern, wo es hingehört... bevor wir *alle* sterben."~ */ GOTO 1
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #57423 /* ~"Der Mann ist doch nur ein Sündenbock. Wenn ihr ihn hinrichtet, wird dies das Chaos, das diese Stadt überhaupt erst nach Carzeri verschoben hat, nur noch verstärken. Wir müssen diesem Wahnsinn ein Ende setzen, um Verdammnis dahin zurückzubefördern, wo es hingehört... bevor wir *alle* sterben."~ */ GOTO 1
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #57424 /* ~"Der Mann ist doch nur ein Sündenbock. Wenn ihr ihn hinrichtet, wird dies das Chaos, das diese Stadt überhaupt erst nach Carzeri verschoben hat, nur noch verstärken. Wir müssen diesem Wahnsinn ein Ende setzen, um Verdammnis dahin zurückzubefördern, wo es hingehört... bevor wir *alle* sterben."~ */ GOTO 1
  IF ~~ THEN REPLY #57425 /* ~"Ihr könnt nicht zulassen, daß dieser Mann hingerichtet wird - er ist doch nur ein Sündenbock. Das wäre *falsch*. Wegen solcher Dinge ist Verdammnis nach Carzeri geglitten... und das müssen wir stoppen, um die Stadt der Portale zurück in die Außenländer zu befördern."~ */ GOTO 1
  IF ~~ THEN REPLY #57426 /* ~"Ihr könnt nicht zulassen, daß der Mann hingerichtet wird."~ */ GOTO 1
  IF ~~ THEN REPLY #57427 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2 0.3 0.4
  SAY #57428 /* ~Der Wachposten zuckt nur unmerklich die Schultern.~ */
  IF ~~ THEN REPLY #57429 /* ~"Ist das euch egal? Seht ihr nicht, was hier vor sich geht?"~ */ GOTO 2
  IF ~~ THEN REPLY #57430 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #57431 /* ~Der Wachposten antwortet nur mit einem Schniefen.~ */
  IF ~~ THEN REPLY #57432 /* ~"In Ordnung... Ich werde schon jemand anders finden."~ */ EXIT
  IF ~~ THEN REPLY #57433 /* ~Geh weg.~ */ EXIT
END

IF ~  Global("Woff1_Dead_KAPUTZ","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #57434 /* ~Dieser apathische Wachposten scheint entschlossen zu sein, dich vollkommen zu ignorieren.~ */
  IF ~~ THEN REPLY #57435 /* ~Geh weg.~ */ EXIT
END
