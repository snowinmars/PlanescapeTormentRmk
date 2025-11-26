// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBROCUS4.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DBROCUS4~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3204 /* ~Dieser Edelmann ist eher unscheinbar, bis auf die Tatsache, daß er ein blaues Auge hat, so, als habe ihn jemand geschlagen. Er macht eine leichte Verbeugung, als du dich ihm näherst. "Seid gegrüßt, mein Herr."~ */
  IF ~~ THEN REPLY #3205 /* ~"Sei gegrüßt. Ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #40154 /* ~"Sei gegrüßt. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #40155 /* ~"Seid nochmals gegrüßt, mein Herr."~ */
  IF ~~ THEN REPLY #40156 /* ~"Sei gegrüßt. Ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #40157 /* ~"Sei gegrüßt. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 3.2 4.2 5.1 6.0 7.1 8.1 9.0 10.1 11.0 12.0 13.1 14.0 15.0 16.0 17.0
  SAY #40158 /* ~Er nickt. "Ja, schießt los..."~ */
  IF ~~ THEN REPLY #40159 /* ~"Wie bist du an dein blaues Auge gekommen?"~ */ GOTO 3
  IF ~~ THEN REPLY #40160 /* ~"Was machst du hier?"~ */ GOTO 7
  IF ~~ THEN REPLY #40161 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ GOTO 10
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #40162 /* ~"Was kannst du mir über die schweigsame Prostituierte erzählen?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
~ GOTO 11
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #68125 /* ~"Was kannst du mir über die stumme Hure erzählen?"~ */ GOTO 11
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #40163 /* ~"Ich hab gehört, Kesai-Serris ist Ravels Tochter. Stimmt das?"~ */ GOTO 12
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #40164 /* ~"Ich bin auf der Suche nach Vivians Duft... Weißt du, wo er sein könnte?"~ */ GOTO 13
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #40165 /* ~"Ich suche Marissas Purpurschleier... Weißt du, wo er sein könnte?"~ */ GOTO 15
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #40166 /* ~"Weißt du etwas über Ravel Rätselschön?"~ */ GOTO 16
  IF ~  GlobalGT("Dolora","GLOBAL",0)
Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #40167 /* ~"Ich habe insgesamt mit neun Prostituierten gesprochen... Weißt du, wer oder wo die zehnte Schülerin ist?"~ */ GOTO 17
  IF ~~ THEN REPLY #40168 /* ~"Vergiß es einfach. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #40169 /* ~Er lächelt süffisant. "Oh, das? Das ist eine lange Geschichte, mein Herr. Daran seid Ihr sicher nicht interessiert."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 426
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40170 /* ~"Doch, das bin ich. Bitte, erzähl sie mir."~ */ GOTO 4
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40171 /* ~"Na schön. Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40172 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #40173 /* ~Der Mann seufzt und rollt die Augen. "Also gut... Aber ich werde keine Einzelheiten preisgeben. Trotz meiner Bemerkung eben über die Länge der Geschichte kann ich sie in zwei Worten zusammenfassen: Kimasxi Natternzunge."~ */
  IF ~  Global("Kimasxi","GLOBAL",0)
~ THEN REPLY #40174 /* ~"Wen?"~ */ GOTO 5
  IF ~  GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #40175 /* ~"Oh... Ja, ich kenne sie."~ */ GOTO 6
  IF ~~ THEN REPLY #40176 /* ~"Ich verstehe. Ich hätte noch eine andere Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #40177 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #40178 /* ~"Ah, Ihr habt noch nicht mit ihr gesprochen, ich verstehe. Dann werde ich Euch nicht noch mehr darüber erzählen, was für eine köstliche Freude Kimasxi ist, guter Herr. Statt dessen bestehe ich darauf, daß Ihr selbst mit ihr redet. Sie ist eine der Prostituierten hier und die faszinierendste Schülerin von Lady Grace." Er lächelt dich an.~ */
  IF ~  !NearbyDialog("DGrace")
!Dead("Grace")
~ THEN REPLY #40179 /* ~"Lady Grace?"~ */ GOTO 9
  IF ~~ THEN REPLY #40180 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #40181 /* ~"Dann gehe ich sie vielleicht mal suchen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #40182 /* ~Der Mann seufzt verträumt. "Sie ist wundervoll, nicht wahr?" Er schreckt plötzlich auf. "Aber wartet! Glaubt jetzt nicht etwa, ich sei in sie verliebt, guter Herr... Schließlich bin ich verlobt und werde bald heiraten, und zwar eine Frau, die ich wahrhaftig liebe. Aber Kimasxi... Sie ist so... *anders* in der Unterhaltung." Er lächelt dich an.~ */
  IF ~~ THEN REPLY #40183 /* ~"Anders... ja. Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #40184 /* ~"Ich werde jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.1
  SAY #40185 /* ~"Nun, ich genieße gerade die Freuden des Bordells! Ihr etwa nicht?"~ */
  IF ~~ THEN REPLY #40186 /* ~"Die Freuden?"~ */ GOTO 8
  IF ~~ THEN REPLY #40187 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #40188 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #40189 /* ~"Ja, das ist richtig. Seid Ihr etwa nicht hier, um mit den Damen zu sprechen, mein Herr? Schließlich ist das doch der Sinn und Zweck dieses Etablissements, was die Gäste angeht. Sich mit den lieblichen Schülerinnen von Lady Grace zu unterhalten!"~ */
  IF ~  !NearbyDialog("DGrace")
