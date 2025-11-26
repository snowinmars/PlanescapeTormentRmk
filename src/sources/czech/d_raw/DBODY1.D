// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBODY1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DBODY1~

IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #20615 /* ~Mrtvola leží bez hnutí. Ať do ní rýpeš, jak chceš, nepromluvila a ani nic neudělala.~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #20616 /* ~"Hmm, tak to asi nakonec nebude zombie..."~ */ EXTERN ~DANNAH~ 111
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #54873 /* ~"Tak to asi nebude zombie..."~ */ EXIT
END

IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #20617 /* ~Mrtvola sebou škubla, jakoby jí projel elektrický proud, z úst unikl syčivý vzdech.~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #20618 /* ~"Zdravím."~ */ EXTERN ~DANNAH~ 112
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #20619 /* ~"Kdo jsi?"~ */ EXTERN ~DANNAH~ 112
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #20620 /* ~"Potřebuju se tě na něco zeptat."~ */ EXTERN ~DANNAH~ 112
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #20621 /* ~"Zdravím."~ */ GOTO 2
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #20631 /* ~"Kdo jsi?"~ */ GOTO 2
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #20632 /* ~"Potřebuju se tě na něco zeptat."~ */ GOTO 2
  IF ~~ THEN REPLY #20633 /* ~"Zapomeň na to."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.3 1.4 1.5
  SAY #20622 /* ~"Nnnngh! Aghhhh..." Mrtvola něco blábolí, ale ty jí nerozumíš ani slovo.~ */
  IF ~~ THEN REPLY #20624 /* ~"Tak na to zapomeň..."~ */ EXIT
END
