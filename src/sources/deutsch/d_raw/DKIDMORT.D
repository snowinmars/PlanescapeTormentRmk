// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKIDMORT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DKIDMORT~

IF ~  Global("Morte_Stolen","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #28709 /* ~"Den Mächten sei dank, daß du hier bist, Meister. Hol mich hier raus!"~ */
  IF ~  Global("KidMorte_Talk","AR0508",0)
~ THEN REPLY #28719 /* ~"Was tust du da oben?"~ */ DO ~SetGlobal("KidMorte_Talk","AR0508",1)
~ GOTO 1
  IF ~  Global("KidMorte_Talk","AR0508",0)
~ THEN REPLY #28720 /* ~"Warum?"~ */ DO ~SetGlobal("KidMorte_Talk","AR0508",1)
~ GOTO 1
  IF ~  GlobalGT("KidMorte_Talk","AR0508",0)
~ THEN REPLY #28721 /* ~"Ich bin schon dabei, Morte, bin schon dabei."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1
  SAY #28710 /* ~"Dieses Werratten-Gesindel hat mich in der schwangeren Gasse gekidnappt und hierher gebracht! Komm schon, Meister... wir müssen hier raus! Dieser Ort verheißt nichts Gutes!"~ */
  IF ~~ THEN REPLY #28722 /* ~"Wieso schwebst du nicht einfach runter?"~ */ GOTO 2
  IF ~~ THEN REPLY #28723 /* ~"Irgendwie sieht's da oben aber richtig gemütlich aus..."~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #28711 /* ~"Ich kann nicht! Ich hab's schon probiert! Komm schon, hol mich hier runter, bevor..."~ */
  IF ~~ THEN DO ~SetGlobal("KidMorte_Speak","AR0508",1)
StartCutSceneMode()
StartCutSceneEx("0508cs1",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #28712 /* ~"Hör mit dem Quatsch auf, Meister...wir müssen hier raus, bevor..."~ */
  IF ~~ THEN DO ~SetGlobal("KidMorte_Speak","AR0508",1)
StartCutSceneMode()
StartCutSceneEx("0508cs1",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #28713 /* ~"Oh... nein." Morte flüstert wütend auf dich ein. "Beleidige diesen Typen BLOSS nicht, Meister... der steckt dich schneller ins Totenbuch als du spucken kannst."~ */
  IF ~~ THEN EXTERN ~DLOTHAR~ 23
END

IF ~~ THEN BEGIN 5 // from:
  SAY #28714 /* ~Morte spricht lauter. Seine Stimme klingt kleinlaut, ängstlich und respektvoll. Für Morte liegt es auf der Hand, daß mit diesem Lothar nicht gut Kirschen essen ist. "Der meint mich. Bitte, mein Herr, laßt mich einfach frei und wir lassen es dabei bewenden. Okay?"~ */
  IF ~~ THEN EXTERN ~DLOTHAR~ 51
END

IF ~~ THEN BEGIN 6 // from:
  SAY #28715 /* ~Morte spricht lauter. "Er meint mich. Schaut, mein Herr, Ihr laßt mich frei und wir lassen es dabei bewenden. Okay?"~ */
  IF ~~ THEN EXTERN ~DLOTHAR~ 51
END

IF ~~ THEN BEGIN 7 // from:
  SAY #28716 /* ~"Mir reicht sein Wort, Meister, und ich bin derjenige, der hier festsitzt. Laß es gut sein, ja? Besorg einfach den Schädel und hol mich hier raus."~ */
  IF ~~ THEN REPLY #28724 /* ~"Na gut. Lothar, ich komm zurück und hol ihn ab. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #28725 /* ~"MIR reicht's aber nicht, Morte. Ich kämpfe mit dir um ihn, Lothar."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from:
  SAY #28717 /* ~"Tu's nicht, Meister! Er macht dich fertig!" Morte klingt völlig verängstigt. "Er ist eins von den höchsten Tieren im ganzen verdammten Käfig!"~ */
  IF ~~ THEN REPLY #28726 /* ~"Na und? Laß ihn frei, Lothar."~ */ EXTERN ~DLOTHAR~ 18
  IF ~~ THEN REPLY #28727 /* ~"In Ordnung. Ich komm wieder und hol ihn hier raus, Lothar."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY #28718 /* ~"Meister, treib's nicht zu weit! Laß es gut sein!"~ */
  IF ~~ THEN EXTERN ~DLOTHAR~ 34
END

IF ~  Global("Morte_Stolen","GLOBAL",0)
~ THEN BEGIN 10 // from:
  SAY #54289 /* ~Dies ist ein staubfreies Regal, mit einem leeren Platz - von der Größe eines Schädels - zwischen zwei grinsenden Schädeln.~ */
  IF ~~ THEN REPLY #54292 /* ~Laß es in Ruhe.~ */ EXIT
END

IF ~  GlobalGT("Morte_Stolen","GLOBAL",1)
~ THEN BEGIN 11 // from:
  SAY #54290 /* ~Dies ist ein staubfreies Regal mit einer leeren - schädelgroßen - Fläche zwischen zwei grinsenden Totenköpfen.~ */
  IF ~~ THEN REPLY #54291 /* ~Laß es in Ruhe.~ */ EXIT
END
