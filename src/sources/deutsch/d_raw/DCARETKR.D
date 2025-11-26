// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCARETKR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCARETKR~

IF ~  Global("Current_Area","GLOBAL",900)
Global("Know_Kyse","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3196 /* ~Ein verwahloster alter Mann, der nach Müll stinkt, ruft dir zu: "Fremder! Halte einen Moment ein! Ich muß dir erzählen, was mit diesem Ort geschehen ist!"~ */
  IF ~~ THEN REPLY #3197 /* ~"Wer bist du?"~ */ DO ~SetGlobal("Know_Kyse","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #60250 /* ~"Was ist passiert?"~ */ GOTO 1
  IF ~~ THEN REPLY #60251 /* ~"Nein. Geh mir aus dem Weg."~ */ GOTO 3
END

IF ~  Global("Current_Area","GLOBAL",900)
Global("Know_Kyse","GLOBAL",1)
~ THEN BEGIN 1 // from: 0.1 2.0
  SAY #60252 /* ~"Du bist zurückgekehrt in eine Stadt des Elends, Fremder. Der Deva erhebt sich triumphierend aus den Trümmern, nachdem er uns in dieses Verderben gestürzt hat. Es gibt nur einen Ausweg: den Deva zu stürzen und die Stadt dazu zu bewegen, ihren Verrat öffentlich zu widerrufen. Je stärker der Glaube der Stadt an Vergebung, desto schwächer der Deva."~ */
  IF ~~ THEN REPLY #60253 /* ~"Trias hat all das getan?"~ */ JOURNAL #60254 /* ~Kyse, der Verwalter, hat mir erzählt, daß Trias von seinem Gefängnis aufgefahren sei und die Stadt verflucht habe. Dadurch hätte er bewirkt, daß sie nach Carzeri abgeglitten sei. Der Verwalter hat mir auch gesagt, der beste Weg, Trias zu bekämpfen, bestünde darin, den Einfluß des Bösen und des Chaos in dieser Stadt zu schwächen, d. h. die Bewohner davon zu überzeugen, ihre guten Seiten zu zeigen.~ */ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #60255 /* ~"Ich bin Kyse, Der Müllhalden-Verwalter der Stadt. Ich habe versucht, ihnen gutes Benehmen und Freundlichkeit beizubringen, doch sie hielten nichts davon, und das haben sie nun davon."~ */
  IF ~~ THEN REPLY #60256 /* ~"Was ist passiert?"~ */ GOTO 1
  IF ~~ THEN REPLY #60257 /* ~"Geh mir aus dem Weg. Ich habe etwas zu erledigen."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.2 2.1
  SAY #60258 /* ~"Die Katastrophe erwartet dich, Fremder! Die Stadt wird zerstört werden, wenn der Deva nicht besiegt werden kann! Wenn die Stadt nicht in die Außenländer zurückkehren kann, ist für alle alles verloren! Wir sind in Carzeri, aus dem nicht einmal die Titanen entkommen können! Nimm dies, denn es kann dir helfen!" Er dreht sich um und flieht in das Chaos hinter ihm.~ */
  IF ~~ THEN REPLY #60259 /* ~"Sonderbarer Kauz."~ */ DO ~GiveItem("SPWI802",Protagonist)
EscapeArea()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0
  SAY #60260 /* ~"Der Deva erhob sich vom Boden und verdammte die Stadt für ihre Missetaten. Eine große Verwirrung breitete sich aus, als die Gebäude um uns herum einstürzten - und dann kamen wir an. Es gibt nur eine Möglichkeit, sich gegen Trias zu wehren - und die ist, ihn durch gute Taten zu schwächen und die Gedanken der Städter weg vom Chaos und dem Bösen hin zu Güte zu wenden. Sonst ist ihm der Sieg sicher." Er schaut sich um. "Ich habe noch zu tun. Nimm dies. Es wird dir helfen."~ */
  IF ~~ THEN REPLY #60261 /* ~"Viel Glück. Wiedersehen."~ */ DO ~GiveItem("SPWI802",Protagonist)
EscapeArea()
~ EXIT
END

IF ~  GlobalGT("Caretaker","GLOBAL",4)
~ THEN BEGIN 5 // from:
  SAY #60262 /* ~"Meine Dankbarkeit ist dir gewiß, Fremder. Kann ich irgendwas für dich tun?"~ */
  IF ~~ THEN REPLY #60263 /* ~"Ich brauche Heilung."~ */ DO ~StartStore("Kyse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #60264 /* ~"Was wollten denn diese Schläger?"~ */ GOTO 6
  IF ~~ THEN REPLY #60265 /* ~"Erzähl mir was über dich."~ */ GOTO 7
  IF ~~ THEN REPLY #60266 /* ~"Erzähl mir von Verdammnis."~ */ GOTO 8
  IF ~~ THEN REPLY #60267 /* ~"Erzähl mir von dieser Müllhalde."~ */ GOTO 17
  IF ~~ THEN REPLY #68154 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.1 7.1 8.1
  SAY #60268 /* ~"Das entzieht sich meiner Kenntnis. Man erzählte sich wohl, daß ich auf einem Goldschatz sitze, in den Besitz großer Reichtümer gekommen sei. Alles unwahr - der einzige Reichtum, den ich mein eigen nenne, ist mein Glaube, der mich in einer Stadt der Falschheit aufrecht erhält. Ich habe versucht, meinen Reichtum an andere weiterzugeben, aber nur wenige hier wollen ihn mit mir teilen."~ */
  IF ~~ THEN REPLY #60269 /* ~"Verstehe. Erzähl mir von dir."~ */ GOTO 7
  IF ~~ THEN REPLY #60270 /* ~"Erzähl mir von Verdammnis."~ */ GOTO 8
  IF ~~ THEN REPLY #60271 /* ~"Ich brauche Heilung."~ */ DO ~StartStore("Kyse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #60272 /* ~"Erzähl mir von dieser Müllhalde."~ */ GOTO 17
  IF ~~ THEN REPLY #68153 /* ~"Verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.2 6.0 8.2
  SAY #60273 /* ~"Ich bin Kyse, der Müllhalden-Verwalter der Stadt. Ich kümmere mich um ihren Müll, und metaphorisch gesprochen habe ich schon eine ganze Menge Seelen denselben Weg gehen sehen. Ich bin die Stimme, die sie zum Guten anhält - doch ich fürchte, sie hören nicht auf mich."~ */
  IF ~~ THEN REPLY #60274 /* ~"Ich brauche Heilung."~ */ DO ~StartStore("Kyse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #60275 /* ~"Was wollten denn diese Schläger?"~ */ GOTO 6
  IF ~~ THEN REPLY #60276 /* ~"Erzähl mir von Verdammnis."~ */ GOTO 8
  IF ~~ THEN REPLY #60277 /* ~"Erzähl mir was über diese Müllhalde."~ */ GOTO 17
  IF ~~ THEN REPLY #68152 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.3 6.1 7.2
  SAY #60278 /* ~"Diese Stadt schwebt am Abgrund der Katastrophe. Alles erdenklich Böse geschieht hier, und nichts ist so, wie es scheint. Alles ist verborgen hinter einer Fassade des Anstands, doch das Gift schadet denen, die es einatmen. Es ist eine Gift sprühende Stadt, voll von mit Gift sprühenden Leuten."~ */
  IF ~~ THEN REPLY #60279 /* ~"Ich brauche Heilung."~ */ DO ~StartStore("Kyse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #60280 /* ~"Was wollten denn diese Schläger?"~ */ GOTO 6
  IF ~~ THEN REPLY #60281 /* ~"Erzähl mir was über dich."~ */ GOTO 7
  IF ~~ THEN REPLY #60282 /* ~"Erzähl mir was über diese Müllhalde."~ */ GOTO 17
  IF ~~ THEN REPLY #68151 /* ~"Verstehe. Leb wohl."~ */ EXIT
END

IF ~  Global("Caretaker","GLOBAL",4)
~ THEN BEGIN 9 // from:
  SAY #60283 /* ~"Du hast mir das Leben gerettet." Kyse scheint etwas entgeistert darüber, daß so etwas in Verdammnis geschehen kann. "Ich verdanke dir viel. Solltest du jemals Heilung brauchen, komm zu mir. Ich werde dir helfen, soweit ich kann. Entschuldige mich, ich muß mich hinsetzen."~ */
  IF ~~ THEN REPLY #60284 /* ~"Klar. Leb wohl."~ */ DO ~SetGlobal("Caretaker","GLOBAL",5)
~ EXIT
END

IF ~  GlobalLT("Caretaker","GLOBAL",3)
NumTimesTalkedTo(0)
~ THEN BEGIN 10 // from:
  SAY #60285 /* ~Du siehst einen zerlumpten alten Mann, der nach Abfall stinkt. Er wirkt irgendwie vitaler als die meisten Leute in der Stadt, lebhafter, so als würde er gar nicht hierher gehören. Er schaut auf, als du näherkommst und strafft die Schultern. "Willst du zu Kyse? Hast wohl Geschichten gehört von Weisheit und Redlichkeit? Von beispielhaftem Verhalten, an dem man sich orientiert?"~ */
  IF ~~ THEN REPLY #60286 /* ~"Wer bist du?"~ */ DO ~SetGlobal("Know_Kyse","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #60287 /* ~"Was ist das für ein Ort?"~ */ DO ~SetGlobal("Know_Kyse","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #60288 /* ~"Was kannst du mir über Verdammnis erzählen?"~ */ DO ~SetGlobal("Know_Kyse","GLOBAL",1)
~ GOTO 14
  IF ~  Global("Caretaker","GLOBAL",1)
~ THEN REPLY #60289 /* ~"Ich hab gehört, du hast Ärger mit einer Gang von Schlägern."~ */ DO ~SetGlobal("Know_Kyse","GLOBAL",1)
SetGlobal("Caretaker","GLOBAL",2)
~ GOTO 15
  IF ~~ THEN REPLY #60290 /* ~"Erzähl mir was über diese Müllhalde."~ */ DO ~SetGlobal("Know_Kyse","GLOBAL",1)
~ GOTO 17
  IF ~~ THEN REPLY #68150 /* ~"Nein. Leb wohl."~ */ DO ~SetGlobal("Know_Kyse","GLOBAL",1)
~ EXIT
END

IF ~  GlobalLT("Caretaker","GLOBAL",3)
NumTimesTalkedToGT(0)
~ THEN BEGIN 11 // from:
  SAY #60291 /* ~"Bist du gekommen, um Erleuchtung zu erhalten? Weisheit? Um... Oh, du bist es." Er wirkt etwas enttäuscht.~ */
  IF ~~ THEN REPLY #60292 /* ~"Wer bist du?"~ */ GOTO 12
  IF ~~ THEN REPLY #60293 /* ~"Was ist das für ein Ort?"~ */ GOTO 13
  IF ~~ THEN REPLY #60294 /* ~"Was kannst du mir über Verdammnis erzählen?"~ */ GOTO 14
  IF ~  Global("Caretaker","GLOBAL",1)
~ THEN REPLY #60295 /* ~"Ich hab gehört, du hast Ärger mit einer Gang von Schlägern."~ */ DO ~SetGlobal("Caretaker","GLOBAL",2)
~ GOTO 15
  IF ~~ THEN REPLY #60296 /* ~"Erzähl mir was über diese Müllhalde."~ */ GOTO 17
  IF ~~ THEN REPLY #68149 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0 11.0 16.0
  SAY #60297 /* ~"Ich bin Kyse, der Müllhalden-Verwalter der Stadt. Ich kümmere mich um ihren Müll, und metaphorisch gesprochen habe ich schon eine ganze Menge Seelen denselben Weg gehen sehen. Ich bin die Stimme, die sie zum Guten anhält - doch ich fürchte, sie hören nicht auf mich."~ */
  IF ~~ THEN REPLY #60298 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #60299 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.1 11.1 16.1
  SAY #60300 /* ~"Dies ist der Abfall der Stadt. Ich wache darüber, verjage das Ungeziefer, das darin wühlt. Ich achte darauf, daß er nicht überläuft und die Stadt verdreckt. Als Gegenleistung bringen sie mir mehr davon."~ */
  IF ~~ THEN REPLY #60301 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #60302 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.2 11.2 16.2
  SAY #60303 /* ~"Diese Stadt schwebt am Abgrund der Katastrophe. Alles erdenklich Böse geschieht hier, und nichts ist so, wie es scheint. Alles ist verborgen hinter einer Fassade des Anstands, doch das Gift schadet denen, die es einatmen. Es ist eine Gift sprühende Stadt, voll von mit Gift sprühenden Leuten."~ */
  IF ~~ THEN REPLY #60304 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #60305 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.3 11.3 16.3
  SAY #60306 /* ~"Wernet ist der Mann, ein Anführer von Läusen, ein Sammler von Sünden. Er sagt, ich habe Münzen, ich soll sie ihm geben, aber mein Reichtum liegt nur in meinem Herzen und meinem Glauben. Ich habe ihm das gesagt. Ich fürchte, daß er nicht glaubt. Geh, überzeug ihn davon. Bitte. Er ist bei den Kaufleuten östlich von hier."~ */
  IF ~~ THEN REPLY #60307 /* ~"Na klar. Ich hätte da nur noch ein paar Fragen..."~ */ JOURNAL #60309 /* ~Kyse, der Müllhalden-Verwalter, hat mich gebeten, mit einem Schläger namens Wernet zu sprechen, und ihn zu überzeugen, daß der alte Mann nichts von Wert besitze. Ich bin gerne bereit, das zu glauben.~ */ GOTO 16
  IF ~~ THEN REPLY #60308 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.0 13.0 14.0 15.0 17.0
  SAY #60310 /* ~"Was brauchst du?"~ */
  IF ~~ THEN REPLY #60311 /* ~"Wer bist du?"~ */ GOTO 12
  IF ~~ THEN REPLY #60312 /* ~"Was ist das für ein Ort?"~ */ GOTO 13
  IF ~~ THEN REPLY #60313 /* ~"Was kannst du mir über Verdammnis erzählen?"~ */ GOTO 14
  IF ~  Global("Caretaker","GLOBAL",1)
~ THEN REPLY #60314 /* ~"Ich hab gehört, du hast Ärger mit einer Gang von Schlägern."~ */ DO ~SetGlobal("Caretaker","GLOBAL",2)
~ GOTO 15
  IF ~~ THEN REPLY #60315 /* ~"Erzähl mir was über diese Müllhalde."~ */ GOTO 17
  IF ~~ THEN REPLY #68148 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 5.4 6.3 7.3 8.3 10.4 11.4 16.4
  SAY #68144 /* ~Er beugt sich verschwörerisch nach vorne. "Ich kenne hier einen geheimen Eingang zum Untergrund, einen geheimen Ort, den fast niemand kennt. Es gibt einen Weg in die Unterstadt..." Er hält kurz inne. "Aber ich habe ihn nie benutzt. Ich spüre, daß ich niemals zurückkehren könnte, sollte ich dort hinuntergehen. Der Weg nach unten ist rutschig, und das Geröll würde hinter mir einstürzen. Wenn ich zum Sterben bereit bin, werde ich dort hinuntergehen und mich den Monstern zum Fraß vorwerfen."~ */
  IF ~~ THEN REPLY #68145 /* ~"Ich hätte noch ein paar Fragen..."~ */ JOURNAL #68147 /* ~Der Verwalter der Müllhalde hat mir von einem geheimen Eingang zum Untergrund von Verdammnis erzählt. Er meinte auch, daß, sollte ich diesen Weg beschreiten, ich mit hoher Wahrscheinlichkeit nicht auf demselben Weg zurückkommen würde. Ich werd's mir merken.~ */ GOTO 16
  IF ~~ THEN REPLY #68146 /* ~"Verstehe. Leb wohl."~ */ JOURNAL #68147 /* ~Der Verwalter der Müllhalde hat mir von einem geheimen Eingang zum Untergrund von Verdammnis erzählt. Er meinte auch, daß, sollte ich diesen Weg beschreiten, ich mit hoher Wahrscheinlichkeit nicht auf demselben Weg zurückkommen würde. Ich werd's mir merken.~ */ EXIT
END
