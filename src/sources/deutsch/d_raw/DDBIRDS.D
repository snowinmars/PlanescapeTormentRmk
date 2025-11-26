// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDBIRDS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DDBIRDS~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #31493 /* ~Mehrere Scherben aus schwarzem Kristall oder Eis wirbeln in dem eiskalten Wind, der aus dem reich verzierten Sockel strömt. Alle Scherben scheinen extrem scharfe Kanten zu haben. Eine zu berühren oder gar zu fangen könnte gefährlich sein. Auf einer Tafel am Sockel steht: "Die Dunklen Vögel von Okanthus".~ */
  IF ~~ THEN REPLY #31494 /* ~Geh weiter.~ */ DO ~SetGlobal("View_Art_DBirds","AR0608",1)
~ EXIT
  IF ~~ THEN REPLY #31495 /* ~Berühre eine Scherbe.~ */ DO ~SetGlobal("View_Art_DBirds","AR0608",1)
~ GOTO 1
  IF ~~ THEN REPLY #31496 /* ~Fang eine Scherbe.~ */ DO ~SetGlobal("View_Art_DBirds","AR0608",1)
~ GOTO 4
  IF ~  PartyHasItem("DwfMug")
Global("CW_Caught_Bird","AR0608",0)
~ THEN REPLY #31497 /* ~Fang einen in deinem Eisbierhumpen.~ */ DO ~SetGlobal("View_Art_DBirds","AR0608",1)
SetGlobal("CW_Caught_Bird","AR0608",1)
DestroyPartyItem("DwfMug",FALSE)
GiveItemCreate("DwfMug2",Protagonist,1,0,0)
~ GOTO 8
END

IF ~~ THEN BEGIN 1 // from: 0.1 4.1
  SAY #31498 /* ~Als du den Arm ausstreckst, um eine der umherwirbelnden Scherben zu berühren, gelangen deine Finger in den eisigen Wind, der aus dem Sockel strömt. Sofort bildet sich eine betäubende Eisschicht um deinen Finger und du ziehst deine Hand schnell zurück.~ */
  IF ~~ THEN REPLY #31499 /* ~Geh weiter.~ */ EXIT
  IF ~  HPLT(Protagonist,3)
~ THEN REPLY #31500 /* ~Streck deine Hand wieder aus und berühre eine Scherbe.~ */ GOTO 2
  IF ~  HPGT(Protagonist,2)
~ THEN REPLY #31501 /* ~Streck deine Hand wieder aus und berühre eine Scherbe.~ */ DO ~Damage(Protagonist,LOWER,2)
~ GOTO 3
  IF ~~ THEN REPLY #31502 /* ~Fang eine Scherbe.~ */ GOTO 4
  IF ~  PartyHasItem("DwfMug")
Global("CW_Caught_Bird","AR0608",0)
~ THEN REPLY #31503 /* ~Fang einen in deinem Eisbierhumpen.~ */ DO ~SetGlobal("CW_Caught_Bird","AR0608",1)
DestroyPartyItem("DwfMug",FALSE)
GiveItemCreate("DwfMug2",Protagonist,1,0,0)
~ GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #31504 /* ~Du hältst einen Finger in den eiskalten Wind. Du hast es noch gar nicht wahrgenommen, aber dein Zeigefinger ist schon steif vor Kälte. Als eine der schwarzen Scherben gegen ihn fliegt, bricht deine Fingerspitze mit einem lauten *Knacken* ab und schlittert über den Boden der Galerie. Eine normalerweise völlig ungefährliche Wunde, aber weil du sowieso schon schwer angeschlagen bist, ist sie für dich tödlich.~ */
  IF ~~ THEN REPLY #31505 /* ~Brich zusammen und stirb.~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY #31506 /* ~Du hältst einen Finger in den eiskalten, betäubenden Wind. Ohne daß du es bemerkst, wird dein Zeigefinger steif vor Kälte. Als eine der schwarzen Scherben gegen ihn fliegt, bricht deine Fingerspitze mit einem lauten *Knacken* ab und schlittert über den Boden der Galerie. Die eisigen Dunklen Vögel bleiben in ihrer wirbelnden Umlaufbahn, während du darauf wartest, daß deine Fingerspitze nachwächst.~ */
  IF ~  PartyHasItem("DwfMug")
