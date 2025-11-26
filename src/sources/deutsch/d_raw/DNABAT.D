// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DNABAT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DNABAT~

IF ~  NumTimesTalkedTo(0)
GlobalLT("Curst_Key","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY #49302 /* ~Du siehst einen Mann mit dem Gesicht eines Engels, dessen Augen fast ganz zugekniffen sind, als ob er die Schrecken der Welt nicht sehen oder die Welt nicht die Schrecken in seinem Innern sehen lassen wollte - und doch trägt sein Gesicht Lachfalten. Er grüßt dich mit freundlichem und nachlässigem Tonfall: "Hi."~ */
  IF ~~ THEN REPLY #49303 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 1
  IF ~~ THEN REPLY #49304 /* ~"Sei gegrüßt. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 5.0
  SAY #49305 /* ~"Was willst du wissen?"~ */
  IF ~~ THEN REPLY #49306 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ GOTO 2
  IF ~~ THEN REPLY #49307 /* ~"Wer bist du?"~ */ GOTO 3
  IF ~~ THEN REPLY #49308 /* ~"Ich bin auf der Suche nach einem Deva."~ */ GOTO 4
  IF ~~ THEN REPLY #49309 /* ~"Nichts, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.0
  SAY #49310 /* ~"Was, die Taverne am Verrätertor? Die gehört Besuldeter Barse da drüben, und Stammgäste sind die Leute, die du hier siehst: Marquez, Ex-Harmonium; Kitla, Ex-Angestellte; Dallan, Ex-so-gut-wie-alles und wenn ich mal irgendwelche Geschichten über *ihn* weiß, erzähl ich sie dir vielleicht irgendwann mal; und Dona Quisho, deren Geschichte ich nicht kenne... noch nicht."~ */
  IF ~~ THEN REPLY #49311 /* ~"Wer bist du?"~ */ GOTO 3
  IF ~~ THEN REPLY #49312 /* ~"Ich bin auf der Suche nach einem Deva."~ */ GOTO 4
  IF ~~ THEN REPLY #49313 /* ~"Nichts, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0 4.1
  SAY #49314 /* ~"Ich? Ich bin Nabat. Ehemals Geschichtenerzähler und jetzt degradiert zu einem Geschichtenverkäufer in Kneipen. Ich mach gerade 'ne Pause. Vielleicht erzähl ich dir später eine Geschichte. Vielleicht. Willst du sonst noch was?"~ */
  IF ~~ THEN REPLY #49315 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ GOTO 2
  IF ~~ THEN REPLY #49316 /* ~"Ich bin auf der Suche nach einem Deva."~ */ GOTO 4
  IF ~~ THEN REPLY #49317 /* ~"Nichts, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.1 3.1
  SAY #49318 /* ~Sein Gesicht legt sich in Falten, als er lächelt. "Was läßt dich glauben, daß ich etwas darüber weiß? Jetzt mal im Ernst... Was willst du wissen?"~ */
  IF ~~ THEN REPLY #49319 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ GOTO 2
  IF ~~ THEN REPLY #49320 /* ~"Wer bist du?"~ */ GOTO 3
  IF ~~ THEN REPLY #49321 /* ~"Nichts, danke. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalLT("Curst_Key","GLOBAL",3)
~ THEN BEGIN 5 // from:
  SAY #49322 /* ~Nabat schenkt dir ein Lächeln. "Was willst du diesmal?"~ */
  IF ~~ THEN REPLY #49323 /* ~"Ich hätte gern ein paar Antworten..."~ */ GOTO 1
  IF ~~ THEN REPLY #49324 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Curst_Key","GLOBAL",3)
~ THEN BEGIN 6 // from:
  SAY #49325 /* ~Du siehst einen Mann mit dem Gesicht eines Engels, dessen Augen fast ganz zugekniffen sind, als ob er die Schrecken der Welt nicht sehen oder die Welt nicht die Schrecken in seinem Innern sehen lassen wollte - und doch trägt sein Gesicht Lachfalten. Er grüßt dich mit freundlichem und nachlässigem Tonfall: "Hi. Ich habe gehört, du suchst einen gewissen Schlüssel."~ */
  IF ~~ THEN REPLY #49326 /* ~"So ist es."~ */ DO ~SetGlobal("Caretaker","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #49327 /* ~"Ja, aber im Augenblick nicht. Ich hätte da ein paar Fragen an dich..."~ */ GOTO 9
  IF ~~ THEN REPLY #49328 /* ~"Nicht jetzt. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Curst_Key","GLOBAL",3)
Global("Caretaker","GLOBAL",0)
~ THEN BEGIN 7 // from:
  SAY #49329 /* ~"Aha... Du bist zurück. Du willst also den dritten Teil des Schlüssels?"~ */
  IF ~~ THEN REPLY #49330 /* ~"Ja."~ */ DO ~SetGlobal("Caretaker","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #49331 /* ~"Ja, aber im Augenblick nicht. Ich hätte da ein paar Fragen an dich..."~ */ GOTO 9
  IF ~~ THEN REPLY #49332 /* ~"Nicht jetzt. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0 7.0 9.0 10.0
  SAY #49333 /* ~"Der Verwalter der städtischen Müllhalde ist ein Mann namens Kyse. Scuttlebutt nach soll er ne Menge Gold unter seinen Bodendielen versteckt haben - und es soll eine Bande von Schlägern geben, die geplant hatten, es ihm abzunehmen. Ich hab meine Gründe, daß sie es nicht tun werden. Red mit Kyse und laß dir von ihm die Geschichte erzählen. Mach das, und ich geb dir den Schlüssel. Und falls es dich interessiert, kann ich dir ein paar listige Tricks zeigen."~ */
  IF ~~ THEN REPLY #49334 /* ~"In Ordnung. Ich hätte da zuerst noch ein paar Fragen."~ */ JOURNAL #47847 /* ~Nabat hat mir in der Taverne "Zum Verrätertor" erzählt, was ich machen muß, um an den dritten Teil des Schlüssels zu gelangen: Unten beim Tor zu den Außenländern gäbe es einen Verwalter, von dem man munkle, er sei ein reicher Mann... Man munkle außerdem, daß er bald wegen seines Reichtums dran glauben soll.~ */ GOTO 9
  IF ~~ THEN REPLY #49335 /* ~"Leb wohl."~ */ JOURNAL #47847 /* ~Nabat hat mir in der Taverne "Zum Verrätertor" erzählt, was ich machen muß, um an den dritten Teil des Schlüssels zu gelangen: Unten beim Tor zu den Außenländern gäbe es einen Verwalter, von dem man munkle, er sei ein reicher Mann... Man munkle außerdem, daß er bald wegen seines Reichtums dran glauben soll.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1 7.1 8.0
  SAY #49336 /* ~"Du hast Fragen? Ausgezeichnet. Die Sache ist nur: tust du es, oder tust du es nicht? Ich hab einen Schlüssel, du hast Fragen, und du bekommst die Antworten, wenn die Sache erledigt ist. Dir bleibt nicht viel Zeit."~ */
  IF ~  Global("Caretaker","GLOBAL",0)
~ THEN REPLY #49337 /* ~"Also gut. Was muß ich tun?"~ */ DO ~SetGlobal("Caretaker","GLOBAL",1)
~ GOTO 8
  IF ~  Global("Caretaker","GLOBAL",1)
~ THEN REPLY #49338 /* ~"Warum ist dir das alles so wichtig?"~ */ GOTO 10
  IF ~~ THEN REPLY #49339 /* ~"Ja ja. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY #49340 /* ~"Spielt das wirklich eine Rolle? Was wäre, wenn ich sagen würde, daß er mein Großvater ist? Was wäre, wenn ich sagen würde, daß ich mich an den Leuten rächen möchte, die ihn überfallen wollen? Was wäre, wenn ich sagen würde, daß ich das Geld für mich selbst haben will? Spielt das Motiv eine Rolle? Du bekommst, was du willst - den Schlüssel - und ich ziehe meinen Nutzen aus der Sache."~ */
  IF ~  Global("Caretaker","GLOBAL",0)
~ THEN REPLY #49341 /* ~"Also gut. Was muß ich tun?"~ */ DO ~SetGlobal("Caretaker","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #49342 /* ~"Okay. Leb wohl."~ */ EXIT
END

IF ~  GlobalLT("Caretaker","GLOBAL",5)
~ THEN BEGIN 11 // from:
  SAY #49343 /* ~Du hast den Eindruck, daß dich diese blinzelnden Augen genau unter die Lupe nehmen. "Meine Quellen berichten mir, daß du den Auftrag, den ich dir gegeben hab, immer noch nicht ausgeführt hast. Bring die Sache hinter dich, und du bekommst den dritten Teil des Schlüssels."~ */
  IF ~~ THEN REPLY #49344 /* ~"Kannst du mir noch eben ein paar Fragen beantworten?"~ */ GOTO 12
  IF ~~ THEN REPLY #49345 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #49346 /* ~Er seufzt. "Was willst du denn wissen? Willst du was über mich wissen? Ich bin Nabat. Willst du was über Verdammnis wissen? Frag doch jemanden von den Leuten. Willst du was über diese Taverne wissen? Sie ist voll von Leuten, die betrogen worden sind. Willst du was über den Deva wissen? Erledige den Auftrag, und du bist auf der Suche nach ihm einen Schritt weiter. Jetzt geh, und mach deine Arbeit, und uns allen ist geholfen!"~ */
  IF ~~ THEN REPLY #49347 /* ~"Leb wohl."~ */ EXIT
END

IF ~  Global("Caretaker","GLOBAL",5)
Global("Curst_Key","GLOBAL",3)
~ THEN BEGIN 13 // from:
  SAY #49348 /* ~Nabat lächelt dich breit an, als du hereinkommst. "Ich habe gehört, du bist fertig. Das heißt, du kriegst den dritten Teil des Schlüssels." Seine Augen leuchten auf, und es erklingt der Vers: "'...ihr Anteil gesetzt...'" Als seine Augen wieder normal aussehen, zuckt er die Achseln. "Kein besonders langer Vers, fürchte ich... Aber er wird reichen müssen. Danke für deine Hilfe. Der nächste Teil des Schlüssels ist bei Dallan. Er ist der Typ da drüben mit der jungen Freundin. Ich könnte dir aber auch ein paar Diebestricks beibringen..."~ */
  IF ~~ THEN REPLY #49349 /* ~"Kannst du mir jetzt noch ein paar Fragen beantworten?"~ */ DO ~AddexperienceParty(43750)
SetGlobal("Curst_Key","GLOBAL",4)
SetGlobal("Caretaker","GLOBAL",6)
~ JOURNAL #49351 /* ~Nabat hat mir den dritten Teil des Schlüssels gegeben: "...ihr Anteil festgesetzt...". Jetzt muß ich mit Dallan reden. Er ist derjenige mit der jungen Freundin.~ */ GOTO 14
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #49350 /* ~"Trainiere mich in den Künsten der List."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",4)
AddexperienceParty(43750)
SetGlobal("Caretaker","GLOBAL",6)
~ JOURNAL #49351 /* ~Nabat hat mir den dritten Teil des Schlüssels gegeben: "...ihr Anteil festgesetzt...". Jetzt muß ich mit Dallan reden. Er ist derjenige mit der jungen Freundin.~ */ GOTO 20
  IF ~~ THEN REPLY #67170 /* ~"Danke. Leb wohl."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",4)
AddexperienceParty(43750)
SetGlobal("Caretaker","GLOBAL",6)
~ JOURNAL #49351 /* ~Nabat hat mir den dritten Teil des Schlüssels gegeben: "...ihr Anteil festgesetzt...". Jetzt muß ich mit Dallan reden. Er ist derjenige mit der jungen Freundin.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 15.0 16.0 17.0 18.0 19.0 22.0 24.1 25.1 26.0
  SAY #49352 /* ~"Warum nicht? Ich bin gerade in Plauderlaune."~ */
  IF ~~ THEN REPLY #49353 /* ~"Warum sollte ich den alten Mann retten? Ist das hier nicht eine Stadt des Verrats?"~ */ GOTO 16
  IF ~~ THEN REPLY #49354 /* ~"Erzähl mir was über dich."~ */ GOTO 17
  IF ~~ THEN REPLY #49355 /* ~"Erzähl mir eine Geschichte."~ */ GOTO 18
  IF ~~ THEN REPLY #49356 /* ~"Erzähl mir was über diesen Ort."~ */ GOTO 19
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #49357 /* ~"Kannst du mich in den Künsten der List trainieren?"~ */ GOTO 20
  IF ~~ THEN REPLY #67172 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~  Global("Caretaker","GLOBAL",6)
GlobalGT("Curst_Key","GLOBAL",3)
~ THEN BEGIN 15 // from:
  SAY #49358 /* ~"Du schon wieder, hä? Was willst du denn diesmal?"~ */
  IF ~~ THEN REPLY #49359 /* ~"Die Antworten auf ein paar Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #49360 /* ~"Ich möchte, daß du mich in den Künsten der List trainierst."~ */ GOTO 20
  IF ~~ THEN REPLY #67173 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.0
  SAY #49361 /* ~"Sie sind meine Bande gewesen. Dann haben sie mich ausgeschlossen, weil ich angeblich ihr Geld gestohlen hab - dabei hat man mir das angehängt. Ich hab die Gerüchte um Kyse selbst in die Welt gesetzt. Ich wußte, daß sie darauf reinfallen würden, so daß sie entweder gefaßt würden oder aber Beweise liefern, die ihnen die Wachen auf den Hals hetzen. Ich gewinne so oder so."~ */
  IF ~~ THEN REPLY #49362 /* ~"Verstehe... Ich hätte da noch ein paar Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #49363 /* ~"Schön für dich. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.1
  SAY #49364 /* ~"Mein Name ist Nabat. Einfach nur Nabat. Ich bin vor einiger Zeit aus Automata hierhergekommen, um zu sehen, was ich hier anfangen könnte und um zu prüfen, ob es hier Leute gibt, die es wert sind, meine Geschichten zu hören. Bin da an eine üble Gruppe geraten, und der Rest, nun ja, der Rest ist Geschichte."~ */
  IF ~~ THEN REPLY #49365 /* ~"Was für eine bewegte Lebensgeschichte. Ich hätte da noch ein paar Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #49366 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 14.2
  SAY #49367 /* ~"Im Augenblick arbeite ich an einer Geschichte über Rache. Ich bin gerade inspiriert worden, könnte man sagen." Er lächelt boshaft. "Wenn ich fertig bin, zeig ich sie dir vielleicht, aber vorher nicht. Ich hab's lieber, wenn die Arbeit fertig ist, bevor sie gezeigt wird."~ */
  IF ~~ THEN REPLY #49368 /* ~"Na schön. Beantworte mir noch ein paar Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #49369 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 14.3
  SAY #49370 /* ~"Es ist das, was du siehst, bis auf die Bereiche, die du nicht siehst. Es ist eine Stadt voller Verräter, Politik und Hinterhältigkeit. In ihr ist eine der schlimmsten Facetten der menschlichen Natur zu Hause. Sie ist nicht schön. Ich hoffe, deine Frage zu Verdammnis war metaphysischer Art, denn ich bin *kein* Fremdenführer."~ */
  IF ~~ THEN REPLY #49371 /* ~"Schon klar. Ich hätte da noch ein paar Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #49372 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 13.1 14.4 15.1
  SAY #67171 /* ~"Hast du schon einmal die Kunst des Querhandels angewendet? Hast du zum Überleben schon einmal Geldbörsen geklaut und bist du schon einmal fast lautlos durch dunkle Korridore geschlichen? Oder muß ich bei dir mit dem Training bei Null anfangen?"~ */
  IF ~  GlobalGT("Thief_Training","GLOBAL",0)
~ THEN REPLY #67191 /* ~"Das hab ich schon gemacht."~ */ GOTO 21
  IF ~  Global("Thief_Training","GLOBAL",0)
~ THEN REPLY #67192 /* ~"Ich fürchte, du mußt bei mir von Null anfangen."~ */ GOTO 23
  IF ~~ THEN REPLY #67193 /* ~"Weißt du, vergiß es einfach. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #67174 /* ~"Bist du sicher, daß du die Wandlung vollziehen willst? Du kannst nämlich nicht gleichzeitig kämpfen und stehlen."~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #67196 /* ~"Ich weiß. Ich will kein Kämpfer mehr sein. Dann laß uns mal meine Trickkiste ein bißchen entrosten."~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
~ GOTO 22
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #67197 /* ~"Ich weiß. Ich will kein Magier mehr sein. Dann laß uns mal meine Trickkiste ein bißchen entrosten."~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
~ GOTO 22
  IF ~~ THEN REPLY #67198 /* ~"Nein, ich glaub nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0 21.1
  SAY #67175 /* ~"Gut. Du willst die Grundlagen nicht verlernen, was?"~ */
  IF ~~ THEN REPLY #67199 /* ~"Nein. Ich hätte da noch ein paar Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #67200 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 20.1
  SAY #67176 /* ~"Du bittest um keine kleinen Gefallen, was? Gut. Dann woll'n wir mal anfangen. Zuerst woll'n wir mal deine Geschicklichkeit testen. Balanciere diesen Dolch auf deiner Fingerkuppe." Er wirft dir ein Messer zu.~ */
  IF ~  CheckStatGT(Protagonist,18,DEX)
~ THEN REPLY #67201 /* ~Fang ihn problemlos mit deiner Fingerkuppe auf.~ */ GOTO 24
  IF ~  CheckStatGT(Protagonist,8,DEX)
CheckStatLT(Protagonist,19,DEX)
~ THEN REPLY #67202 /* ~Fang ihn am Griff, und setz ihn dann auf deine Fingerkuppe.~ */ GOTO 25
  IF ~  CheckStatLT(Protagonist,9,DEX)
~ THEN REPLY #67203 /* ~Versuche, ihn aufzufangen.~ */ GOTO 26
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #67177 /* ~Du fängst das Messer mit deiner Fingerkuppe und bringst es mit einer geschickten Bewegung auf ihr zum Drehen. Nabat läßt die Kinnlade herunterfallen. "Nun gut. Du bist offensichtlich schnell genug. Bist du sicher, daß du trainieren willst?"~ */
  IF ~~ THEN REPLY #67224 /* ~"Ja. Lehre mich."~ */ GOTO 27
  IF ~~ THEN REPLY #67225 /* ~"Nein. Vergiß es. Beantworte mir ein paar Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #67226 /* ~"Nein. Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1
  SAY #67178 /* ~Du bekommst den Dolch an seinem Griff zu fassen, und mit einer kurzen Bewegung plazierst du ihn auf der Kuppe deines Zeigefingers. "Ziemlich gut. Bist du sicher, daß du trainieren willst?"~ */
  IF ~~ THEN REPLY #67227 /* ~"Ja. Lehre mich."~ */ GOTO 27
  IF ~~ THEN REPLY #67228 /* ~"Nein. Vergiß es. Beantworte mir ein paar Fragen..."~ */ GOTO 14
  IF ~~ THEN REPLY #67229 /* ~"Nein. Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.2
  SAY #67179 /* ~Du versuchst, den Dolch aufzufangen, doch der Griff gleitet dir aus den Händen, und du kannst es gerade noch vermeiden, dich zu schneiden. "Tut mir leid, mein Freund. Du verfügst offensichtlich nicht über die Reflexe, um ein Postenritter zu werden. Willst du sonst noch was?"~ */
  IF ~~ THEN REPLY #67230 /* ~"Beantworte mir ein paar Fragen."~ */ GOTO 14
  IF ~~ THEN REPLY #67231 /* ~"Nein. Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 24.0 25.0
  SAY #67180 /* ~"Also gut. Zuerst mußt du ein paar grundlegende Dinge beherrschen: List, die Kunst des Verbergens, Schlösser knacken, Fallen finden und entschärfen sowie das Entdecken der wunden Punkte deines Feindes."~ */
  IF ~~ THEN REPLY #67232 /* ~"Erzähl weiter..."~ */ GOTO 28
  IF ~~ THEN REPLY #67233 /* ~"Ich glaube, ich verstehe die Grundlagen. Fangen wir mit dem Training an."~ */ GOTO 34
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #67181 /* ~"Einer der wichtigsten Tricks, die du lernen kannst, ist das lautlose Bewegen. Mit dieser Fähigkeit kannst du an Wachen vorbeischleichen, dich an einen Feind heranschleichen, verhindern, daß du entdeckt wirst, und so weiter. Merk dir aber, daß du diesen Trick nicht anwenden kannst, wenn dich jemand beobachtet."~ */
  IF ~~ THEN REPLY #67234 /* ~"Erzähl weiter..."~ */ GOTO 29
  IF ~~ THEN REPLY #67240 /* ~"Ich glaube, ich verstehe die Grundlagen. Fangen wir mit dem Training an."~ */ GOTO 34
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #67182 /* ~"Also gut. Schlösser! Schlösser machen dir das Leben schwer. Du mußt dich mit der Mechanik dieser Dinge auskennen, wenn du irgendetwas erreichen willst. Nun werden einige Bastarde dafür sorgen, daß dich eine kleine Überraschung erwartet, wenn du versuchst, an ihre Sachen heranzukommen. Deshalb solltest du die Schlösser auf Fallen überprüfen. Ich komm gleich noch darauf zurück."~ */
  IF ~~ THEN REPLY #67235 /* ~"Erzähl weiter..."~ */ GOTO 30
  IF ~~ THEN REPLY #67236 /* ~"Ich glaube, ich verstehe die Grundlagen. Fangen wir mit dem Training an."~ */ GOTO 34
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #67183 /* ~"Du möchtest auch in der Lage sein, mit deiner Hand irgendwo hinzugreifen, ohne daß andere Leute dies bemerken. Manchmal geht es darum, ihnen ihre Geldbörsen zu erleichtern. Manchmal geht es darum, einen kleinen Gegenstand zu bekommen, auf den du ein Auge geworfen hast. Aber du mußt immer bereit sein, zu kämpfen oder zu flüchten, wenn sie dich bemerken."~ */
  IF ~~ THEN REPLY #67237 /* ~"Erzähl weiter..."~ */ GOTO 31
  IF ~~ THEN REPLY #67241 /* ~"Ich glaube, ich verstehe die Grundlagen. Fangen wir mit dem Training an."~ */ GOTO 34
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #67184 /* ~"Weißt du noch, was ich vorhin über Fallen gesagt habe? Sie können dein schlimmster Feind sein. Wenn etwas bewacht wird - oder schlimmer, wenn etwas *nicht* bewacht wird - dann nähere dich vorsichtig, und sieh dich sorgfältig um. Es wird dir nicht sofort auffallen, also laß dir Zeit."~ */
  IF ~~ THEN REPLY #67238 /* ~"Erzähl weiter..."~ */ GOTO 32
  IF ~~ THEN REPLY #67242 /* ~"Ich glaube, ich verstehe die Grundlagen. Fangen wir mit dem Training an."~ */ GOTO 34
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #67185 /* ~"Wenn du auf eine Falle stößt, kannst du entweder versuchen, sie irgendwie zu umgehen oder versuchen, sie zu entschärfen. Wenn du versuchst, sie zu entschärfen, kann es passieren, daß sie direkt vor deinem Gesicht hochgeht. Du gehst ein Risiko ein, wenn du mit fremder Magie oder fremden Maschinen herumspielst."~ */
  IF ~~ THEN REPLY #67239 /* ~"Erzähl weiter..."~ */ GOTO 33
  IF ~~ THEN REPLY #67243 /* ~"Ich glaube, ich verstehe die Grundlagen. Fangen wir mit dem Training an."~ */ GOTO 34
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #67186 /* ~"Und das ist der Clou: der Hinterhältige Angriff! Mit deinen Waffen kannst du dabei richtig Schmerzen verursachen. Du schleichst dich an jemanden heran, suchst dir in Ruhe dein Ziel aus, und dann läßt du es fliegen. Wenn du es richtig machst, kannst du ernsthaften Schaden anrichten. Wenn du angreifst, weiß der andere natürlich, daß du da bist. Also wähl dein Ziel sorgfältig aus."~ */
  IF ~~ THEN REPLY #67244 /* ~"In Ordnung. Fangen wir mit dem Training an."~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 27.1 28.1 29.1 30.1 31.1 32.1 33.0
  SAY #67187 /* ~"Als erstes mußt du lernen, daß du nichts überstürzen darfst. Zu große Eile führt zu Fehlern, und Fehler bringen Schwierigkeiten mit sich. Und Schwierigkeiten kannst du nun gar nicht gebrauchen..."
Deine Ausbildung zum Dieb beginnt.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #67245 /* ~Lern soviel du kannst.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",4)
GiveExperience(Protagonist,3000)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
SetNamelessClass(THIEF)
~ JOURNAL #67248 /* ~Ich habe mich in Verdammnis von Nabat, einem Lehrer in der Taverne "Zum Verrätertor", zum Dieb ausbilden lassen.~ */ GOTO 35
  IF ~  CheckStatGT(Protagonist,12,DEX)
CheckStatLT(Protagonist,18,DEX)
~ THEN REPLY #67246 /* ~Lern soviel du kannst.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",4)
GiveExperience(Protagonist,3500)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
SetNamelessClass(THIEF)
~ JOURNAL #67248 /* ~Ich habe mich in Verdammnis von Nabat, einem Lehrer in der Taverne "Zum Verrätertor", zum Dieb ausbilden lassen.~ */ GOTO 36
  IF ~  CheckStatGT(Protagonist,17,DEX)
~ THEN REPLY #67247 /* ~Lern soviel du kannst.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",4)
GiveExperience(Protagonist,3750)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
SetNamelessClass(THIEF)
~ JOURNAL #67248 /* ~Ich habe mich in Verdammnis von Nabat, einem Lehrer in der Taverne "Zum Verrätertor", zum Dieb ausbilden lassen.~ */ GOTO 36
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #67188 /* ~Nach einer Weile macht er eine Pause. "Genug. Du lernst schnell. So weit kann ich dich ausbilden. Den Rest mußt du dir selbst beibringen."~ */
  IF ~~ THEN REPLY #67249 /* ~"Vielen Dank. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.1 34.2
  SAY #67189 /* ~Nach einer Weile macht er eine Pause. "Genug. Du lernst schnell. So weit kann ich dich ausbilden. Den Rest mußt du dir selbst beibringen... Aber bei deinem Geschick sieht es fast so aus, als ob du das alles schon mal gemacht hast." Während er spricht, wird dir bewußt, *daß* du dies schon mal gemacht hast,... daß du all diese Fertigkeiten einst besessen hast und daß das Training sie zu neuem Leben erweckt hat.~ */
  IF ~~ THEN REPLY #67250 /* ~"Vielleicht habe ich das schon einmal gemacht. Ich danke dir, und leb wohl."~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #67190 /* ~Als verblichene Erinnerungen an das Schleichen in dunklen Korridoren und das Umgehen von tödlichen Fallen vor deinem geistigen Auge auftauchen, gelingt es dir, dich gut genug zu erinnern, um mehr zu 'lernen' als Nabat dir beigebracht hat.~ */
  IF ~~ THEN REPLY #67251 /* ~Geh weg.~ */ EXIT
END
