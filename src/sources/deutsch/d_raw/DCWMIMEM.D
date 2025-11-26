// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWMIMEM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWMIMEM~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #49756 /* ~Dieser Herr verfolgt mit einem verwirrten Gesichtsausdruck aufmerksam die Darbietung eines Pantomimen.~ */
  IF ~~ THEN REPLY #49757 /* ~"Sei gegrüßt..."~ */ GOTO 1
  IF ~~ THEN REPLY #49758 /* ~Laß den Mann in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49759 /* ~Der Mann dreht sich zu dir um, aber der Pantomime bindet immer noch einen Großteil seiner Aufmerksamkeit. "Komisch, nicht? Armer Kerl!"~ */
  IF ~~ THEN REPLY #49760 /* ~"Was ist denn los?"~ */ DO ~SetGlobal("Know_Salabesh","AR0600",1)
~ GOTO 4
  IF ~~ THEN REPLY #49761 /* ~"Vergiß es. Ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #49762 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 4.0
  SAY #49763 /* ~Er beobachtet weiter den schweigenden, schwarz gekleideten Mann und antwortet dir mit einem Kopfschütteln. "Bitte nicht jetzt, mein Herr! Lebt wohl."~ */
  IF ~~ THEN REPLY #49764 /* ~"Moment... Sag mir wenigstens, was hier los ist."~ */ DO ~SetGlobal("Know_Salabesh","AR0600",1)
~ GOTO 4
  IF ~~ THEN REPLY #49765 /* ~"Ich hätte da nur ein paar klitzekleine Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #49766 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #49767 /* ~"Also wirklich, mein Herr, jetzt reicht's! Ich bin sicher, daß es hier genug andere Leute gibt, mit denen Ihr sprechen könnt. Jetzt laßt mich das hier in Ruhe anschauen, ja? Lebt wohl."~ */
  IF ~~ THEN REPLY #49768 /* ~"Moment... Sag mir wenigstens, was hier los ist."~ */ DO ~SetGlobal("Know_Salabesh","AR0600",1)
~ GOTO 4
  IF ~~ THEN REPLY #49769 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 2.0 3.0
  SAY #49770 /* ~"Nun, wie Ihr seht... ist dieser Mann ein Pantomime. Bei seiner Darbietung imitiert er ohne Worte auf verschiedenste Weise sowohl Körperbewegungen - indem er so tut, als würde er an einem Seil ziehen oder in einem Käfig gefangen sein - als auch Passanten. Vorhin hat er sich über den komischen Gang eines vorbeigehenden Magiers lustig gemacht und scheint jetzt verflucht zu sein. Er ist jetzt offensichtlich *tatsächlich* in einer unsichtbaren Kiste gefangen und kann nicht sprechen. So eine Ironie, was?"~ */
  IF ~~ THEN REPLY #49771 /* ~"Ein bißchen schon. Ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #49772 /* ~"Das ist schon merkwürdig. Leb wohl."~ */ EXIT
END
