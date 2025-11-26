// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBODY1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DBODY1~

IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #20615 /* ~Ciało leży bez ruchu. Niezależnie od tego jak bardzo je szturchasz i popychasz, nie odzywa się.~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #20616 /* ~"W takim razie wydaje mi się, że to nie jest zombie..."~ */ EXTERN ~DANNAH~ 111
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #54873 /* ~"W takim razie wydaje mi się, że to nie jest zombie..."~ */ EXIT
END

IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #20617 /* ~Ciało wzdryga się widocznie, jakby przebiegł je impuls elektryczny, a z jego ust wydostaje się westchnienie.~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #20618 /* ~"Witaj."~ */ EXTERN ~DANNAH~ 112
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #20619 /* ~"Kim jesteś?"~ */ EXTERN ~DANNAH~ 112
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #20620 /* ~"Chcę zadać ci kilka pytań."~ */ EXTERN ~DANNAH~ 112
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #20621 /* ~"Witaj."~ */ GOTO 2
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #20631 /* ~"Kim jesteś?"~ */ GOTO 2
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #20632 /* ~"Chcę zadać ci kilka pytań."~ */ GOTO 2
  IF ~~ THEN REPLY #20633 /* ~"Zapomnij."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.3 1.4 1.5
  SAY #20622 /* ~"Nnnng! Aghhhh..." Mamrocze ciało swoim płynnym językiem, a ty nie jesteś w stanie zrozumieć ani słowa.~ */
  IF ~~ THEN REPLY #20624 /* ~"Zapomnij..."~ */ EXIT
END
