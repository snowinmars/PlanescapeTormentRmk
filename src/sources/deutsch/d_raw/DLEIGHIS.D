// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLEIGHIS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DLEIGHIS~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58803 /* ~Du siehst einen älteren Mann in schmutziger Arbeitskleidung. Er blickt dich finster an, als du näherkommst.~ */
  IF ~~ THEN REPLY #58804 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #58805 /* ~Ignoriere ihn.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58806 /* ~Sein Gesicht verfinstert sich noch mehr. "Einen guten Tag, Dussel. Was klapperste mir mit deiner Knochenschüssel ins Ohr? Ich hab zu arbeiten."~ */
  IF ~~ THEN REPLY #58807 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58808 /* ~"Vergiß es. Leb wohl."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.0 5.0 6.0 7.0
  SAY #58809 /* ~Er seufzt. "Mach's kurz, hörste?"~ */
  IF ~~ THEN REPLY #58810 /* ~"Wer bist du?"~ */ GOTO 3
  IF ~~ THEN REPLY #58811 /* ~"Was machst du da?"~ */ GOTO 4
  IF ~~ THEN REPLY #58812 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ GOTO 5
  IF ~~ THEN REPLY #58813 /* ~"Ich suche nach einem Deva. Mir ist zu Ohren gekommen, er sei in Verdammnis."~ */ GOTO 6
  IF ~~ THEN REPLY #58814 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58815 /* ~"Nicht daß es dich was angehn tät, aber ich heiß Leighis."~ */
  IF ~~ THEN REPLY #58816 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58817 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #58818 /* ~Er schnaubt verächtlich. "Da plausch ich mit einem verdammten Narren, wenn ich eigentlich was schaffen sollt..."~ */
  IF ~~ THEN REPLY #58819 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58820 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY #58821 /* ~Er sieht sich um. "Es wird wohl 'n Lager sein, du Volldussel. Was mußt du denn sonst noch darüber wissen, hä?"~ */
  IF ~~ THEN REPLY #58822 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58823 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.3
  SAY #58824 /* ~Er sieht dich ernst an und schüttelt den Kopf. "Du suchst in Verdammnis nach 'nem Deva!" Er lacht dich aus. "Da kannste genauso gut nach 'ner Jungfrau in 'nem Puff suchen, da hättste wahrscheinlich mehr Glück, Dussel."~ */
  IF ~~ THEN REPLY #58825 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58826 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from:
  SAY #58827 /* ~Du siehst Leighis, den Lagerarbeiter. Er blickt dich finster an, als du näherkommst. "Du schon wieder. Was willste?"~ */
  IF ~~ THEN REPLY #58828 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58829 /* ~"Nichts. Leb wohl."~ */ EXIT
END
