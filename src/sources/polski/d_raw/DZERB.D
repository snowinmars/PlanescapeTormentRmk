// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZERB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DZERB~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #51192 /* ~Ten olbrzymi stwór ma ponad dwa i pół metra wzrostu. Napięte mięśnie opinają jego sylwetkę. Wydaje się, że jest pogrążony w rozmowie z dwoma podobnymi do niego stworami znajdującymi się tuż obok niego.~ */
  IF ~~ THEN REPLY #51193 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #51194 /* ~Zignoruj tego stwora.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #51195 /* ~Słysząc twoje powitanie odwraca się i zaczyna rozglądać. Po chwili patrzy w dół i dostrzega cię. Na jego twarzy pojawia się zakłopotanie. "Czego ty chcieć od Zerba?"~ */
  IF ~~ THEN REPLY #51196 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #51197 /* ~"Nic. Żegnaj.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0
  SAY #51198 /* ~Patrzy na ciebie skruszony i kręci przecząco głową. "Zerb nie mówić językiem dobrze. Wybacz, ty rozmawiać z Thorpem." Wskazuje skinieniem ręki na jednego ze stworów znajdujących się obok niego.~ */
  IF ~~ THEN REPLY #51199 /* ~"W porządku. Dziękuję."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 4 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #51200 /* ~Zauważasz Zerba. Patrzy w dół na ciebie i uśmiecha się. "Zerb witać cię znów."~ */
  IF ~~ THEN REPLY #51201 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #51202 /* ~"Nic to. Żegnaj."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Barsh_Abishai","GLOBAL",4)
~ THEN BEGIN 4 // from:
  SAY #51203 /* ~Zauważasz Zerba. Patrzy w dół na ciebie i uśmiecha się. "Zerb witać cię, przyjacielu. Zerb dziękować za uratowanie życia." Odwraca się od ciebie.~ */
  IF ~~ THEN REPLY #51204 /* ~Odejdź.~ */ EXIT
END
