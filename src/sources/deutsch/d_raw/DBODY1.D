// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBODY1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DBODY1~

IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #20615 /* ~Die Leiche liegt bewegungslos da. Weder Anstoßen noch Schubsen bringt sie dazu, etwas zu sagen oder zu tun.~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #20616 /* ~"Ich schätze mal, dann ist es kein Zombie..."~ */ EXTERN ~DANNAH~ 111
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #54873 /* ~"Ich schätze mal, dann ist es kein Zombie..."~ */ EXIT
END

IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #20617 /* ~Die Leiche zuckt deutlich, als ob sie unter Strom stünde, und ein gasiger Seufzer entschlüpft ihrem Mund.~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #20618 /* ~"Sei gegrüßt."~ */ EXTERN ~DANNAH~ 112
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #20619 /* ~"Wer bist du?"~ */ EXTERN ~DANNAH~ 112
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #20620 /* ~"Ich muß dir ein paar Fragen stellen."~ */ EXTERN ~DANNAH~ 112
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #20621 /* ~"Sei gegrüßt."~ */ GOTO 2
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #20631 /* ~"Wer bist du?"~ */ GOTO 2
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #20632 /* ~"Ich muß dir ein paar Fragen stellen."~ */ GOTO 2
  IF ~~ THEN REPLY #20633 /* ~"Vergiß es."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.3 1.4 1.5
  SAY #20622 /* ~"Nnnngh! Aghhhh..." Die Leiche brabbelt mit ihrer flüssig gewordenen Zunge, und du verstehst kein Wort.~ */
  IF ~~ THEN REPLY #20624 /* ~"Dann vergiß es..."~ */ EXIT
END
