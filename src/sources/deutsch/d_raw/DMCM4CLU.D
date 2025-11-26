// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCM4CLU.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCM4CLU~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37727 /* ~Du siehst einen unauffälligen Mann. Er scheint nichts anderes als ein weiterer Marktkunde zu sein. Er geht zwischen den anderen Einkäufern mit gelangweilter Miene umher.~ */
  IF ~~ THEN REPLY #37737 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #37738 /* ~Ignoriere ihn.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37728 /* ~Er dreht sich bei deinem Gruß in deine Richtung, und sein Ausdruck der Langeweile nimmt noch zu. "Ja..."~ */
  IF ~~ THEN REPLY #37739 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37740 /* ~"Ach, egal."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.0 5.0 6.0
  SAY #37729 /* ~Er sieht dich etwas irritiert an. "Von mir aus..."~ */
  IF ~  !Global("AR0508_Visited","GLOBAL",1)
Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37741 /* ~"Ich suche jemanden namens Lothar. Man nennt ihn auch den Herrn der Knochen..."~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37742 /* ~"Mir wurde ein Schädel gestohlen. Weißt du zufällig, wer so etwas tun würde?"~ */ GOTO 4
  IF ~~ THEN REPLY #37743 /* ~"Wo kann ich Waffen kaufen?"~ */ GOTO 5
  IF ~~ THEN REPLY #37744 /* ~"Wo kann ich magische Gegenstände kaufen?"~ */ GOTO 5
  IF ~~ THEN REPLY #37745 /* ~"Was kannst du mir über diesen Bezirk erzählen?"~ */ GOTO 6
  IF ~~ THEN REPLY #37746 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37730 /* ~"Nie von ihm gehört. An den Titel *Herr der Knochen* würde ich mich erinnern. So was vergißt man nicht." Er sieht auch weiter irritiert aus.~ */
  IF ~~ THEN REPLY #37747 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37748 /* ~"Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #37731 /* ~Er starrt dich einen Moment lang an. "Du suchst einen Totenschädel... na, mal was ganz Neues. Man sollte doch denken, daß sich die Diebe von Sigil mit wertvolleren Dingen davonmachen würden. Keine Ahnung, was ich dazu sagen sollte." Er zuckt die Achseln.~ */
  IF ~~ THEN REPLY #37749 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37750 /* ~"Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2 2.3
  SAY #37732 /* ~Er sieht dich gelangweilt an und dann über den Markt. "Genau hier, Schleifer." Er macht eine vage Geste. "Nimm dir einfach die Zeit, die Händler zu fragen. Ich bin sicher, du wirst finden, was du brauchst."~ */
  IF ~~ THEN REPLY #37751 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37752 /* ~"Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.4
  SAY #37733 /* ~Er seufzt. "Da gibt's nicht viel zu erzählen... aber es ist das einzige Zuhause, daß ich je haben werde. Sollte es also lieben lernen, schätze ich, da ich hier eh nicht wegkomme."~ */
  IF ~~ THEN REPLY #37753 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37754 /* ~"Auf bald."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from:
  SAY #37734 /* ~Als du ihn ansprichst, dreht er sich um und runzelt die Stirn. "Ich habe dir bereits etwas von meiner Zeit geschenkt. Mehr werd ich dir nicht geben, Schleifer." Er dreht sich von dir weg.~ */
  IF ~~ THEN REPLY #37735 /* ~Geh.~ */ EXIT
END
