// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDUSTHGG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DDUSTHGG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #66596 /* ~Du triffst auf einen bleichen Staubmenschen, der am Eingangstor zur Leichenhalle Wache steht. Er starrt mit einem entrückten Gesichtsausdruck über die Dächer der Stadt. Als du ihn ansprichst, dreht er sich zu dir um. "Ja?"~ */
  IF ~~ THEN REPLY #66597 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 1
  IF ~~ THEN REPLY #66598 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.4 4.0 5.1 6.0 7.0
  SAY #66599 /* ~Er nickt und wartet.~ */
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66600 /* ~"Ich möchte in die Leichenhalle."~ */ GOTO 2
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66601 /* ~"Ich bin ein Eingeweihter Staubmensch. Ich möchte in die Leichenhalle."~ */ GOTO 3
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #66602 /* ~"Ich suche jemand namens Pharod. Weißt du, wo ich ihn finden könnte?"~ */ JOURNAL #66588 /* ~Einer der Staubmenschen hat mir gesagt, wenn ich Pharod suche, sollte ich mit jemandem namens 'Emoric' in der Bar Zum Staubfänger sprechen, die sich südwestlich vom Eingangstor zur Leichenhalle befindet.~ */ GOTO 5
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #66603 /* ~"Ich suche nach einem verlorenen Journal. Hast du eins gesehen?"~ */ GOTO 7
  IF ~~ THEN REPLY #66604 /* ~"Nichts für ungut. Ich geh dann jetzt. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #66605 /* ~"Was willst du in der Leichenhalle?"~ */
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #66606 /* ~"Ich bin hier, um Deionarra, der Frau in der Nordwestlichen Gedenkhalle, meine Aufwartung zu machen."~ */ GOTO 3
  IF ~  GlobalGT("Dhall","GLOBAL",0)
~ THEN REPLY #66607 /* ~"Ich bin hier, um Dhall zu besuchen."~ */ GOTO 3
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #66608 /* ~"Ich bin wegen einer Totenwache hier. Ich habe gehofft, daß einer der Staubmenschen da drin vielleicht weiß, in welchem Teil der Leichenhalle die Wache abgehalten wird."~ */ GOTO 3
  IF ~~ THEN REPLY #66609 /* ~"Ich hab hier nichts zu erledigen. Ich muß einfach nur hinein."~ */ GOTO 4
  IF ~~ THEN REPLY #66610 /* ~"Eigentlich hätte ich da nur ein paar Fragen..."~ */ GOTO 1
  IF ~~ THEN REPLY #66611 /* ~"Nichts für ungut. Dann geh ich jetzt."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0 2.1 2.2
  SAY #66612 /* ~Er nickt. "Nun denn. Folge mir."~ */
  IF ~~ THEN REPLY #66613 /* ~"Gut..."~ */ DO ~TeleportParty("AR0201",[1190.2578],10)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.3
  SAY #66614 /* ~Er schüttelt den Kopf. "Du hast keine Zugangsberechtigung."~ */
  IF ~~ THEN REPLY #66615 /* ~"Also gut. Ich hätte da noch ein paar Fragen..." ~ */ GOTO 1
  IF ~~ THEN REPLY #66616 /* ~"Dann geh ich eben jetzt. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY #66617 /* ~"Pharod ist ein Sammler." Der Mann mustert dich einen Moment lang. "Wenn du mehr über ihn wissen willst, ich hab gehört, daß Eingeweihter Emoric in der Bar "Zum Staubfänger" ihn auch sucht. Vielleicht kann er dir helfen."~ */
  IF ~  Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #66618 /* ~"Wo befindet sich die Bar "Zum Staubfänger"?"~ */ GOTO 6
  IF ~  GlobalGT("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #66619 /* ~"Ich kenne diese Bar. Bevor ich dorthin gehe, habe ich aber noch ein paar Fragen an dich..."~ */ GOTO 1
  IF ~  GlobalGT("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #66620 /* ~"Die Bar "Zum Staubfänger"? Die befindet sich doch südwestlich von hier, stimmt's? Dann geh ich da hin."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #66621 /* ~"Geh vom Eingangstor zur Leichenhalle in südwestliche Richtung. Sie liegt hinter dem Denkmal."~ */
  IF ~~ THEN REPLY #66622 /* ~"Gut. Ich müßte noch ein paar Fragen loswerden, bevor ich gehe..."~ */ GOTO 1
  IF ~~ THEN REPLY #66623 /* ~"Nun denn, dann will ich diese Bar mal aufsuchen."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.3
  SAY #66624 /* ~Er schüttelt den Kopf. "Nein."~ */
  IF ~~ THEN REPLY #66625 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 1
  IF ~~ THEN REPLY #66626 /* ~"Nun denn. Danke."~ */ EXIT
END
