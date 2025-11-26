// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCODEXI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCODEXI~

IF ~  Global("CodexI","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #50399 /* ~Was du zunächst für ein ziemlich bescheidenes Buch gehalten hast, das durch ein winziges Messingschloß geschlossengehalten wird, ist in Wirklichkeit in merkwürdiges Leder und Zauberbronze gebunden. Es trägt den schlichten Titel: 'Kodex des Unfaßbaren'.~ */
  IF ~~ THEN REPLY #50400 /* ~Öffne es... und lies!~ */ DO ~SetGlobal("CodexI","GLOBAL",1)
GiveExperience(Protagonist,1000)
~ GOTO 1
  IF ~~ THEN REPLY #50401 /* ~Leg das Buch ehrfürchtig weg.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #50402 /* ~Du öffnest den Bucheinband und schlägst das Buch auf. Als du den Inhalt des Bandes überfliegst, klappt dir die Kinnlade herunter. Du stehst wie verzaubert da und blätterst schnell durch die Seiten. Der Inhalt des Buches ist einfach unbeschreiblich. Bloße Worte reichen nicht aus, um die Wunder zu beschreiben, die es enthält.~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #50403 /* ~"Das war... das... ich..."~ */ EXTERN ~DMORTE~ 500
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #50405 /* ~"Das war... das... ich..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #50406 /* ~Du stehst einen Moment lang nachdenklich da und schaust auf den Kodex. Dann legst du den Band ehrfürchtig beiseite.~ */
  IF ~~ THEN REPLY #50407 /* ~Geh weg.~ */ EXIT
END

IF ~  Global("CodexI","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #50408 /* ~Der Kodex des Unfaßbaren ist in merkwürdiges Leder und Zauberbronze gebunden. Sein Inhalt ist einfach unbeschreiblich. Bloße Worte reichen nicht aus, um die Wunder zu beschreiben, die er enthält.~ */
  IF ~~ THEN REPLY #50409 /* ~Leg das Buch ehrfürchtig weg.~ */ EXIT
END