!Dead("Grace")
~ THEN REPLY #40190 /* ~"Lady Grace?"~ */ GOTO 9
  IF ~~ THEN REPLY #40191 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #40192 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.0 8.0 10.0
  SAY #40193 /* ~Der Mann nickt. "Ja, und was für ein Anblick sie ist. Wirklich, ich könnte ihrer Stimme stundenlang lauschen! Ich finde nur Kimasxi noch unterhaltsamer..." Seine Gedanken scheinen einen Moment lang abzuschweifen. "Oh! Aber wie ich gerade sagte, Lady Grace ist die Besitzerin des Bordells. Zweifellos ist sie hier irgendwo. Geht doch und sprecht selbst mit ihr. Ihr werdet nicht enttäuscht, das verspreche ich Euch."~ */
  IF ~~ THEN REPLY #40194 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #40195 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.2
  SAY #40196 /* ~"Welcher Bürger von Sigil kennt nicht das Bordell zum Befriedigen Intellektueller Lüste? Ihr müßt hier wirklich neu sein, mein Herr." Er seufzt. "Geht herum... Unterhaltet Euch mit den Damen... Mehr gibt es hier im Bordell nicht zu tun. Wenn Ihr an der Geschichte von alledem und solchen Dingen interessiert seid, rate ich Euch, mit Lady Grace darüber zu sprechen."~ */
  IF ~  !NearbyDialog("DGrace")
!Dead("Grace")
~ THEN REPLY #40197 /* ~"Lady Grace?"~ */ GOTO 9
  IF ~~ THEN REPLY #40198 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #40199 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.3 2.4
  SAY #40200 /* ~Der Mann hält inne und denkt nach. "Ich hab noch nie Worte mit ihr gewechselt, aber ich glaube, ihr Name ist 'Ecco'."~ */
  IF ~~ THEN REPLY #40201 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #40202 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.5
  SAY #40203 /* ~"Ravel... Ravel... Ihr meint die legendäre Nachthexe? Ich kann kaum glauben, daß dieses monströse Wesen die Mutter von *irgend jemandem* gewesen sein soll, geschweige denn von der lieblichen Kesai."~ */
  IF ~~ THEN REPLY #40204 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #40205 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.6
  SAY #40206 /* ~"Sie hat ihren Duft verloren? Wie seltsam... Ich bin nur vor Stunden bei ihr vorbeigekommen, und da hat sie ziemlich gut gerochen. Wie immer, natürlich. Tatsächlich bin ich mir nicht sicher, ob ich jemals einer Frau mit einem betörenderen Duft begegnet bin."~ */
  IF ~~ THEN REPLY #40207 /* ~"Tja, eigentlich ist es ihr *persönlicher* Duft, den sie verloren hat."~ */ GOTO 14
  IF ~~ THEN REPLY #40208 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #40209 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #40210 /* ~"Wirklich? Ich hatte ja keine Ahnung, daß so etwas überhaupt möglich ist. Tja, ich hoffe auf jeden Fall, daß sie ihn wiederbekommt!"~ */
  IF ~~ THEN REPLY #40211 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #40212 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 2.7
  SAY #40213 /* ~"Nein, ich muß aber zugeben, daß Marissa mir ein wenig Angst macht. Ich fürchte, in ihren Kammern lauert etwas Furchtbares, und daß sie mich nur bei Laune hält, bis sie mich zerfetzt. Ich jedenfalls werde froh sein, wenn sie ihren Schleier wiederhat und die Kunden wieder außerhalb ihrer verdunkelten Kammer trifft."~ */
  IF ~~ THEN REPLY #40214 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #40215 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.8
  SAY #40216 /* ~"Alles, was ich von Ravel weiß, sind die üblichen Kindermärchen... daß sie unglaublich böse ist, und daß sie den Zorn der Dame der Schmerzen auf sich gezogen hat und für immer verbannt wurde."~ */
  IF ~~ THEN REPLY #40217 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #40218 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.9
  SAY #40219 /* ~"Eine zehnte? Eine zehnte Schülerin... eine zehnte Prostituierte... hmmm. Nein, ich kann nicht sagen, daß ich von einer weiß, geschweige denn, wer sie sein könnte."~ */
  IF ~~ THEN REPLY #40220 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #40221 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END
