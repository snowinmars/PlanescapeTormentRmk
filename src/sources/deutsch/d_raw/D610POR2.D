// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D610POR2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~D610POR2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #48820 /* ~Der Bogen wird von einem knorrigen Ast gebildet, der aus dem Boden des Irrgangs emporgewachsen ist und sich dann zu einem Bogen gekrümmt hat. Als du vor den Bogen hintrittst, leuchtet der Bereich unter dem Bogen sanft... Er scheint in einen merkwürdigen Dornengarten zu führen. ~ */
  IF ~  Global("AR0610_Secret_Portal_2","AR0610",1)
~ THEN REPLY #48821 /* ~Geh auf die linke Seite des Bogens, kratze die Borke mit deinen Fingernägeln ab, und geh dann durch das Portal.~ */ DO ~SetGlobal("to0610B_Active","AR0610",1)
SetPortalCursor("TO0610B",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("TO0610B",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  Global("AR0610_Secret_Portal_2","AR0610",0)
~ THEN REPLY #48822 /* ~Untersuche den Durchgang.~ */ GOTO 1
  IF ~~ THEN REPLY #51442 /* ~Laß den Dornenbogen in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #51436 /* ~Als du den natürlichen Bogen untersuchst, bemerkst du, daß die linke Seite des Stamms eingekerbt ist, als ob jemand mit einem Messer mehrere Markierungen eingeritzt hat. Die Kerben sehen jedoch nicht so aus, als ob sie von einem Messer stammen... Sie sehen aus wie Kratzspuren von jemandes Krallen.~ */
  IF ~~ THEN REPLY #51437 /* ~Kratz den Baumstamm mit deinen Fingernägeln, beobachte, was passiert.~ */ DO ~SetGlobal("AR0610_Secret_Portal_2","AR0610",1)
~ GOTO 2
  IF ~~ THEN REPLY #51438 /* ~Laß den Dornenbogen in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #51439 /* ~Du drückst deine Fingernägel in die Rinde, und zu deiner Überraschung gibt das Holz unter deinen Nägeln nach wie ein Schwamm. Du gräbst die Fingernägel durch die Außenseite des dornigen Baums. Daraufhin wird das Schimmern unter dem Bogen heller, als wolle es dich auffordern, hindurchzugehen.~ */
  IF ~~ THEN REPLY #51440 /* ~Geh durch den Bogen.~ */ DO ~SetGlobal("to0610B_Active","AR0610",1)
SetPortalCursor("TO0610B",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("TO0610B",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #51441 /* ~Laß den Dornenbogen in Ruhe.~ */ EXIT
END