Global("CW_Caught_Bird","AR0608",0)
~ THEN REPLY #31507 /* ~Fang einen in deinem Eisbierhumpen.~ */ DO ~SetGlobal("CW_Caught_Bird","AR0608",1)
DestroyPartyItem("DwfMug",FALSE)
GiveItemCreate("DwfMug2",Protagonist,1,0,0)
~ GOTO 8
  IF ~~ THEN REPLY #31508 /* ~Geh weg und bete, daß keiner was gesehen hat.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2 1.3
  SAY #31509 /* ~Als du den Arm ausstreckst, um eine der umherwirbelnden Scherben zu fangen, gelangen deine Finger in den eisigen Wind, der aus dem Sockel strömt. Sofort bildet sich eine betäubende Eisschicht um deine Finger und du ziehst deine Hand schnell zurück.~ */
  IF ~~ THEN REPLY #31510 /* ~Geh weiter.~ */ EXIT
  IF ~~ THEN REPLY #31511 /* ~Berühre eine Scherbe.~ */ GOTO 1
  IF ~  HPLT(Protagonist,6)
~ THEN REPLY #31512 /* ~Streck deine Hand wieder aus und fange eine Scherbe.~ */ GOTO 5
  IF ~  HPGT(Protagonist,5)
~ THEN REPLY #31513 /* ~Streck deine Hand wieder aus und fange eine Scherbe.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 6
  IF ~  PartyHasItem("DwfMug")
Global("CW_Caught_Bird","AR0608",0)
~ THEN REPLY #31514 /* ~Fang einen in deinem Eisbierhumpen.~ */ DO ~SetGlobal("CW_Caught_Bird","AR0608",1)
DestroyPartyItem("DwfMug",FALSE)
GiveItemCreate("DwfMug2",Protagonist,1,0,0)
~ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 4.2
  SAY #31515 /* ~Du streckst deine Hand in den eiskalten, betäubenden Wind. Ohne daß du es bemerkst, wird deine ganze Hand steif vor Kälte, als du sie um einen der Dunklen Vögel legst. Als noch eine schwarze Scherbe gegen deine Faust fliegt, bricht deine Hand mit einem lauten *Knacken* am Handgelenk ab und scheppert über den Boden der Galerie. Sowieso schon stark angeschlagen, brichst du zusammen und stirbst.~ */
  IF ~~ THEN REPLY #31516 /* ~Stirb.~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.3
  SAY #31517 /* ~Du streckst deine Hand in den eiskalten, betäubenden Wind. Ohne daß du es bemerkst, wird deine ganze Hand steif vor Kälte, als du sie um einen der Dunklen Vögel legst. Als noch eine schwarze Scherbe gegen deine Faust fliegt, bricht deine Hand mit einem lauten *Knacken* am Handgelenk ab und scheppert über den Boden der Galerie.
~ */
  IF ~~ THEN REPLY #31518 /* ~Heb deine Hand schnell wieder auf und setze sie auf deinen Stumpf!~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #31519 /* ~Du hebst die frostbedeckte Faust auf und steckst sie auf deinen blutenden Stumpf. Dabei fällt dir auf, daß der Dunkle Vogel, den du gegriffen hattest - eine messerscharfe Scherbe aus schwarzem Eis - bereits geschmolzen ist, so daß nichts mehr von ihm übrig ist. Es scheint, daß du ihn in etwas fangen mußt, worin er kalt gehalten wird. Mit der Zeit kehren Wärme und Gefühl in deine Hand zurück, als dein Gewebe wieder auftaut und sich regeneriert.~ */
  IF ~  PartyHasItem("DwfMug")
Global("CW_Caught_Bird","AR0608",0)
~ THEN REPLY #31520 /* ~Fang einen in deinem Eisbierhumpen.~ */ DO ~SetGlobal("CW_Caught_Bird","AR0608",1)
DestroyPartyItem("DwfMug",FALSE)
GiveItemCreate("DwfMug2",Protagonist,1,0,0)
~ GOTO 8
  IF ~~ THEN REPLY #31521 /* ~Geh weg und bete, daß keiner was gesehen hat.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.3 1.4 3.0 4.4 7.0
  SAY #31522 /* ~Du 'tauchst' den Humpen in den eisigen Wind, der aus dem Sockel strömt, und fängst mit einem leisen *Scheppern* eine kleine Scherbe. Als du in den Humpen schaust, siehst du, daß der Dunkle Vogel eine extrem scharfe Scherbe aus schwarzem Eis ist. Nur die magischen Eigenschaften des Bechers verhindern, daß die Scherbe schmilzt.~ */
  IF ~~ THEN REPLY #31523 /* ~Geh.~ */ EXIT
END
