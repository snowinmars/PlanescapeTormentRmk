// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DYVES.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DYVES~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 67 71 even though they appear after this state */
~  Global("Yves","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3005 /* ~Diese reizende junge Frau hat in ihren sanften, meeresgrünen Augen einen entrückten Blick.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #3006 /* ~"Sei gegrüßt..."~ */ DO ~SetGlobal("Yves","GLOBAL",1)
~ GOTO 1
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #39201 /* ~"Sei gegrüßt..."~ */ DO ~SetGlobal("Yves","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #39202 /* ~Laß sie in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #39203 /* ~"Sei gegrüßt. Ich bin Yves, die Geschichtenjägerin."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 407
END

IF ~~ THEN BEGIN 2 // from:
  SAY #39204 /* ~Yves fährt unberührt fort. "Bist du gekommen, um Geschichten auszutauschen?"~ */
  IF ~~ THEN REPLY #39205 /* ~"Ich würde gern Geschichten mit dir austauschen."~ */ GOTO 19
  IF ~~ THEN REPLY #39206 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #39207 /* ~"Ich bin nur zufällig vorbeigekommen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY #39208 /* ~"Sei gegrüßt. Ich bin Yves, die Geschichtenjägerin. Bist du gekommen, um Geschichten auszutauschen?"~ */
  IF ~~ THEN REPLY #39209 /* ~"Ich würde gern Geschichten mit dir austauschen."~ */ GOTO 19
  IF ~~ THEN REPLY #39210 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #39211 /* ~"Ich bin nur zufällig vorbeigekommen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.1 5.1 6.0 7.1 8.0 9.1 10.0 11.0 12.1 14.1 15.1 16.1 17.1 19.11 20.5 21.1 22.1 24.1 25.1 26.1 27.1 28.1 29.1 30.1 31.1 32.1 33.1 34.1 35.1 36.1 37.1 38.1 39.1 40.1 41.1 42.1 43.1 44.1 45.1 46.1 47.1 48.1 49.1 50.1 51.1 52.1 53.1 54.1 55.1 56.1 57.1 58.1 59.1 60.1 62.1 63.5 64.1 65.1 66.12 67.1 68.0 69.0 70.0 71.1 72.1 73.1 74.1 75.0 76.1 77.1 78.1 79.1 80.0 81.1
  SAY #39212 /* ~Yves nickt stumm.~ */
  IF ~~ THEN REPLY #39213 /* ~"Warum nennt man dich die 'Geschichtenjägerin'?"~ */ DO ~SetGlobal("Yves","GLOBAL",2)
~ GOTO 9
  IF ~~ THEN REPLY #39214 /* ~"Was machst du hier?"~ */ GOTO 12
  IF ~~ THEN REPLY #39215 /* ~"Kannst du mir etwas über diesen Ort erzählen?"~ */ DO ~SetGlobal("Know_Yves_Grace","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Yvana","GLOBAL",1)
~ THEN REPLY #39216 /* ~"Yves... Du kommst mir bekannt vor. Heißt deine Mutter Yvana?"~ */ GOTO 68
  IF ~  GlobalGT("Yvana","GLOBAL",1)
~ THEN REPLY #39217 /* ~"Hast du in letzter Zeit mal mit deiner Mutter gesprochen, Yves?"~ */ DO ~SetGlobal("Yvana","GLOBAL",3)
~ GOTO 69
  IF ~~ THEN REPLY #39218 /* ~"Können wir Geschichten austauschen?"~ */ GOTO 19
  IF ~  GlobalGT("Yves_Shared","AR0605",0)
~ THEN REPLY #39219 /* ~"Kannst du mir noch einmal eine der Geschichten erzählen, die du bereits erzählt hast?"~ */ GOTO 66
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #39220 /* ~"Was kannst du mir über die schweigsame Prostituierte erzählen?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
SetGlobal("Ecco_Rumor_2","AR0605",1)
~ JOURNAL #66744 /* ~Eine Prostituierten hat gesagt, ich solle Dolora über Ecco, die schweigende Prostituierte, fragen. Sie sagte, daß Dolora manchmal mit einem alten Liebhaber von Ecco spricht, der sie kannte, bevor sie aufhörte zu reden.~ */ GOTO 70
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #67851 /* ~"Was kannst du mir über die stumme Hure erzählen?"~ */ DO ~SetGlobal("Ecco_Rumor_2","AR0605",1)
~ JOURNAL #66744 /* ~Eine Prostituierten hat gesagt, ich solle Dolora über Ecco, die schweigende Prostituierte, fragen. Sie sagte, daß Dolora manchmal mit einem alten Liebhaber von Ecco spricht, der sie kannte, bevor sie aufhörte zu reden.~ */ GOTO 70
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #39221 /* ~"Ich hab gehört, Kesai-Serris ist Ravels Tochter. Stimmt das?"~ */ JOURNAL #66754 /* ~Ich habe Yves gefragt, ob sie weiß, ob Kesai-Serris wirklich Ravels Tochter ist, aber sie hat mir nur eine Geschichte erzählt, daß man tief graben müsse, um an die Wahrheit zu kommen. Ich denke, ich werde weiter rumfragen müssen...~ */ GOTO 8
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #39222 /* ~"Ich bin auf der Suche nach Vivians Duft... Weißt du, wo er sein könnte?"~ */ JOURNAL #66727 /* ~Eine der Prostituierten hat vorgeschlagen, daß ich Nenny frage, ob sie etwas darüber weiß, wer Vivians persönlichen Duft gestohlen hat. Anscheinend hat Nenny einen Ruf dafür, herumzuwandern und zu beobachten, was andere Leute gerade tun.~ */ GOTO 6
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #39223 /* ~"Ich suche Marissas Purpurschleier... Weißt du, wo er sein könnte?"~ */ GOTO 5
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #39224 /* ~"Weißt du etwas über Ravel Rätselschön?"~ */ GOTO 7
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #39225 /* ~"Ich habe insgesamt mit neun Prostituierten gesprochen... Weißt du, wer oder wo die zehnte Schülerin ist?"~ */ GOTO 6
  IF ~~ THEN REPLY #39226 /* ~"Vergiß es einfach. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.11
  SAY #39227 /* ~Yves schüttelt ihren Kopf. "Aber die Geschichte von Marissa ist wirklich interessant. Möchtest du sie hören?"~ */
  IF ~~ THEN REPLY #39228 /* ~"Ja, schieß los."~ */ GOTO 11
  IF ~~ THEN REPLY #39229 /* ~"Jetzt nicht gerade. Ich habe da noch eine andere Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #39230 /* ~"Nicht gerade jetzt. Leb wohl, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.10 4.13
  SAY #39231 /* ~Yves schüttelt den Kopf. "Sprich mit Nenny... Sie ist immer unterwegs und beobachtet alles genau."~ */
  IF ~~ THEN REPLY #39232 /* ~"Ich habe noch eine andere Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #39233 /* ~"Leb wohl, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.12
  SAY #39234 /* ~"Die Geschichte von Ravel Rätselschön, dem Kinderschreck, beginnt und endet mit einer Frage: 'Was kann das Wesen eines Menschen ändern?'"~ */
  IF ~~ THEN REPLY #39235 /* ~"Erzähl weiter..."~ */ GOTO 15
  IF ~~ THEN REPLY #39236 /* ~"Warte... Ich hätte da eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #39241 /* ~"Ich hör mir den Rest ein anderes Mal an, Yves. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.9
  SAY #39242 /* ~"Vor langer Zeit verschwand einmal ein älterer Mann aus dem Bezirk der Kuratoren, und seine Leiche konnte nicht gefunden werden. Um sie zu verbergen, hatte der Mörder sie auf dem Friedhof unter einer anderen Leiche vergraben. Ein Seher sagte, wo man die Leiche finden könne, und so grub man und fand eine Leiche, nicht aber die des älteren Mannes. Die Leute waren verwirrt. Sie waren gezwungen, den Mann freizulassen, und erst als sie weitergruben, um die Leiche wieder zu vergraben, fanden sie die Leiche des älteren Mannes."

"Manchmal muß man tief graben, um die Wahrheit zu finden."
~ */
  IF ~~ THEN REPLY #39243 /* ~"Ich... verstehe. Ich habe noch eine andere Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #39244 /* ~"Ich verstehe... Ich frag weiter rum. Leb wohl, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.0 14.0
  SAY #39245 /* ~"Vor langer Zeit kam ein Mädchen zu einem Orakel, von dem gesagt wurde, das es viele Dinge wisse, und bat es um eine Gunst. Ihr Leben brauchte eine Richtung, also fragte sie das Orakel, was ihrem Dasein ein Ziel geben würde..."~ */
  IF ~~ THEN REPLY #39246 /* ~"Erzähl weiter..."~ */ GOTO 10
  IF ~~ THEN REPLY #39247 /* ~"Warte... Ich hätte da eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #39248 /* ~"Ich hör mir den Rest ein anderes Mal an, Yves. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #39249 /* ~"Nun war das Orakel nicht wirklich böse, aber es war vage und trank auch mal gern einen, wodurch es in vielen Fragen der Beurteilung und Konzentration eher obskur blieb. Seine einzige Antwort auf die Frage des Mädchens war, daß sie die Wahrheit, nach der sie suchte, in einer Geschichte fände, die sie in ihrem Leben hören würde. Das Mädchen ging also und sammelte Geschichten und wußte nicht, welche der Tausenden von Geschichten nun die Wahrheit enthielt."

"Das ist die Gefahr bei einer dummen Frage und die Weisheit in einer nicht ausgesprochenen Frage."
~ */
  IF ~~ THEN REPLY #39250 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #39251 /* ~"Das ist alles, was ich wissen wollte, Yves. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.0
  SAY #39252 /* ~"Vor langer Zeit, in einer Welt der Helden und einer Zeit kleinlicher, kindischer Götter, gab es einmal drei Schwestern. Sie trugen den Fluch eines grauenhaften Aussehens und wurden von den Leuten des Landes für Dämonen gehalten und für immer gemieden. Eine vermißte ihre Schwestern schrecklich, und doch ließ sie diese Welt ohne Scham hinter sich... und tauschte die Kleinlichkeit eines Pantheons gegen die Kleinlichkeit ihrer selbst aus."~ */
  IF ~~ THEN REPLY #39253 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #39254 /* ~"Das ist alles, was ich wissen wollte, Yves. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.1
  SAY #39255 /* ~"Ich sammle Geschichten und tausche sie mit anderen, die eigene Geschichten haben."~ */
  IF ~~ THEN REPLY #39256 /* ~"Können wir Geschichten austauschen?"~ */ GOTO 19
  IF ~~ THEN REPLY #39257 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #39258 /* ~"Das ist alles, was ich wissen wollte, Yves. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 4.2
  SAY #39259 /* ~"Das ist ein Teil der Geschichte von Meisterin Grace, und es liegt nicht an mir, sie zu erzählen. Sie hat gesagt, daß sie es mir erzählen wird, wenn sie sich dem Ende ihrer Jahre nähert... Und das auch nur, wenn ich schwöre, daß ich sie nie mit jemandem teilen werde."~ */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #39260 /* ~"Sie hofft, daß sie mir ihre eigene Geschichte niemals zu erzählen braucht, weil ich zuvor meine eigene Geschichte gefunden und diesen Ort verlassen habe. Ich glaube, sie fürchtet, daß mein Leben auf der Suche nach dieser Geschichte verschwendet wird, und daß ich nicht nach dem handele, was ich bereits weiß." Yves seufzt leise. "Aber da kann man nicht machen."~ */
  IF ~~ THEN REPLY #39261 /* ~"Deine eigene Geschichte?"~ */ GOTO 9
  IF ~~ THEN REPLY #39262 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #39263 /* ~"Das ist alles, was ich wissen wollte, Yves. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 7.0
  SAY #39264 /* ~"Viele Male hat sie dieses Rätsel denen aufgegeben, die sich ihr näherten und versuchten, ihr etwas von den seltsamen Magien, die nur sie allein zu besitzen schien, zu entlocken. Alle versuchten, ihre Frage zu beantworten, aber keinem gelang es... Und statt dessen mußten sie erkennen, daß der Preis für ihre falsche Antwort ein schreckliches Schicksal war, jedes Mal noch schrecklicher als das des letzten Opfers. Wenn man von den unterschiedlichen Grauen spräche, denen sie ausgesetzt waren, würde man von Dingen sprechen, aus denen Alpträume gemacht sind."~ */
  IF ~~ THEN REPLY #39265 /* ~"Erzähl weiter..."~ */ GOTO 16
  IF ~~ THEN REPLY #39266 /* ~"Warte... Ich hätte da eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #39267 /* ~"Ich hör mir den Rest ein anderes Mal an, Yves. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #39268 /* ~"Ich verstehe diese Geschichte so: Ravel kannte die Antwort auf diese Frage selbst nicht, doch sie wollte unbedingt eine solche Antwort haben. Nur das *Warum* bleibt dabei offen. Warum war das Wesen eines Menschen für eine der Grauen Schwestern so wichtig, und besonders für eine mit einer solchen Macht wie Ravel?"~ */
  IF ~~ THEN REPLY #39269 /* ~"Erzähl weiter..."~ */ GOTO 17
  IF ~~ THEN REPLY #39270 /* ~"Warte... Ich hätte da eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #39271 /* ~"Ich hör mir den Rest ein anderes Mal an, Yves. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #39272 /* ~"Man sagt, sie habe die Frage der Dame der Schmerzen gestellt - nicht direkt, sondern sie habe die Frage in Sigil herausgeschrien und die Dame aufgefordert, sie zu beantworten. Als keine Antwort kam, hat sie schreckliche Magien gewoben, die den Käfig zu öffnen und die Wut der Ebenen wie eine Woge hineinfluten zu lassen drohten."~ */
  IF ~~ THEN REPLY #39273 /* ~"Erzähl weiter..."~ */ GOTO 18
  IF ~~ THEN REPLY #39274 /* ~"Warte... Ich hätte da eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #39275 /* ~"Ich hör mir den Rest ein anderes Mal an, Yves. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #39276 /* ~"Die einzige Antwort, die sie erhielt, war ihre Verbannung. Bis zu diesem Tag kennt niemand die Antwort auf Ravels Frage... Und jetzt gibt es auch niemanden mehr, der danach sucht, denn Ravel selbst ist weg, an die Ebenen verloren."~ */
  IF ~  Global("Ecco_Speak","GLOBAL",0)
~ THEN REPLY #39277 /* ~"Ich hätte da noch eine Frage..."~ */ DO ~SetGlobal("Ecco_Speak","GLOBAL",1)
~ JOURNAL #66790 /* ~Nachdem sie mir eine Geschichte von Ravel erzählt hatte, deutete Yves an, daß Ecco - die schweigende Prostituierte - mehr über sie wissen könnte... daß ich aber erst etwas finden müßte, das Ecco wieder zum Sprechen bringen kann.~ */ GOTO 79
  IF ~  Global("Ecco_Speak","GLOBAL",0)
~ THEN REPLY #39278 /* ~"Das ist alles, was ich wissen wollte, Yves. Leb wohl."~ */ DO ~SetGlobal("Ecco_Speak","GLOBAL",1)
~ JOURNAL #66790 /* ~Nachdem sie mir eine Geschichte von Ravel erzählt hatte, deutete Yves an, daß Ecco - die schweigende Prostituierte - mehr über sie wissen könnte... daß ich aber erst etwas finden müßte, das Ecco wieder zum Sprechen bringen kann.~ */ GOTO 79
  IF ~  GlobalGT("Ecco_Speak","GLOBAL",0)
GlobalLT("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #66786 /* ~"Ich hätte da noch eine Frage..."~ */ JOURNAL #66790 /* ~Nachdem sie mir eine Geschichte von Ravel erzählt hatte, deutete Yves an, daß Ecco - die schweigende Prostituierte - mehr über sie wissen könnte... daß ich aber erst etwas finden müßte, das Ecco wieder zum Sprechen bringen kann.~ */ GOTO 79
  IF ~  GlobalGT("Ecco_Speak","GLOBAL",0)
GlobalLT("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #66787 /* ~"Das ist alles, was ich wissen wollte, Yves. Leb wohl."~ */ JOURNAL #66790 /* ~Nachdem sie mir eine Geschichte von Ravel erzählt hatte, deutete Yves an, daß Ecco - die schweigende Prostituierte - mehr über sie wissen könnte... daß ich aber erst etwas finden müßte, das Ecco wieder zum Sprechen bringen kann.~ */ GOTO 79
  IF ~  Global("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #66788 /* ~"Ich hätte da noch eine Frage..."~ */ JOURNAL #66791 /* ~Nachdem sie mir eine Geschichte von Ravel erzählt hatte, deutete Yves an, daß Ecco mehr über sie wissen könnte.~ */ GOTO 80
  IF ~  Global("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #66789 /* ~"Das ist alles, was ich wissen wollte, Yves. Leb wohl."~ */ JOURNAL #66791 /* ~Nachdem sie mir eine Geschichte von Ravel erzählt hatte, deutete Yves an, daß Ecco mehr über sie wissen könnte.~ */ GOTO 80
END

IF ~~ THEN BEGIN 19 // from: 2.0 3.0 4.5 12.0 22.0 29.0 39.0 42.0 44.0 47.0 50.0 58.0 60.0 62.0 63.4 65.0 67.0 78.0
  SAY #39279 /* ~Yves nickt. "Ja, das würde ich sehr gern tun."~ */
  IF ~  Global("Yves_Story_01","GLOBAL",0)
~ THEN REPLY #39280 /* ~Erzähl ihr die Geschichte, wie du in der Leichenhalle aufgewacht bist.~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 21
  IF ~  Global("Yves_Story_02","GLOBAL",0)
!NearbyDialog("Dnordom")
~ THEN REPLY #39281 /* ~Erzähl ihr die Geschichte von der Gasse der hallenden Seufzer.~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 23
  IF ~  Global("Yves_Story_02","GLOBAL",0)
NearbyDialog("Dnordom")
~ THEN REPLY #67899 /* ~Erzähl ihr die Geschichte von der 'Gasse der hallenden Seufzer'.~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 81
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
Global("Yves_Story_03","GLOBAL",0)
~ THEN REPLY #39282 /* ~Erzähl ihr die Geschichte vom Schweigenden König.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 31
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
Global("Yves_Story_03","GLOBAL",0)
~ THEN REPLY #39283 /* ~Erzähl ihr die Geschichte vom Schweigenden König.~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 31
  IF ~  GlobalGT("Dream","GLOBAL",0)
Global("Yves_Story_13","GLOBAL",0)
~ THEN REPLY #39284 /* ~Erzähl ihr die Geschichte vom Traumerzeuger.~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 40
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Yves_Story_04","GLOBAL",0)
~ THEN REPLY #39285 /* ~Erzähl ihr die Geschichte von Übelwinds Fluch.~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 43
  IF ~  Global("Story_Reekwind_Alley","GLOBAL",1)
Global("Yves_Story_05","GLOBAL",0)
~ THEN REPLY #39286 /* ~Erzähl ihr die Geschichte von der Gasse der Gefährlichen Ecken.~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 45
  IF ~  Global("Story_Reekwind_Pharod","GLOBAL",1)
Global("Yves_Story_06","GLOBAL",0)
~ THEN REPLY #39287 /* ~Erzähl ihr die Geschichte von Pharod.~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 48
  IF ~  Global("Story_Reekwind_Ignus","GLOBAL",1)
Global("Yves_Story_07","GLOBAL",0)
~ THEN REPLY #39288 /* ~Erzähl ihr die Geschichte von Ignus.~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 51
  IF ~  NumInPartyGT(0)
~ THEN REPLY #39289 /* ~Frag deine Begleiter, ob sie eine Geschichte zu erzählen haben.~ */ GOTO 20
  IF ~~ THEN REPLY #39290 /* ~"Ach, weißt du, laß mich dir eine Frage stellen..."~ */ GOTO 4
  IF ~~ THEN REPLY #39291 /* ~"Dann tun wir das ein anderes Mal. Leb wohl, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.10
  SAY #39292 /* ~Yves wartet geduldig auf deine Geschichte.~ */
  IF ~  NearbyDialog("DMorte")
Global("Yves_Story_08","GLOBAL",0)
~ THEN REPLY #39293 /* ~"Morte... Hast du eine Geschichte zum Tausch anzubieten?"~ */ EXTERN ~DMORTE~ 408
  IF ~  NearbyDialog("DAnnah")
Global("Yves_Story_09","GLOBAL",0)
~ THEN REPLY #39294 /* ~"Annah... Hast du eine Geschichte zum Tausch anzubieten?"~ */ EXTERN ~DANNAH~ 195
  IF ~  NearbyDialog("DDakkon")
Global("Yves_Story_10","GLOBAL",0)
~ THEN REPLY #39295 /* ~"Dak'kon... Hast du eine Geschichte zum Tausch anzubieten?"~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ EXTERN ~DDAKKON~ 122
  IF ~  NearbyDialog("DGrace")
InParty("Grace")
Global("Yves_Story_11","GLOBAL",0)
~ THEN REPLY #39296 /* ~"Grace, die Gefallene... Hast du eine Geschichte zum Tausch anzubieten?"~ */ DO ~SetGlobal("Yves_Story_11","GLOBAL",1)
~ EXTERN ~DGRACE~ 140
  IF ~  NearbyDialog("DNordom")
Global("Yves_Story_12","GLOBAL",0)
~ THEN REPLY #39297 /* ~"Nordom: Wenn du eine Geschichte kennst, dann erzähl sie doch bitte Yves."~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ EXTERN ~DNORDOM~ 10
  IF ~~ THEN REPLY #39298 /* ~"Ach, weißt du, Yves, laß mich dir eine Frage stellen..."~ */ GOTO 4
  IF ~~ THEN REPLY #39299 /* ~"Das tun wir ein anderes Mal. Leb wohl, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.0
  SAY #39300 /* ~Yves beugt sich vor, als du die Geschichte erzählst, wie du in der Leichenhalle der Staubmenschen aufgewacht bist... Sie scheint jedes deiner Worte zu verschlingen. Als du fertig bist, lächelt sie dich an. "Ich werde mich an diese Geschichte erinnern. Ich werde dir auch eine Geschichte über die Staubmenschen erzählen - 'Die Kapitel von Staub'."~ */
  IF ~~ THEN REPLY #39301 /* ~"Erzähl weiter..."~ */ DO ~SetGlobal("Yves_Story_01","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 22
  IF ~~ THEN REPLY #39302 /* ~"Warte... Ich hätte da eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #39303 /* ~"Ich hör mir den Rest ein anderes Mal an, Yves. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0 66.0
  SAY #39304 /* ~"Im Totenbuch, dem dicken Wälzer, in dem die Staubmenschen Buch führen über alle Leben, die in die Ewige Grenze hinüberwechseln, gibt es Kapitel, die nichts als Staub sind. Man glaubt, daß die Namen darin verlorene Seelen sind, die nicht sterben können, sondern zum ewigen Leben verdammt sind, bis die Geschichte selbst stirbt und sie freigibt."~ */
  IF ~~ THEN REPLY #39305 /* ~"Ich habe noch eine Geschichte, die ich mit dir teilen möchte."~ */ GOTO 19
  IF ~~ THEN REPLY #39306 /* ~"Ich hätte da eine Frage an dich, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39307 /* ~"Ich werd mich jetzt auf die Socken machen. Leb wohl, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 19.1
  SAY #39308 /* ~Yves beugt sich vor, als du ihr die Geschichte davon erzählst, wie die Gasse gebärt... Sie scheint jedes deiner Worte zu verschlingen. Als du fertig bist, lächelt sie dich an. "Ich werde mich an diese Geschichte erinnern. Und jetzt habe ich eine für dich. Bevor ich anfange, muß ich dich aber fragen: Weißt du, was ein Modron ist?"~ */
  IF ~~ THEN REPLY #39309 /* ~"Ja."~ */ GOTO 24
  IF ~~ THEN REPLY #39310 /* ~"Nein..."~ */ GOTO 30
END

IF ~~ THEN BEGIN 24 // from: 23.0 30.0
  SAY #39311 /* ~"Dann erzähle ich dir die Geschichte von der 'Uhr und dem Quadron'."~ */
  IF ~~ THEN REPLY #39312 /* ~"Erzähl weiter..."~ */ DO ~SetGlobal("Yves_Story_02","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 25
  IF ~~ THEN REPLY #39313 /* ~"Warte... Ich hätte da eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #39314 /* ~"Ich hör mir den Rest ein anderes Mal an, Yves. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0 66.1 81.0
  SAY #39315 /* ~"Vor langer Zeit gab es einen Modron. Er war ganz neu geschaffen, seine Logik frisch und noch nicht auf die Probe gestellt, und er war auf Befehl seiner Modron-Vorgesetzten nach Sigil gekommen." ~ */
  IF ~~ THEN REPLY #39316 /* ~"Erzähl weiter..."~ */ GOTO 26
  IF ~~ THEN REPLY #39317 /* ~"Warte... Ich hätte da eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #39318 /* ~"Ich hör mir den Rest ein anderes Mal an, Yves. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #39319 /* ~"Er kannte nichts als Befehle und Gebote, Gehorsam und das Befolgen von Anweisungen gemäß der Befehlshierarchie. Denn du mußt wissen, daß Modronen sich nur der Befehle ihrer direkten Vorgesetzten bewußt sind und nichts von einer höheren Autorität ahnen. Bis zu diesem einen."~ */
  IF ~~ THEN REPLY #39320 /* ~"Erzähl weiter..."~ */ GOTO 27
  IF ~~ THEN REPLY #39321 /* ~"Warte... Ich hätte da eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #39322 /* ~"Ich hör mir den Rest ein anderes Mal an, Yves. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #39328 /* ~"Eines Tages kam er in einen kleinen Laden, in dem es eine kleine Uhr gab, die nicht mehr die Zeit angeben konnte. Sie war an den Rändern gesprungen, und die Räder ihrer Zeiger waren kaputt. Der Modron ging sofort daran, die Teile zu holen, mit denen er die kaputte Uhr reparieren könnte."~ */
  IF ~~ THEN REPLY #39329 /* ~"Erzähl weiter..."~ */ GOTO 28
  IF ~~ THEN REPLY #39330 /* ~"Warte... Ich hätte da eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #39331 /* ~"Ich hör mir den Rest ein anderes Mal an, Yves. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #39332 /* ~"Er stellte ein neues Holzgehäuse für die Teile der Uhr her, tauschte die verbogenen Federn aus, feilte und ölte das Uhrwerk sorgfältig und schnitzte aus dem wenigen Metall, das ihm zur Verfügung stand, neue Zeiger. Das präzise Ticken der frisch reparierten Uhr erinnerte ihn an die großen Getriebe von Mechanus und tröstete ihn, soweit irgend etwas einen Modron trösten kann."~ */
  IF ~~ THEN REPLY #39333 /* ~"Erzähl weiter..."~ */ GOTO 29
  IF ~~ THEN REPLY #39334 /* ~"Warte... Ich hätte da eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #39335 /* ~"Ich hör mir den Rest ein anderes Mal an, Yves. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #39336 /* ~"Was der Modron aber niemals wirklich verstand, war, daß er diese Uhr wahrhaftig *liebte*, und aus Gründen, die er nicht erklären konnte, beschloß er, die restlichen Jahre seines Lebens in Sigil und bei der Uhr zu bleiben."~ */
  IF ~~ THEN REPLY #39337 /* ~"Ich habe noch eine Geschichte, die ich mit dir teilen möchte."~ */ GOTO 19
  IF ~~ THEN REPLY #39338 /* ~"Ich hätte da eine Frage an dich, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39339 /* ~"Ich werd mich jetzt auf die Socken machen. Leb wohl, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 23.1
  SAY #39340 /* ~"Modronen sind absolut gesetzestreue Wesen, fast mehr Maschinerie als lebende Wesen. Es gibt viele verschiedene Arten von Modronen, aber alle haben ihren Platz in einer sehr festen und sorgfältig organisierten Hierarchie. Sie sind diesem System so sehr ergeben, daß sie nicht mit Modronen kommunizieren oder sie sich auch nur vorstellen können, die nicht ihre direkten Vorgesetzten oder Untergebenen sind."~ */
  IF ~~ THEN REPLY #39341 /* ~"Jetzt verstehe ich."~ */ GOTO 24
  IF ~~ THEN REPLY #39342 /* ~"Warte... Ich hätte da eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #39343 /* ~"Ich erzähl dir die Geschichte ein anderes Mal, Yves. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 19.3 19.4
  SAY #39344 /* ~Yves beugt sich vor, als du ihr die Geschichte von einem verborgenen Land der Untoten erzählst, welche von einer Leiche beherrscht werden, die tausend Jahre lang kein Wort gesagt hat... Sie scheint jedes deiner Worte zu verschlingen. Als du ferig bist, lächelt sie dich an. "Ich werde mich an diese Geschichte erinnern. Und jetzt habe ich eine für dich: 'Die Sucherin am Tor'."~ */
  IF ~~ THEN REPLY #39345 /* ~"Erzähl weiter..."~ */ DO ~SetGlobal("Yves_Story_03","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 32
  IF ~~ THEN REPLY #39346 /* ~"Warte... Ich hätte da eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #39347 /* ~"Ich hör mir den Rest ein anderes Mal an, Yves. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0 66.2
  SAY #39348 /* ~"Es war schon weit nach dem Hochstand, als das entfernte Pochen an den Toren des Gefängnisses gehört wurde." ~ */
  IF ~~ THEN REPLY #39349 /* ~"Erzähl weiter..."~ */ GOTO 33
  IF ~~ THEN REPLY #39350 /* ~"Warte... Ich hätte da eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #39351 /* ~"Ich hör mir den Rest ein anderes Mal an, Yves. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #39352 /* ~"Carus - der älteste im Bund bekannte Gnadentöter - quälte sich von seinem Posten und ging die Halle hinunter zu den großen Toren, die die Bestraften von der äußeren Welt trennten. Das Pochen wurde nicht leiser, als er das Tor erreichte und zu ihm sprach."~ */
  IF ~~ THEN REPLY #39353 /* ~"Erzähl weiter..."~ */ GOTO 34
  IF ~~ THEN REPLY #39354 /* ~"Warte... Ich hätte da eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #39355 /* ~"Ich hör mir den Rest ein anderes Mal an, Yves. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #39356 /* ~"Er rief, erhielt aber keine Antwort. Er öffnete das Tor, wobei er bei weitem keine Vorsicht verspürte, sondern ein seltsames, zwingendes Gefühl."~ */
  IF ~~ THEN REPLY #39357 /* ~"Erzähl weiter..."~ */ GOTO 35
  IF ~~ THEN REPLY #39358 /* ~"Warte... Ich hätte da eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #39359 /* ~"Ich hör mir den Rest ein anderes Mal an, Yves. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #39360 /* ~"Gleich hinter dem Tor kniete eine ausgezehrte Gestalt auf dem Boden. Ihre Hände waren vom Trommeln an die Tür blutig geschlagen, und ihr Atem ging in angestrengtem Keuchen. Als sich das flackernde Licht aus dem inneren Gefängnisraum über das Kopfsteinpflaster ergoß, sah sie zum Gnadentöter auf, der im Türrahmen stand, und begann, vor Erleichterung zu schluchzen."~ */
  IF ~~ THEN REPLY #39361 /* ~"Erzähl weiter..."~ */ GOTO 36
  IF ~~ THEN REPLY #39362 /* ~"Warte... Ich hätte da eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #39363 /* ~"Ich hör mir den Rest ein anderes Mal an, Yves. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #39364 /* ~"Er starrte die Frau an. Er fühlte sich in ihr in allem außer seinem Geschlecht gespiegelt, und ihre Anwesenheit berührte ihn. Carus wußte nicht, was er sagen sollte, also wartete er einfach darauf, daß die Frau eine Erklärung liefern würde."~ */
  IF ~~ THEN REPLY #39365 /* ~"Erzähl weiter..."~ */ GOTO 37
  IF ~~ THEN REPLY #39366 /* ~"Warte... Ich hätte da eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #39367 /* ~"Ich hör mir den Rest ein anderes Mal an, Yves. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #39368 /* ~"Das tat sie auch. Es war eine einfache Aussage, aber von äußerster Wichtigkeit, und sie bewirkte, daß Carus... dessen Knie bei jeder Bewegung stark schmerzten... sich herabbeugte und der Frau auf die Füße half. Er brachte sie von draußen hinein und führte sie behutsam in den Gang nach hinten."~ */
  IF ~~ THEN REPLY #39369 /* ~"Erzähl weiter..."~ */ GOTO 38
  IF ~~ THEN REPLY #39370 /* ~"Warte... Ich hätte da eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #39371 /* ~"Ich hör mir den Rest ein anderes Mal an, Yves. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #39372 /* ~"Sie hatte gesagt, daß eine Ungerechtigkeit begangen worden war. Und mehr brauchte Carus nicht zu hören."~ */
  IF ~~ THEN REPLY #39373 /* ~"Erzähl weiter..."~ */ GOTO 39
  IF ~~ THEN REPLY #39374 /* ~"Warte... Ich hätte da eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #39375 /* ~"Ich hör mir den Rest ein anderes Mal an, Yves. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #39376 /* ~"Schließlich erfuhr er, daß sie ihre Pflicht als Furie nicht hatte erfüllen können, da ein Mann, der eines blutigen Verbrechens schuldig war, ungestraft gestorben war. Sie bat Carus und die Gnadentöter um Hilfe... Und sie richteten sie hin. Sie hatte bei ihrer Aufgabe versagt."~ */
  IF ~~ THEN REPLY #39377 /* ~"Ich habe noch eine Geschichte, die ich mit dir teilen möchte."~ */ GOTO 19
  IF ~~ THEN REPLY #39378 /* ~"Ich hätte da eine Frage an dich, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39379 /* ~"Ich werd mich jetzt auf die Socken machen. Leb wohl, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 19.5
  SAY #39380 /* ~Yves beugt sich vor, als du ihr die Geschichte von dem Mann erzählst, der die Fähigkeit zu träumen verloren hat und deshalb ein Gerät in Auftrag gegeben hat, mit dessen Hilfe er wieder träumen könnte... Sie scheint jedes deiner Worte zu verschlingen. Als du fertig bist, lächelt sie dich an. "Ich werde mich an diese Geschichte erinnern. Und jetzt habe ich eine für dich: 'Die Geschichte vom Bienenzüchter'."~ */
  IF ~~ THEN REPLY #39597 /* ~"Erzähl weiter..."~ */ DO ~SetGlobal("Yves_Story_13","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 41
  IF ~~ THEN REPLY #39598 /* ~"Warte... Ich hätt da eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #39599 /* ~"Ich hör mir den Rest ein anderes Mal an, Yves. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0 66.3
  SAY #39529 /* ~"Vor langer Zeit kam ein Mann einmal auf ein Feld mit Bienenstöcken. Auf diesem Feld hörte er Tausende von Bienen, ohne auch nur eine einzige Biene entdecken zu können. Zwischen den Bienenstöcken ging ein Bienenzüchter umher, der die Honigwaben aus den scheinbar leeren Bienenstöcken zog. Und obwohl keine Insekten zu sehen waren, ging das Summen weiter. Der Mann stand vor einem Rätsel."~ */
  IF ~~ THEN REPLY #39600 /* ~"Erzähl weiter..."~ */ GOTO 42
  IF ~~ THEN REPLY #39601 /* ~"Warte... Ich hätte da eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #39602 /* ~"Ich hör mir den Rest ein anderes Mal an, Yves. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #39530 /* ~"Er schickte sich an, mit dem Bienenzüchter zu sprechen. Als dieser seine Kapuze abnahm, kam ein Wesen zum Vorschein, das völlig aus Bienen bestand. In der Masse der Insekten, aus denen das Gesicht des Dings bestand, formte sich eine Einbuchtung in Form eines Mundes. Diese Einbuchtung bewegte sich, als das Wesen sprach, aber das Summen war so laut, daß die Worte nicht verständlich waren. In diesem Moment starb der Mann, als er versuchte zu verstehen, was der Bienenzüchter sagte."~ */
  IF ~~ THEN REPLY #39603 /* ~"Ich habe noch eine Geschichte, die ich mit dir teilen möchte."~ */ GOTO 19
  IF ~~ THEN REPLY #39604 /* ~"Ich hätte da eine Frage an dich, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39605 /* ~"Ich werd mich jetzt auf die Socken machen. Leb wohl, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 19.6
  SAY #39531 /* ~Yves lehnt sich vor, als du die Geschichte von Übelwinds stinkendem Fluch erzählst... Sie scheint jedes Wort zu verschlingen. Als du deine Erzählung beendest, lächelt sie dich an. "Ich werde diese Geschichte nicht vergessen. Und jetzt habe ich eine für dich: 'Die vergoldete Geschichte'."~ */
  IF ~~ THEN REPLY #39606 /* ~"Erzähl weiter..."~ */ DO ~SetGlobal("Yves_Story_04","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 44
  IF ~~ THEN REPLY #39607 /* ~"Warte... Ich hätte da eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #39608 /* ~"Ich hör mir den Rest ein anderes Mal an, Yves. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0 66.4
  SAY #39532 /* ~"Auf der Ebene von Ysgard befindet sich die Vergoldete Halle, wo die Sinnsaten gefunden werden können, die die Freuden des Leibes und des Fleisches suchen. Sie geben sich diesen Leidenschaften ungezügelt hin und nehmen niemals wahr, daß sich die Türen der Halle nie öffnen und daß es keinen klaren Pfad zurück in die Städtische Festhalle gibt. Es sind unerwünschte Sinnsaten, diejenigen, die nicht wirklich an den Bund glauben, sondern statt dessen nur die Freuden um der Freuden willen suchen. Sind Gefangene, die nicht erkennen, daß sie welche sind, wirklich und wahrhaftig Gefangene?"~ */
  IF ~~ THEN REPLY #39609 /* ~"Ich habe noch eine Geschichte, die ich mit dir teilen möchte."~ */ GOTO 19
  IF ~~ THEN REPLY #39610 /* ~"Ich hätte da eine Frage an dich, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39611 /* ~"Ich werd mich jetzt auf die Socken machen. Leb wohl, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 19.7
  SAY #39533 /* ~Yves beugt sich vor, als du ihr die Geschichte von der Gasse der Gefährlichen Ecken erzählst und wie es dazu gekommen ist... Sie scheint jedes deiner Worte zu verschlingen. Als du fertig bist, lächelt sie dich an. "Ich werde mich an diese Geschichte erinnern. Und jetzt habe ich eine für dich: 'Der Freier der Dame'."~ */
  IF ~~ THEN REPLY #39612 /* ~"Erzähl weiter..."~ */ DO ~SetGlobal("Yves_Story_05","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 46
  IF ~~ THEN REPLY #39613 /* ~"Warte... Ich hätte da eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #39614 /* ~"Ich hör mir den Rest ein anderes Mal an, Yves. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0 66.5
  SAY #39534 /* ~"Die Geschichte handelt von einem Freier der Dame der Schmerzen, einem der vielen, die es über die Jahre gegeben hat. Er war ein junger Mann, der von der Herrin von Sigil besessen war. Er sah sie überall, in jedem Winkel ihrer Stadt. Er hörte ständig das Rauschen ihrer Roben, das Kratzen ihrer Klingen, und seine Besessenheit überschritt alle Grenzen des Verstandes. Er hoffte, wenn er sie anbetete, wäre er schließlich fähig, sie zu sehen... Also betete er sie an."~ */
  IF ~~ THEN REPLY #39615 /* ~"Erzähl weiter..."~ */ GOTO 47
  IF ~~ THEN REPLY #39616 /* ~"Warte... Ich hätte da eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #39617 /* ~"Ich hör mir den Rest ein anderes Mal an, Yves. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #39535 /* ~"Er wurde tot auf den blutgetränkten Stufen seines eigenen Hauses gefunden, und schwere Stichwunden bedeckten seinen ganzen Körper... Aber seine Augen waren weit offen, und auf seinen Lippen lag ein triumphierendes Lächeln."~ */
  IF ~~ THEN REPLY #39618 /* ~"Ich habe noch eine Geschichte, die ich mit dir teilen möchte."~ */ GOTO 19
  IF ~~ THEN REPLY #39619 /* ~"Ich hätte da eine Frage an dich, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39620 /* ~"Ich werd mich jetzt auf die Socken machen. Leb wohl, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 19.8
  SAY #39536 /* ~Yves beugt sich vor, als du ihr die Geschichte von Pharods Fall erzählst... Sie scheint jedes deiner Worte zu verschlingen. Als du fertig bist, lächelt sie dich an. "Ich werde mich an diese Geschichte erinnern. Und jetzt habe ich eine für dich..."~ */
  IF ~~ THEN REPLY #39621 /* ~"Erzähl weiter..."~ */ DO ~SetGlobal("Yves_Story_06","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 49
  IF ~~ THEN REPLY #39622 /* ~"Warte... Ich hätte da eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #39623 /* ~"Ich hör mir den Rest ein anderes Mal an, Yves. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0 66.6
  SAY #39537 /* ~"Es kam einmal ein Mann, der das absolut Schönste im ganzen Multiversum erfahren hatte. Er hatte vor, diese Erfahrung in einen der Sinnessteine in der Städtischen Festhalle einzuschließen. Das sind magische Geräte, die Gefühle und Erinnerungen eine Ewigkeit lang festhalten, so daß andere an ihnen teilhaben können."~ */
  IF ~~ THEN REPLY #39624 /* ~"Erzähl weiter..."~ */ GOTO 50
  IF ~~ THEN REPLY #39625 /* ~"Warte... Ich hätte da eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #39626 /* ~"Ich hör mir den Rest ein anderes Mal an, Yves. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #39538 /* ~"Aber dann überlegte er es sich anders: Würde das Teilen der Erfahrung sie nicht verdünnen? Also behielt er sie für sich, so kostbar, wie sie war, und alterte mit der Erinnerung. Aber als er alterte, wurde die Erinnerung stumpf und fad, bis er sich letztendlich nicht mehr der Herrlichkeit der Erfahrung entsinnen konnte."~ */
  IF ~~ THEN REPLY #39627 /* ~"Ich habe noch eine Geschichte, die ich mit dir teilen möchte."~ */ GOTO 19
  IF ~~ THEN REPLY #39628 /* ~"Ich hätte da eine Frage an dich, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39629 /* ~"Ich werd mich jetzt auf die Socken machen. Leb wohl, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 19.9
  SAY #39539 /* ~Yves beugt sich vor, als du die Geschichte von Ignus und der Kunst, die in ihm brannte, erzählst... Sie scheint jedes deiner Worte zu verschlingen. Als du fertig bist, lächelt sie dich an. "Ich werde mich an diese Geschichte erinnern. Und jetzt habe ich eine für dich: 'Die Hinrichtung'."~ */
  IF ~~ THEN REPLY #39630 /* ~"Erzähl weiter..."~ */ DO ~SetGlobal("Yves_Story_07","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 52
  IF ~~ THEN REPLY #39631 /* ~"Warte... Ich hätte da eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #39632 /* ~"Ich hör mir den Rest ein anderes Mal an, Yves. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0 66.7
  SAY #39540 /* ~"Vor langer Zeit streifte ein Mörder durch die Straßen Sigils, ein Mann mit schwarzem Herzen namens Kossacs. Er war von seiner Mutter aus dem Abgrund gesegnet worden, so daß niemand ihn angreifen und verletzen konnte, ohne selbst zu sterben. Er nutzte diesen Segen aus, indem er Kämpfe anfing und jeden, der ihm über den Weg lief, tötete."~ */
  IF ~~ THEN REPLY #39633 /* ~"Erzähl weiter..."~ */ GOTO 53
  IF ~~ THEN REPLY #39634 /* ~"Warte... Ich hätte da eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #39635 /* ~"Ich hör mir den Rest ein anderes Mal an, Yves. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #39541 /* ~Während einer seiner Mordtouren wurde er vom Harmonium mit Netzen gefangen und vor die Herrschner gebracht. Der Prozeß war kurz und endgültig, doch Kossacs lachte nur darüber, da er wußte, daß niemand von ihnen ihm Schaden antun konnte, ohne selbst ein schreckliches Ende zu finden. Am letzten Tag der Verhandlung wurde er für schuldig befunden und zum Tode verurteilt.~ */
  IF ~~ THEN REPLY #39636 /* ~"Erzähl weiter..."~ */ GOTO 76
  IF ~~ THEN REPLY #39637 /* ~"Warte... Ich hätte da eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #39638 /* ~"Ich hör mir den Rest ein anderes Mal an, Yves. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 77.0
  SAY #39542 /* ~"Dann spucke ich auf eure Feigheit!" Kossacs lachte, fühlte im Dunkeln nach dem Kelch und warf ihn gegen die Wand, wo er zerbrach. Sein Gift tropfte von den Wänden und trocknete, bis nichts mehr übrig war. "Kommt schon - ihr werdet nun schon versuchen müssen, mich zu töten."~ */
  IF ~~ THEN REPLY #39639 /* ~"Erzähl weiter..."~ */ GOTO 78
  IF ~~ THEN REPLY #39640 /* ~"Ich hätte da eine Frage an dich, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39641 /* ~"Ich werd mich jetzt auf die Socken machen. Leb wohl, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from:
  SAY #39543 /* ~Yves lächelt. "Eine interessante Geschichte, Morte. Und jetzt habe ich eine für dich und deinen Begleiter ...'Das Spiel des Scheusals'."~ */
  IF ~~ THEN REPLY #39642 /* ~"Erzähl weiter..."~ */ DO ~SetGlobal("Yves_Story_08","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 56
  IF ~~ THEN REPLY #39643 /* ~"Warte... Ich hätte da eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #39644 /* ~"Ich hör mir den Rest ein anderes Mal an, Yves. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #39544 /* ~"Es gab einmal ein Scheusal, das gelegentlich in der Verkleidung eines freundlichen alten Mannes durch die Wildernis einer gewissen Materiellen Welt wanderte. Eines Tages traf er im Wald auf einige Jäger."

"'Was tut ihr hier?', fragte das Scheusal. Die Jäger sagten es ihm, und das Scheusal nickte. 'Ich bin noch nie auf einer Jagd gewesen.'"~ */
  IF ~~ THEN REPLY #39645 /* ~"Erzähl weiter..."~ */ GOTO 57
  IF ~~ THEN REPLY #39646 /* ~"Warte... Ich hätte da eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #39647 /* ~"Ich hör mir den Rest ein anderes Mal an, Yves. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #39545 /* ~"Die Jäger boten dem alten Mann an, sich ihnen anzuschließen. Schließlich kam die Gruppe in ein Tal, in dem einige Hirsche grasten. Die Jäger trugen Armbrüste, schossen aber nicht, und das Scheusal fragte sie, warum."~ */
  IF ~~ THEN REPLY #39648 /* ~"Erzähl weiter..."~ */ GOTO 58
  IF ~~ THEN REPLY #39649 /* ~"Warte... Ich hätte da eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #39650 /* ~"Ich hör mir den Rest ein anderes Mal an, Yves. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #39546 /* ~"'Sie sind nicht bewaffnet', kicherten die Jäger und tätschelten ihre Armbrüste. 'Wir jagen nichts, das sich nicht selbst verteidigen kann. Wo bleibt da schließlich der Sportgeist?'"

"Das Scheusal nickte daraufhin und sperrte prompt drei seiner Gefährten ein. Die Jäger führten nun eine lustige Jagd an, aber schließlich wurden sie gefangen und gegessen."~ */
  IF ~~ THEN REPLY #39651 /* ~"Ich habe noch eine Geschichte, die ich mit dir teilen möchte."~ */ GOTO 19
  IF ~~ THEN REPLY #39652 /* ~"Ich hätte da eine Frage an dich, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39653 /* ~"Ich werd mich jetzt auf die Socken machen. Leb wohl, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from:
  SAY #39547 /* ~Yves lächelt. "Eine schöne Geschichte, Nordom. Und jetzt habe ich eine für dich und deinen Begleiter ...'Blumen und Sinnsaten'."~ */
  IF ~~ THEN REPLY #39654 /* ~"Erzähl weiter..."~ */ DO ~SetGlobal("Yves_Story_12","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 60
  IF ~~ THEN REPLY #39655 /* ~"Warte... Ich hätte da eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #39656 /* ~"Ich hör mir den Rest ein anderes Mal an, Yves. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 59.0 66.10
  SAY #39548 /* ~"Es gab einmal einen Mann, der viel über Blumen las - Aufsätze, Abhandlungen, biologische Texte, Gedichte - und sich daher auf dem Gebiet der Blumen auszukennen glaubte. Eines Tages traf er auf einen halbblinden Gärtner, der für die Gärten der Sinnsaten sorgte. Nun, welcher von diesen war blind auf dem Gebiet der Blumen?"~ */
  IF ~~ THEN REPLY #39657 /* ~"Ich habe noch eine Geschichte, die ich mit dir teilen möchte."~ */ GOTO 19
  IF ~~ THEN REPLY #39658 /* ~"Ich hätte da eine Frage an dich, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39659 /* ~"Ich werd mich jetzt auf die Socken machen. Leb wohl, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from:
  SAY #39549 /* ~Yves lächelt. "Faszinierend, Dak'kon. Laß mich eine andere Version deiner Geschichte, die mir zu Ohren gekommen ist, mit dir und deinem Begleiter teilen..."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 123
END

IF ~~ THEN BEGIN 62 // from: 66.9
  SAY #39550 /* ~Yves erzählt nun eine andere Version der Geschichte Dak'kons, in der Acha'lii wegen ihres ständigen, nutzlosen Plapperns aus der Githzerai-Stadt Shrak'at'lor vertrieben wurde...

"Eines Tages traf sie einen Slaadi auf seinem Weg zum Laichstein. Sie errichtete hastig eine Wand aus Chaosmaterie, die selbst der ausgehungerte Slaadi nicht niederreißen konnte. Hungrig wartete er und sprach durch die Wand mit ihr. Sie stellte ihm Fragen, und während sie sich immer mehr in ihren nutzlosen Fragen und den Antworten des Slaadis verwickelte, verrottete ihre eigene Wand und fiel auf sie... Und so ertrank sie in der Materie des Limbus."
~ */
  IF ~~ THEN REPLY #39660 /* ~"Ich habe noch eine Geschichte, die ich mit dir teilen möchte."~ */ GOTO 19
  IF ~~ THEN REPLY #39661 /* ~"Ich hätte da eine Frage an dich, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39662 /* ~"Ich werd mich jetzt auf die Socken machen. Leb wohl, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from:
  SAY #39551 /* ~Yves lächelt Annah an. "Aber ich würde deine Geschichte wirklich gern hören..."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #39663 /* ~"Nun erzähl schon deine Geschichte, Annah."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DANNAH~ 195
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #39664 /* ~"Bitte, erzähl uns doch deine Geschichte, Annah..."~ */ EXTERN ~DANNAH~ 196
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #39665 /* ~"Nun erzähl schon deine Geschichte, Annah."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DMORTE~ 420
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #39666 /* ~"Bitte, erzähl uns doch deine Geschichte, Annah..."~ */ EXTERN ~DMORTE~ 420
  IF ~~ THEN REPLY #39667 /* ~"Ich habe noch eine Geschichte, die ich dir erzählen kann, Yves."~ */ GOTO 19
  IF ~~ THEN REPLY #39668 /* ~"Ich hätte da eine Frage an dich, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39669 /* ~"Vielleicht ein anderes Mal, Yves. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from:
  SAY #39552 /* ~Yves lächelt. "Das war eine wundervolle Geschichte, Annah. Du solltest niemals zögern, sie zu erzählen. Und jetzt habe ich eine für dich und deinen Begleiter: 'Das ausgetrocknete Land'."~ */
  IF ~~ THEN REPLY #39670 /* ~"Erzähl weiter..."~ */ DO ~SetGlobal("Yves_Story_09","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 65
  IF ~~ THEN REPLY #39671 /* ~"Warte... Ich hätte da eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #39672 /* ~"Ich hör mir den Rest ein anderes Mal an, Yves. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 64.0 66.8
  SAY #39553 /* ~"Einst litt ein großes Dorf unter einer schrecklichen Dürre. Ein Bauer reiste zum Anbetungsstein, und flehte ihn abermals an, ihm den Grund für die Dürre zu nennen. Er fragte den Stein, warum er nichts tat, während die Felder verdorrten, warum Tiere und Menschen leiden mußten, während der Stein gar nichts tat. 'Haben wir nicht genug Opfer dargebracht?' fragte der Bauer, auf den Knien flehend. Aber der Stein antwortete nicht, er stand einfach da und warf seinen Schatten."~ */
  IF ~~ THEN REPLY #39673 /* ~"Ich habe noch eine Geschichte, die ich mit dir teilen möchte."~ */ GOTO 19
  IF ~~ THEN REPLY #39674 /* ~"Ich hätte da eine Frage an dich, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39675 /* ~"Ich werd mich jetzt auf die Socken machen. Leb wohl, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 4.6
  SAY #39554 /* ~Yves nickt. "Welche?"~ */
  IF ~  Global("Yves_Story_01","GLOBAL",1)
~ THEN REPLY #39676 /* ~"Die Kapitel von Staub."~ */ GOTO 22
  IF ~  Global("Yves_Story_02","GLOBAL",1)
~ THEN REPLY #39677 /* ~"Die Uhr und der Quadron."~ */ GOTO 25
  IF ~  Global("Yves_Story_03","GLOBAL",1)
~ THEN REPLY #39678 /* ~"Die Sucherin am Tor."~ */ GOTO 32
  IF ~  Global("Yves_Story_13","GLOBAL",1)
~ THEN REPLY #39679 /* ~"Die Geschichte vom Bienenzüchter."~ */ GOTO 41
  IF ~  Global("Yves_Story_04","GLOBAL",1)
~ THEN REPLY #39680 /* ~"Die vergoldete Geschichte."~ */ GOTO 44
  IF ~  Global("Yves_Story_05","GLOBAL",1)
~ THEN REPLY #39681 /* ~"Der Freier der Dame."~ */ GOTO 46
  IF ~  Global("Yves_Story_06","GLOBAL",1)
~ THEN REPLY #39682 /* ~"Die Geschichte über den Mann, der sich weigerte, seine Erfahrung zu teilen."~ */ GOTO 49
  IF ~  Global("Yves_Story_07","GLOBAL",1)
~ THEN REPLY #39683 /* ~"Die Hinrichtung."~ */ GOTO 52
  IF ~  Global("Yves_Story_09","GLOBAL",1)
~ THEN REPLY #39684 /* ~"Das ausgetrocknete Land."~ */ GOTO 65
  IF ~  Global("Yves_Story_10","GLOBAL",1)
~ THEN REPLY #39685 /* ~"Deine Version von 'Acha'liis Flut'."~ */ GOTO 62
  IF ~  Global("Yves_Story_12","GLOBAL",1)
~ THEN REPLY #39686 /* ~"Blumen und Sinnsaten."~ */ GOTO 60
  IF ~  Global("Iannis_Confessed","GLOBAL",2)
~ THEN REPLY #39687 /* ~"Die Geschichte vom Vater, der Tochter und ihrem Geliebten."~ */ GOTO 72
  IF ~~ THEN REPLY #39688 /* ~"Eigentlich hätte ich da eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #39689 /* ~"Ach, ist nicht so wichtig, Yves. Leb wohl."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 71 even though they appear after this state */
~  GlobalGT("Yves","GLOBAL",0)
~ THEN BEGIN 67 // from:
  SAY #39555 /* ~Yves lächelt dich freundlich an. "Sei nochmals gegrüßt. Bist du gekommen, um Geschichten auszutauschen?"~ */
  IF ~~ THEN REPLY #39690 /* ~"Ja, hab ich."~ */ GOTO 19
  IF ~~ THEN REPLY #39691 /* ~"Nein, aber ich hätte da ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #39692 /* ~"Eigentlich bin ich nur zufällig vorbeigekommen. Leb wohl, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 4.3
  SAY #39556 /* ~Yves nickt. "Ja, aber sie und ich sprechen nicht mehr miteinander, ebenso, wie ich nicht mehr über sie sprechen werde."~ */
  IF ~~ THEN REPLY #39693 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #39694 /* ~"Na dann, leb wohl, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 4.4
  SAY #39557 /* ~Yves nickt und lächelt. "Ja, hab ich, danke."~ */
  IF ~~ THEN REPLY #39695 /* ~"Nichts zu danken. Ich hätte da noch eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #39696 /* ~"Natürlich. Leb wohl, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 4.7 4.8 79.0
  SAY #39558 /* ~"Ecco?" Yves runzelt nachdenklich die Stirn. "Ich habe einmal eine Geschichte gehört von einem Mädchen, die das Wort kannte, das, wenn es ausgesprochen würde, das Multiversum zerstören würde. Vielleicht ist das Ecco. Aber frag Dolora... Soweit ich weiß, trifft sie hin und wieder jemanden, der Ecco kannte, bevor sie aufgehört hat zu sprechen."~ */
  IF ~~ THEN REPLY #39697 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #39698 /* ~"Das ist alles, was ich wissen wollte, Yves. Leb wohl."~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Yves","GLOBAL",0)
GlobalGT("Yvana","GLOBAL",1)
Global("Yves_Shared","AR0605",1)
Global("Iannis_Confessed","GLOBAL",1)
~ THEN BEGIN 71 // from:
  SAY #39559 /* ~Yves lächelt dich freundlich an. "Sei nochmals gegrüßt. Ich habe eine Geschichte gefunden, die du vielleicht hören möchtest. Soll ich sie dir erzählen?"~ */
  IF ~~ THEN REPLY #39699 /* ~"Ja, bitte."~ */ DO ~SetGlobal("Iannis_Confessed","GLOBAL",2)
AddexperienceParty(3000)
~ GOTO 72
  IF ~~ THEN REPLY #39700 /* ~"Nicht gerade jetzt. Ich hätte da ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #39701 /* ~"Ich bin nur zufällig vorbeigekommen, Yves. Ich hör sie mir später an. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from: 66.11 71.0
  SAY #39560 /* ~"Es war einmal ein Mann mit viel Prestige, der aber trotz all seines Reichtums und Status fürchterlich unglücklich war. Seine Tochter war gestorben, und das bißchen Leben, das ihm noch verblieb, war überschattet von der Trauer um ihren Tod."~ */
  IF ~~ THEN REPLY #39702 /* ~"Erzähl weiter..."~ */ GOTO 73
  IF ~~ THEN REPLY #39703 /* ~"Warte... Ich hätte da eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #39704 /* ~"Ich hör mir den Rest ein anderes Mal an, Yves. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 72.0
  SAY #39561 /* ~"Da begab es sich, daß ein früherer Geliebter der Tochter zu ihm kam und ihm mit Verstand und Gefühl über sie erzählte. Dies brachte wieder Licht in das Herz des alten Mannes. Und so fanden beide, Vater und Geliebter, zwei völlig verschiedene Dinge, die sich beide auf unterschiedliche Weise wertvoll für sie erweisen würden."~ */
  IF ~~ THEN REPLY #39705 /* ~"Erzähl weiter..."~ */ GOTO 74
  IF ~~ THEN REPLY #39706 /* ~"Warte... Ich hätte da eine Frage...."~ */ GOTO 4
  IF ~~ THEN REPLY #39707 /* ~"Ich hör mir den Rest ein anderes Mal an, Yves. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 73.0
  SAY #39562 /* ~"Der eine fand den Funken des Lebens wieder, die Trauer schwand aus seinen Augen und aus den Winkeln seiner Seele."

"Und der Mann, der Geliebter, der Sucher fand etwas anderes, was sich für ihn auf seiner Reise als noch viel wertvoller erweisen sollte: Reue."
~ */
  IF ~~ THEN REPLY #39708 /* ~"Erzähl weiter..."~ */ GOTO 75
  IF ~~ THEN REPLY #39709 /* ~"Warte... Ich hätte da eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #39710 /* ~"Ich hör mir den Rest ein anderes Mal an, Yves. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 74.0
  SAY #50722 /* ~"Denn das Bedauern kann das Wesen eines Menschen ändern, aber vielleicht wissen das nur die Grauen Schwestern ganz genau."

Yves nickt dir lächelnd zu. "Ich kenne nicht die Bedeutung dieser Geschichte, aber vielleicht ist sie dir ja irgendwann einmal in der Zukunft nützlich."~ */
  IF ~~ THEN REPLY #39711 /* ~"Danke. Ich hätte da eine Frage an dich, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39712 /* ~"Danke, Yves. Ich mach mich jetzt mal auf die Socken. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from: 53.0
  SAY #50723 /* ~"Über Kossacs sprachen die Herrschner dieses Urteil: 'Dreimal dreißig Tage Gefangenschaft. In dieser Zeit sollst du dein Leben aufgeben und für tot erklärt werden, und dein Körper soll entfernt werden, wenn alle Lebenszeichen erloschen sind.' Kossacs lachte und forderte sie alle heraus, ihm etwas anzutun, aber das Gericht blieb still."~ */
  IF ~~ THEN REPLY #50724 /* ~"Erzähl weiter..."~ */ GOTO 77
  IF ~~ THEN REPLY #50725 /* ~"Warte... Ich hätte da eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #50726 /* ~"Ich hör mir den Rest ein anderes Mal an, Yves. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 76.0
  SAY #50727 /* ~"Die Gnadentöter führten Kossacs in ihr Gefängnis und sperrten in ihn eine dunkle, leere Zelle. Dort gab es keine Pritsche, kein Licht, und die einzige Tür war ein Stahlgitter in der Decke.

Als sie ihn in die Zelle hinunterließen, sagte der Gnadentöter zu ihm: 'In der Ecke deiner Zelle wirst du einen Kelch finden. Darin ist Gift. Du wirst einen schnellen Tod haben.'"

"'Werdet ihr mich nicht exekutieren?' knurrte Kossacs die Wache an.

'Niemand in Sigil soll Hand an dich legen, um dir etwas anzutun', war die Antwort des Gnadentöters."~ */
  IF ~~ THEN REPLY #50729 /* ~"Erzähl weiter..."~ */ GOTO 54
  IF ~~ THEN REPLY #50728 /* ~"Warte... Ich hätte da eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #50730 /* ~"Ich hör mir den Rest ein anderes Mal an, Yves. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from: 54.0
  SAY #50731 /* ~"Aber es kam keine Antwort von dem Gitter in der Decke. In dem Moment stellte Kossacs fest, daß es in der Zelle keine Pritsche gab. Und kein Licht. Und weder Essen und noch Wasser. Alles, was noch übrig blieb, war der zerbrochene Kelch, das Gift war nicht mehr da. Und zum ersten Mal spürte Kossacs die eisige Berührung des sich nähernden Todes.

Nach zweimal dreißig Tagen öffnete sich das Gitter, und Kossacs' erkalteter Körper wurde aus der Zelle genommen. Er hatte sein Leben aufgegeben, und die Exekution war vollzogen."~ */
  IF ~~ THEN REPLY #50732 /* ~"Ich habe noch eine Geschichte, die ich mit dir teilen möchte."~ */ GOTO 19
  IF ~~ THEN REPLY #50733 /* ~"Ich hätte da eine Frage an dich, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #50734 /* ~"Ich werd mich jetzt auf die Socken machen. Leb wohl, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 79 // from: 18.0 18.1 18.2 18.3
  SAY #66763 /* ~"Moment... Das ist noch nicht alles. Auch wenn meine Geschichte mit Ravels Untergang endet, so gibt es doch einige, die behaupten, daß die Hexe noch am Leben ist. Es gibt hier eine stumme Prostituierte, die mal davon erzählt hat, aber sie spricht nicht mehr. Wenn sie mit dir sprechen würde, könnte sie dir vielleicht mehr über Ravel erzählen."~ */
  IF ~~ THEN REPLY #66764 /* ~"Was kannst du mir sonst noch über diese stumme Prostituierte erzählen?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
SetGlobal("Ecco_Rumor_2","AR0605",1)
~ JOURNAL #66744 /* ~Eine Prostituierten hat gesagt, ich solle Dolora über Ecco, die schweigende Prostituierte, fragen. Sie sagte, daß Dolora manchmal mit einem alten Liebhaber von Ecco spricht, der sie kannte, bevor sie aufhörte zu reden.~ */ GOTO 70
  IF ~~ THEN REPLY #66765 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #66766 /* ~"Das ist alles, was ich wissen wollte, Yves. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 80 // from: 18.4 18.5
  SAY #66767 /* ~"Moment... Das ist noch nicht alles. Auch wenn meine Geschichte mit Ravels Untergang endet, so gibt es doch einige, die behaupten, daß die Hexe noch am Leben ist. Ecco gehört zu diesen Leuten. Frag sie über Ravel, und sie kann dir vielleicht mehr über die Hexe erzählen."~ */
  IF ~~ THEN REPLY #66768 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #66770 /* ~"Das ist alles, was ich wissen wollte, Yves. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 81 // from: 19.2
  SAY #67895 /* ~Yves beugt sich zu dir, als du ihr die Geschichte von der Niederkunft der Gasse erzählst... Sie scheint jedes deiner Worte in sich aufzusaugen. Als du fertig bist, lächelt sie erst dich und dann Nordom an. "Diese Geschichte werde ich mir merken. Und jetzt habe ich eine Geschichte für dich: 'Die Uhr und der Quadron'."~ */
  IF ~~ THEN REPLY #67897 /* ~"Erzähl weiter..."~ */ DO ~SetGlobal("Yves_Story_02","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 25
  IF ~~ THEN REPLY #67896 /* ~"Warte... Ich hätte eine Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #67898 /* ~"Ich höre mir den Rest später an, Yves. Leb wohl."~ */ EXIT
END
