// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DEXEC.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DEXEC~

IF ~  Global("Woff1_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #57394 /* ~Diesem grobschlächtigen Kerl scheint die Situation um ihn herum völlig gleichgültig zu sein. Er gähnt, als du näherkommst, und popelt an seinen dreck- oder blutverkrusteten Fingernägeln herum.~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #57395 /* ~"Der Mann ist doch nur ein Sündenbock. Wenn ihr ihn hinrichtet, wird sich das Chaos, durch das die Stadt nach Carzeri hinübergeglitten ist, nur noch verschlimmern. Wir müssen diesem Wahnsinn ein Ende setzen, damit wir Verdammnis dorthin zurückbringen, wo es hingehört... bevor wir *alle* sterben."~ */ GOTO 1
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #57396 /* ~"Der Mann ist doch nur ein Sündenbock. Wenn ihr ihn hinrichtet, wird sich das Chaos, durch das die Stadt nach Carzeri hinübergeglitten ist, nur noch verschlimmern. Wir müssen diesem Wahnsinn ein Ende setzen, damit wir Verdammnis dorthin zurückbringen, wo es hingehört... bevor wir *alle* sterben."~ */ GOTO 1
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #57397 /* ~"Der Mann ist doch nur ein Sündenbock. Wenn ihr ihn hinrichtet, wird sich das Chaos, durch das die Stadt nach Carzeri hinübergeglitten ist, nur noch verschlimmern. Wir müssen diesem Wahnsinn ein Ende setzen, damit wir Verdammnis dorthin zurückbringen, wo es hingehört... bevor wir *alle* sterben."~ */ GOTO 1
  IF ~~ THEN REPLY #57398 /* ~"Ihr könnt diesen Mann nicht hinrichten. Er ist doch nur ein Sündenbock. Es ist *falsch*. Wegen dieser Dinge ist Verdammnis nach Carzeri geglitten... Und diesen Dingen müssen wir ein Ende setzen, um die Stadt der Portale wieder zurück in die Außenländer zu schaffen."~ */ GOTO 1
  IF ~~ THEN REPLY #57399 /* ~"Halt: Ich werde nicht zulassen, daß ihr diesen Mann hinrichtet."~ */ GOTO 2
  IF ~~ THEN REPLY #57400 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2 0.3
  SAY #57401 /* ~Er fällt dir ins Wort, bevor du überhaupt etwas gesagt hast. "Sprich mit dem Richter, Schleifer. Sprich mit dem Richter." Dann betrachtet er wieder seine dreckigen Fingernägel.~ */
  IF ~~ THEN REPLY #57402 /* ~"Nein, ich rede mit *dir*. Du wirst diesen Mann nicht hinrichten."~ */ GOTO 2
  IF ~~ THEN REPLY #57403 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.4 1.0
  SAY #57404 /* ~Er sieht einen Moment von seinen Nägeln auf. "Wenn der Richter sagt, ich soll den Mann töten, dann töte ich ihn... ob du dich dabei mir in den Weg stellen willst oder nicht, das liegt bei *dir*, Schleifer. Du solltest mit dem Richter sprechen."~ */
  IF ~~ THEN REPLY #57405 /* ~Geh weg.~ */ EXIT
END

IF ~  Global("Woff1_Dead_KAPUTZ","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #57406 /* ~Der Henker, dessen Hände mit frischem Blut bedeckt sind, wirft dir einen gelangweilten Blick zu. "Die Dinge nehmen jetzt ihren Lauf, Schleifer. Nichts, was du sagst, kann jetzt noch etwas ändern. Sieh zu, daß du weiterkommst."~ */
  IF ~~ THEN REPLY #57407 /* ~Geh weg.~ */ EXIT
END
