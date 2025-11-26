// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVVAR3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVVAR3~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #48979 /* ~Du triffst auf eine schlicht aussehende Frau, die verärgert dreinschaut.~ */
  IF ~~ THEN REPLY #48980 /* ~"Sei gegrüßt."~ */ GOTO 2
  IF ~~ THEN REPLY #48981 /* ~Laß die Frau in Ruhe.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #48982 /* ~"Du leidest wohl unter Gedächtnisschwund. Ich habe gesagt, daß ich in Ruhe gelassen werden möchte."~ */
  IF ~~ THEN REPLY #48983 /* ~"Hmm, ich sehe schon. Deine Stimmung hat sich nicht geändert."~ */ GOTO 3
  IF ~~ THEN REPLY #48984 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #48985 /* ~"Gibt's denn nicht einen Ort in dieser Stadt, an dem ich eine Weile allein sein kann?"~ */
  IF ~~ THEN REPLY #48986 /* ~"Warum willst du allein sein?"~ */ GOTO 3
  IF ~~ THEN REPLY #48987 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #48988 /* ~"'Allein' bedeutet 'ohne dich'. Laß mich in Ruhe!"~ */
  IF ~~ THEN REPLY #48989 /* ~"Leb wohl."~ */ EXIT
END
