// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDEADDAB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DDEADDAB~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #61682 /* ~Du siehst den Leichnam eines Dabus. Der Gestank der Verwesung ist unerträglich, und seiner steifen, unnatürlichen Haltung zufolge hat die Totenstarre bereits vor einiger Zeit eingesetzt.~ */
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
GlobalLT("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #61683 /* ~Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.~ */ DO ~SetGlobal("Know_Dead_Dabus","GLOBAL",1)
~ GOTO 2
  IF ~  GlobalLT("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #61684 /* ~Untersuche die Leiche, versuche festzustellen, was sie getötet hat.~ */ DO ~SetGlobal("Know_Dead_Dabus","GLOBAL",1)
~ GOTO 1
  IF ~  GlobalLT("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #61685 /* ~Geh weg.~ */ DO ~SetGlobal("Know_Dead_Dabus","GLOBAL",1)
~ EXIT
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #61686 /* ~Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.~ */ GOTO 2
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #61687 /* ~Untersuche die Leiche, versuche festzustellen, was sie getötet hat.~ */ GOTO 1
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #61688 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.4
  SAY #61689 /* ~Als du die Leiche berührst, läuft eine plötzliche Erschütterung durch deinen Körper, in der Luft herrscht Bewegung, als wäre ein Wind in das Gebäude geraten und versuchte, sich zu befreien. Du spürst einen seltsamen, starken Schmerz in deinem Schädel, als ob jemand mit scharfen, verzweifelten Schlägen auf ihm herumhämmert.~ */
  IF ~~ THEN REPLY #61690 /* ~Versuche, dich zu konzentrieren...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 3
  IF ~~ THEN REPLY #61691 /* ~Schüttele die Wirkung ab und entferne dich etwas von der Leiche. ~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 0.3
  SAY #61692 /* ~Als du mit deiner Kraft die Hand ausstreckst, bewegt sich etwas in der Luft, und die Leiche des Dabus veschwimmt einen Moment lang. Du spürst einen seltsamen, starken Schmerz in deinem Schädel, als ob jemand mit scharfen, verzweifelten Schlägen auf ihm herumhämmert.~ */
  IF ~~ THEN REPLY #61693 /* ~Versuche, dich zu konzentrieren...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 3
  IF ~~ THEN REPLY #61694 /* ~Schüttele die Wirkung ab und entferne dich etwas von der Leiche. ~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #61695 /* ~Dir wird vorübergehend schwarz vor Augen, dann schwindet der hämmernde Schmerz, bis er so klingt, als käme er von außerhalb deines Schädels - die Dunkelheit verzieht sich und du hörst, daß das Hämmern von außerhalb des Gebäudes kommt. Das ganze Gebäude wirkt irgendwie neblig, verschommen, als würdest du es durch Dunst sehen.~ */
  IF ~~ THEN REPLY #61696 /* ~Konzentriere dich weiter auf die Vision...~ */ GOTO 4
  IF ~~ THEN REPLY #61697 /* ~Schüttele die Wirkung ab und entferne dich etwas von der Leiche. ~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #61698 /* ~Das Hämmern verstummt, und plötzlich siehst du eine geisterhafte Version des Dabus in das Gebäude kommen. Die Fenster und Türen werden zu etwas wie Wasser und verschließen plötzlich den Eingang, durch den der Dabus gekommen ist. Der Dabus dreht sich um, hält inne und beginnt dann, langsam den Raum zu umkreisen, wobei er die Wände untersucht und auf jede einmal hämmert, als wolle er sie prüfen.~ */
  IF ~~ THEN REPLY #61699 /* ~Konzentriere dich weiter auf die Vision...~ */ GOTO 5
  IF ~~ THEN REPLY #61700 /* ~Schüttele die Wirkung ab und entferne dich etwas von der Leiche. ~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #61701 /* ~Der Dabus beendet seinen Gang durch den Raum und hält an der "Tür" an, durch die er zuvor hereingekommen war. Er beginnt zu hämmern, meißelt den Stein weg, aber mit jedem Schlag repariert die Mauer sich selbst. Dir wird schwarz vor Augen, das Hämmern geht weiter, zuerst in gleichmäßigem Tempo, dann langsamer, dann langsamer...~ */
  IF ~  Global("Know_Dead_Dabus","GLOBAL",1)
~ THEN REPLY #61702 /* ~Konzentriere dich weiter auf die Vision...~ */ DO ~SetGlobal("Know_Dead_Dabus","GLOBAL",2)
AddexperienceParty(1000)
~ GOTO 6
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #61703 /* ~Konzentriere dich weiter auf die Vision...~ */ GOTO 6
  IF ~~ THEN REPLY #61704 /* ~Schüttele die Wirkung ab und entferne dich etwas von der Leiche. ~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1
  SAY #61705 /* ~Als das Hämmern aufhört, siehst du wieder klar, und du stehst wieder neben der Leiche des Dabus... Sie sieht aus, als sei der Dabus hier verendet, gefangen in dem Gebäude.~ */
  IF ~~ THEN REPLY #61706 /* ~Verlasse die Leiche des Dabus.~ */ EXIT
END
