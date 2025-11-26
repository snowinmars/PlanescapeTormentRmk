// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DNONAME.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DNONAME~

IF ~  Global("NoName","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #23470 /* ~Die verwesende Frauenleiche schüttelt mit dem Kopf und bringt ein trauriges Seufzen hervor. Als du dich näherst, dreht sie sich jedoch um und streckt ihre Hände nach dir aus, als ob sie dich um Hilfe bitten möchte.~ */
  IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN REPLY #23518 /* ~"Sei gegrüßt..."~ */ DO ~SetGlobal("NoName","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #23519 /* ~"Sei gegrüßt..."~ */ DO ~SetGlobal("NoName","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #23520 /* ~Laß den Zombie in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 18.1
  SAY #23491 /* ~Die Zombie-Frau stöhnt leise eine Antwort: "Ggnhuuu... fnnnnuuugh?" Jeder Atemzug erfüllt die Luft mit dem Gestank verwesenden Fleisches.~ */
  IF ~~ THEN REPLY #23521 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #23522 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #23492 /* ~"Stuuuhhh... mmmaaa-uuhrrr?" Du kannst das Stöhnen der Zombie-Frau nicht verstehen, doch es scheint so, als ob sie dich etwas fragen will.~ */
  IF ~~ THEN REPLY #23523 /* ~"Ich kann dich nicht verstehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 18.0
  SAY #23493 /* ~Der Zombie stöhnt leise eine Antwort. Nur dank deiner Fähigkeit, dich mit den Toten unterhalten zu können, kannst du sie verstehen: "Naaame? Mmmein nnnaaame?"~ */
  IF ~~ THEN REPLY #23524 /* ~"Nein... bist du deshalb so verzweifelt?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_NoName_1","GLOBALGood",1)
~ GOTO 4
  IF ~~ THEN REPLY #23525 /* ~"Nein. Sollte ich?"~ */ GOTO 4
  IF ~~ THEN REPLY #23526 /* ~"Nein. Ich hätte ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #23527 /* ~"Nein. Ich muß mich verabschieden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1 3.2
  SAY #23494 /* ~"Haaaab mmmeinnnen Naaamen veeeergeeessen... veeeergeesssen!" Ihre milchigen Augen füllen sich mit einer schwarzen, sekretartigen Substanz - den Tränen einer Leiche.~ */
  IF ~~ THEN REPLY #23528 /* ~"Kann ich dir bei der Suche nach deinem Namen behilflich sein?"~ */ DO ~SetGlobal("NoName","GLOBAL",2)
~ GOTO 5
  IF ~~ THEN REPLY #23529 /* ~"Warum nimmst du nicht einfach einen neuen Namen an?"~ */ GOTO 8
  IF ~~ THEN REPLY #23530 /* ~"Warum ist das so wichtig für dich?"~ */ GOTO 7
  IF ~~ THEN REPLY #23531 /* ~"Das ist bitter. Ich hätte noch ein paar Fragen..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_NoName_1","GLOBALGood",-1)
~ GOTO 16
  IF ~~ THEN REPLY #23532 /* ~"Hoffe, du findest es wieder. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 7.1 15.0
  SAY #23495 /* ~Die Leiche nickt langsam. "Mmmeine Gruuft..." Sie zeigt nach Süden. "Feuchhhhte Katakoooomben..."~ */
  IF ~~ THEN REPLY #23533 /* ~"Aber woran werd ich es erkennen?"~ */ JOURNAL #23566 /* ~Ein Zombie hat mich gebeten, ihren Namen herauszufinden. Sie sagt, er sollte auf ihrer Gruft eingraviert sein - neben einer "stacheligen Kiste", die an den Boden genagelt ist - in den Katakomben der Ertrunkenen Nationen südwestlich der Toten Lande, wo ich sie getroffen habe.~ */ GOTO 6
  IF ~~ THEN REPLY #23534 /* ~"Dann werd ich es mal suchen. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #23537 /* ~"Vielleicht. Ich werd's schon finden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #23496 /* ~"Kisssste... zugenaaaagelte Kisssste, verschrauuuubt... beiiii meiiiiner Gruuuft..."~ */
  IF ~~ THEN REPLY #23539 /* ~"Warum nimmst du nicht einfach einen neuen Namen an?"~ */ GOTO 8
  IF ~~ THEN REPLY #23543 /* ~"Warum ist das so wichtig für dich?"~ */ GOTO 7
  IF ~~ THEN REPLY #23545 /* ~"Dann werd ich es mal suchen. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #23547 /* ~"Vielleicht. Ich werd's schon finden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 6.1 19.3
  SAY #23497 /* ~Sie hält ihre verfaulenden Hände hoch, damit du sie untersuchen kannst. Als du dies tust, fällt ein Fingernagel ab und trifft mit einem leisen *Klicken* auf den Boden. "Vvveeerfauuult... baaald, niiiichts meeehr üüübrig... niiichts als Knooochhhen und ein Naaaame..."~ */
  IF ~~ THEN REPLY #23557 /* ~"Ich hab' auch keinen Namen. Ich bin mir sicher, daß auch du gut ohne einen auskommen würdest."~ */ GOTO 14
  IF ~  !Global("NoName","GLOBAL",2)
~ THEN REPLY #23560 /* ~"Kann ich dir dann vielleicht bei der Suche nach deinem Namen helfen?"~ */ DO ~SetGlobal("NoName","GLOBAL",2)
~ GOTO 5
  IF ~~ THEN REPLY #23573 /* ~"Warum nimmst du nicht einfach einen neuen Namen an?"~ */ GOTO 8
  IF ~~ THEN REPLY #23576 /* ~"Aha. Ich hätte da ein paar Fragen..."~ */ GOTO 16
  IF ~  !Global("NoName","GLOBAL",2)
~ THEN REPLY #23579 /* ~"Hoffe, du findest es wieder. Leb wohl."~ */ EXIT
  IF ~  Global("NoName","GLOBAL",2)
~ THEN REPLY #23582 /* ~"Dann werd ich weitersuchen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1 6.0 7.2 15.1 19.2 23.0
  SAY #23498 /* ~Sie steht da und beobachtet dich schweigend.~ */
  IF ~~ THEN REPLY #23586 /* ~"Hast du verstanden? Du kannst einen neuen Namen wählen."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #23499 /* ~Sie schüttelt den Kopf und zuckt wie vor Schreck zurück. "Aber... nnneiiii..."~ */
  IF ~~ THEN REPLY #23588 /* ~"Erkennst du nicht, wie sehr du dich verändert hast? Würde dein wahrer Name denn überhaupt noch zu dir passen?"~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #23500 /* ~Sie hält inne und legt ihre Hände an die Wangen. Die Leiche beißt auf ihre Unterlippe.~ */
  IF ~~ THEN REPLY #23591 /* ~"Siehst du? Du kannst dich ruhig von deinem alten Namen trennen. Nimm eine neue Identität an."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #23501 /* ~"Aber... weeeer? Weeelchhhher Naaame?" Sie wirkt verwirrt, überfordert.~ */
  IF ~~ THEN REPLY #23593 /* ~"Welchen du willst. Welchen auch immer."~ */ GOTO 12
  IF ~~ THEN REPLY #23594 /* ~"Überleg dir einen. Leb wohl."~ */ DO ~SetGlobal("NoName","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #23502 /* ~Sie steht eine Weile still und starrt auf den Boden. Plötzlich hebt sie ihren Kopf. "Duuuu... Naaame? Giiib miiiiir Naaaammen?"~ */
  IF ~~ THEN REPLY #23599 /* ~Denk dir einen Namen für sie aus.~ */ DO ~SetGlobal("NoName","GLOBAL",4)
AddexperienceParty(5000)
~ JOURNAL #67827 /* ~Ich habe mir einen Namen für die namenlose Zombiefrau ausgedacht. Sie schien damit ganz zufrieden zu sein.~ */ GOTO 13
  IF ~~ THEN REPLY #23602 /* ~"Ich denke, es wäre am besten, wenn du deinen Namen selbst auswählen würdest. Leb wohl."~ */ DO ~SetGlobal("NoName","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 19.1
  SAY #23504 /* ~Du denkst dir einen Namen aus, aber bevor du ihn aussprechen kannst, bedeutet dir die Zombiefrau zu schweigen, drängt sich dicht an dich heran und legt eine Hand um ihr Ohr. Du flüsterst ihr den Namen zu... Die Leiche nickt und lächelt dann. "Jaaaaa... viiiielen Daaaank..."~ */
  IF ~~ THEN REPLY #23603 /* ~"Natürlich. Ich hätte noch ein paar Fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #23606 /* ~"Natürlich. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 7.0
  SAY #23506 /* ~"Wiiiie kaaansssst duuu diich.... vollkoooommen fühlen?"~ */
  IF ~~ THEN REPLY #23608 /* ~Wahrheit: "Vielleicht hast du recht, aber ich denke, mir fehlt mehr als nur mein Name."~ */ GOTO 15
  IF ~~ THEN REPLY #23610 /* ~Lüge: "Ich fühle mich als Ganzes, mit oder ohne Namen."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_NoName_1","GLOBALLaw",-1)
~ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1
  SAY #23507 /* ~Die Zombie-Frau schüttelt sanft ihren Kopf.~ */
  IF ~  !Global("NoName","GLOBAL",2)
~ THEN REPLY #23617 /* ~"Kann ich dir dann vielleicht bei der Suche nach deinem Namen helfen?"~ */ DO ~SetGlobal("NoName","GLOBAL",2)
~ GOTO 5
  IF ~~ THEN REPLY #23618 /* ~"Warum nimmst du nicht einfach einen neuen Namen an?"~ */ GOTO 8
  IF ~~ THEN REPLY #23620 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 16
  IF ~  !Global("NoName","GLOBAL",2)
~ THEN REPLY #23622 /* ~"Dann hoff ich, daß du ihn findest. Leb wohl."~ */ EXIT
  IF ~  Global("NoName","GLOBAL",2)
~ THEN REPLY #23625 /* ~"Ich werd die Augen offen halten. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 4.3 7.3 13.0 15.2 19.4 20.1 21.0 22.0
  SAY #23508 /* ~Eine lange Pause. "Häääähhh?" Die Zombie-Frau zuckt mit den Schultern, wobei sie die eine Schulter nicht ganz so hoch zieht wie die andere. "Frraag Mmmary, Mufffffige Maaary."~ */
  IF ~~ THEN REPLY #23631 /* ~"Erzähl mir was über die... Muffige Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 17
  IF ~~ THEN REPLY #23634 /* ~"Das tue ich vielleicht mal. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #23509 /* ~"Sssiiiie füüühhhrt uuuns. Wwwaaachhht über uuuuns."~ */
  IF ~~ THEN REPLY #23637 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~  Global("NoName","GLOBAL",1)
~ THEN BEGIN 18 // from:
  SAY #23510 /* ~Als die Zombie-Frau dich anschaut, leuchten ihre toten Augen auf, so als ob sie dich wiedererkennt. "Uuuhhhn." Sie streckt dir ihre verwesenden Hände entgegen, als ob sie dich um Hilfe bitten möchte.~ */
  IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN REPLY #23640 /* ~"Sei gegrüßt..."~ */ GOTO 3
  IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #23645 /* ~"Sei gegrüßt..."~ */ GOTO 1
  IF ~~ THEN REPLY #23646 /* ~Laß den Zombie in Ruhe.~ */ EXIT
END

IF ~  Global("NoName","GLOBAL",2)
~ THEN BEGIN 19 // from:
  SAY #23511 /* ~Als die Zombie-Frau dich anschaut, , leuchten ihre toten Augen auf, so als ob sie dich wiedererkennt. "Meiiiiin Naaaame... duuu weiiiiißt meiiiinen Naaamen?"~ */
  IF ~  Global("DN_Read_Tomb","GLOBAL",1)
~ THEN REPLY #23650 /* ~Wahrheit: "Ich hab' das Grab gefunden, aber der Name war... unlesbar. Nicht mehr zu entziffern."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_NoName_1","GLOBALLaw",1)
~ JOURNAL #23659 /* ~Ich habe dem namenlosen Zombie erzählt, daß der Name auf ihrer Gruft unleserlich ist... Sie schien untröstlich.~ */ GOTO 23
  IF ~  Global("DN_Read_Tomb","GLOBAL",1)
~ THEN REPLY #23653 /* ~Lüge: "Ja, dein Name ist... äh..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_NoName_2","GLOBALLaw",-1)
SetGlobal("NoName","GLOBAL",4)
AddexperienceParty(5000)
~ JOURNAL #23660 /* ~Ich habe gelogen und dem namenlosen Zombie gesagt, der Name auf ihrer Gruft sei leserlich, und habe ihr einen selbst erfundenen gesagt. Sie war damit zufrieden.~ */ GOTO 13
  IF ~  Global("DN_Read_Tomb","GLOBAL",0)
~ THEN REPLY #23655 /* ~"Nein... aber warum suchst du dir dann nicht einen neuen Namen aus?"~ */ GOTO 8
  IF ~  Global("DN_Read_Tomb","GLOBAL",0)
~ THEN REPLY #23656 /* ~"Noch nicht. Warum ist das so wichtig für dich?"~ */ GOTO 7
  IF ~  Global("DN_Read_Tomb","GLOBAL",0)
~ THEN REPLY #23657 /* ~"Noch nicht, aber ich hätte ein paar Fragen..."~ */ GOTO 16
  IF ~  Global("DN_Read_Tomb","GLOBAL",0)
~ THEN REPLY #23658 /* ~"Nein, aber ich such weiter."~ */ EXIT
END

IF ~  Global("NoName","GLOBAL",3)
~ THEN BEGIN 20 // from:
  SAY #23512 /* ~Die Leiche winkt dir eifrig zu, als sie dich wahrnimmt. "Nnnaaame! Ich weiiiiß eiiinen Naaaamen..."~ */
  IF ~~ THEN REPLY #23661 /* ~"Ach ja? Und welchen?"~ */ DO ~SetGlobal("NoName","GLOBAL",4)
AddexperienceParty(5000)
~ JOURNAL #23664 /* ~Das namenlose Zombie hat endlich meinen Rat befolgt und sich selbst einen Namen ausgesucht, "Leicha".~ */ GOTO 21
  IF ~~ THEN REPLY #23662 /* ~"Gut, ich freu mich für dich. Ich hätte ein paar Fragen..."~ */ DO ~SetGlobal("NoName","GLOBAL",4)
AddexperienceParty(5000)
~ JOURNAL #23664 /* ~Das namenlose Zombie hat endlich meinen Rat befolgt und sich selbst einen Namen ausgesucht, "Leicha".~ */ GOTO 16
  IF ~~ THEN REPLY #23663 /* ~"Das ist gut. Dann werd ich mich mal verabschieden... auf bald."~ */ DO ~SetGlobal("NoName","GLOBAL",4)
AddexperienceParty(5000)
~ JOURNAL #23664 /* ~Das namenlose Zombie hat endlich meinen Rat befolgt und sich selbst einen Namen ausgesucht, "Leicha".~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #23513 /* ~"Llleeeiiichaaa..."~ */
  IF ~~ THEN REPLY #23665 /* ~"Interessant... irgendwie passend. Ich hätte ein paar Fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #23666 /* ~"Das ist gut. Leb wohl, Leicha."~ */ EXIT
END

IF ~  Global("NoName","GLOBAL",4)
~ THEN BEGIN 22 // from:
  SAY #23514 /* ~Die Leiche schlurft lächelnd auf dich zu. "Daaaaaankkke... daaass duu miiir mit meiiiinem Naaaamen gehooolffffen haaaasst..."~ */
  IF ~~ THEN REPLY #23667 /* ~"Natürlich. Ich hätte da ein paar Fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #23668 /* ~"Natürlich. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 19.0
  SAY #23515 /* ~"N...n...neiiin..." Die Zombie-Frau schüttelt verzweifelt den Kopf. "Kaaannn nnnichhht seiiin..."~ */
  IF ~~ THEN REPLY #23669 /* ~"Warum nimmst du nicht einfach einen neuen Namen an?"~ */ GOTO 8
  IF ~~ THEN REPLY #23670 /* ~"Tut mir leid... Leb wohl."~ */ DO ~SetGlobal("NoName","GLOBAL",5)
~ EXIT
END

IF ~  Global("NoName","GLOBAL",5)
~ THEN BEGIN 24 // from:
  SAY #23516 /* ~Die Zombie-Frau starrt mit losem Kiefer in die Ferne.~ */
  IF ~~ THEN REPLY #23671 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 25
  IF ~~ THEN REPLY #23672 /* ~Laß sie in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #23517 /* ~Die Leiche sagt keinen Ton... und ignoriert dich.
~ */
  IF ~~ THEN REPLY #23673 /* ~Laß sie in Ruhe.~ */ EXIT
END
