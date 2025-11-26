// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTIT02.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DTIT02~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #43015 /* ~Diese Person inspiziert flüchtig die glockenbehangenen Übungspuppen, die über den ganzen Raum verteilt sind. Als du näher kommst, schaut sie in deine Richtung. "Hmm?"~ */
  IF ~~ THEN REPLY #43016 /* ~"Was ist das für ein Ort?"~ */ GOTO 1
  IF ~~ THEN REPLY #43017 /* ~"Nichts... Bin nur zufälllig vorbeigekommen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #43018 /* ~"Dies ist der Trainingsraum der Diebe. An diesen Puppen dort üben sie, wie man Beutel schneidet und Geldbörsen klaut."~ */
  IF ~  Global("Eli","GLOBAL",0)
~ THEN REPLY #43019 /* ~"Wo ist die Ausbilderin?"~ */ DO ~SetGlobal("Eli","GLOBAL",1)
~ JOURNAL #66872 /* ~Ich habe den Diebeskunst-Trainingsraum in der Städtischen Festhalle gefunden, aber es war kein Lehrer da. Einer der übenden Räuber dort hat mir gesagt, daß Eli Sonnenhut, der Lehrer, kürzlich aus der Festhalle gestürmt ist und höchstwahrscheinlich im Bezirk der Kuratoren zu finden ist. Er hat ihn mir als dünn, mittelgroß, mit dunklen Haaren, dunkler Haut und scharfen Gesichtszügen beschrieben.~ */ GOTO 2
  IF ~  GlobalGT("Eli","GLOBAL",0)
GlobalLT("Eli","GLOBAL",3)
~ THEN REPLY #66873 /* ~"Wo ist die Ausbilderin?"~ */ GOTO 2
  IF ~~ THEN REPLY #43020 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #43021 /* ~"Er irrt jetzt wahrscheinlich gerade durch den Bezirk... Jemand hat ihn so sehr verärgert, daß er aus der Festhalle rannte und fluchte wie ein Verrückter. Er heißt Havelock, Eli Havelock. Er ist schlank, mittelgroß, hat dunkle Haare, dunkle Haut und markante Gesichtszüge."~ */
  IF ~~ THEN REPLY #43022 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END
