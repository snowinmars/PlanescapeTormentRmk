// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSCAPT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSCAPT~

IF ~  NumTimesTalkedTo(0)
GlobalGT("Current_Area","GLOBAL",800)
~ THEN BEGIN 0 // from:
  SAY #60328 /* ~Du siehst einen Mann mit gehetztem Gesichtsausdruck in imposanter Rüstung. Er kommandiert mehrere andere Wachen bei der Verteidigung der Stadt. "Ich habe keine Zeit zum Reden!", faucht er dich an. "Wenn de dich nützlich machen willst, dann mach diesem verdammten Deva den Garaus oder vernicht ein paar Gehreless! Aber verschwend nicht meine Zeit!" Er wendet sich wieder seinen Männern zu.~ */
  IF ~~ THEN REPLY #60329 /* ~"Was ist denn los?"~ */ GOTO 1
  IF ~~ THEN REPLY #60330 /* ~"Leb wohl."~ */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #60331 /* ~"Was hier los is? Wo lebst'n du eigentlich? Dieser verfluchte Deva is aus dem Boden geschossen und hat uns in Carzeri reingezogen, das is los! Und jetzt müssen wir uns mit den Gehreless rumschlagen, die uns für 'ne schmackhafte Mahlzeit für den kleinen Hunger zwischendurch halten. Wir stecken mitten in einer Krisensituation, Dussel, also mach, daß du aus dem Weg kommst!" Er stößt dich unsanft zur Seite, stürmt an dir vorbei, und antwortet nicht weiter auf deine Fragen.~ */
  IF ~~ THEN REPLY #60332 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalGT("Current_Area","GLOBAL",800)
~ THEN BEGIN 2 // from: 0.1
  SAY #60333 /* ~"Dussel, du bist mir im Weg... räum das Chaos auf, das der Deva angerichtet hat, wenn du was für die Stadt tun willst! Aber HÖR AUF, MICH ZU NERVEN!"~ */
  IF ~~ THEN REPLY #60334 /* ~"Schon gut, schon gut..."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
GlobalLT("Current_Area","GLOBAL",800)
~ THEN BEGIN 3 // from:
  SAY #60335 /* ~Du siehst einen schneidigen, militärisch effizienten Mann in der Uniform der Wache von Verdammnis - doch er strahlt noch mehr Autorität aus. Er wendet sich dir verächtlich zu. "Was willst du?"~ */
  IF ~~ THEN REPLY #60336 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ GOTO 5
  IF ~~ THEN REPLY #60337 /* ~"Ich möchte mit dem Verantwortlichen sprechen."~ */ GOTO 6
  IF ~  GlobalGT("Snuff_Carl","GLOBAL",0)
GlobalLT("Snuff_Carl","GLOBAL",4)
Global("Roberta_Betrayed","GLOBAL",0)
~ THEN REPLY #60338 /* ~"Eine Frau namens Lady Roberta schmiedet Pläne, ihren Mann Carl zu ermorden. Ich glaube, er ist einer der Adjutanten des Stadtverwalters."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",4)
SetGlobal("Roberta_Betrayed","GLOBAL",1)
~ GOTO 7
  IF ~  Global("Snuff_Carl","GLOBAL",2)
Global("Regret","GLOBAL",10)
~ THEN REPLY #60340 /* ~"Ich möchte mich freiwillig stellen für den Mord an Carl Parfidor."~ */ GOTO 8
  IF ~  GlobalGT("C_Off","GLOBAL",2)
GlobalLT("C_Off","GLOBAL",6)
~ THEN REPLY #60341 /* ~"Einer der Beamten dieser Stadt hat mich angeworben, einen anderen von ihnen umzubringen. Ich wollte dich nur davon unterrichten."~ */ GOTO 9
  IF ~~ THEN REPLY #60342 /* ~"Ich möchte, daß du mich verhaftest."~ */ GOTO 10
  IF ~~ THEN REPLY #60343 /* ~"Ich bin auf der Suche nach einem Deva."~ */ GOTO 11
  IF ~~ THEN REPLY #60344 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalLT("Current_Area","GLOBAL",800)
~ THEN BEGIN 4 // from: 5.0 7.0 11.0 12.0 13.0 14.0
  SAY #60345 /* ~"Was?"~ */
  IF ~~ THEN REPLY #60346 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ GOTO 5
  IF ~~ THEN REPLY #60347 /* ~"Ich möchte mit dem Verantwortlichen sprechen."~ */ GOTO 6
  IF ~  GlobalGT("Snuff_Carl","GLOBAL",0)
GlobalLT("Snuff_Carl","GLOBAL",4)
Global("Roberta_Betrayed","GLOBAL",0)
~ THEN REPLY #60348 /* ~"Eine Frau namens Lady Roberta schmiedet Pläne, ihren Mann Carl zu ermorden. Ich glaube, er ist einer der Adjutanten des Stadtverwalters."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",4)
SetGlobal("Roberta_Betrayed","GLOBAL",1)
~ GOTO 7
  IF ~  Global("Snuff_Carl","GLOBAL",2)
Global("Regret","GLOBAL",10)
~ THEN REPLY #60349 /* ~"Ich möchte mich freiwillig stellen für den Mord an Carl Parfidor."~ */ GOTO 8
  IF ~  GlobalGT("C_Off","GLOBAL",2)
GlobalLT("C_Off","GLOBAL",6)
~ THEN REPLY #60350 /* ~"Einer der Beamten dieser Stadt hat mich angeworben, einen anderen von ihnen umzubringen. Ich wollte dich nur davon unterrichten."~ */ GOTO 9
  IF ~~ THEN REPLY #60351 /* ~"Ich möchte, daß du mich verhaftest."~ */ GOTO 10
  IF ~~ THEN REPLY #60352 /* ~"Ich bin auf der Suche nach einem Deva."~ */ GOTO 11
  IF ~~ THEN REPLY #60353 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 4.0
  SAY #60354 /* ~"Dies ist Verdammnis. Was soll ich dir sagen? Daß es eine Stadt ist, die mit Betrug durchtränkt ist, die von einem Wahnsinnigen geführt wird, in der es mehr Intrigen gibt als Gehreless in Carzeri, wo du einem Fremden ebensowenig trauen kannst wie deiner eigenen Familie? Daß es eine Stadt des Betrugs und der Vergeltung ist, die ihresgleichen sucht? Schau dich doch um, Dussel, und sieh selbst, was für ein Ort dies ist."~ */
  IF ~~ THEN REPLY #60355 /* ~"Na gut. Dann beantworte mir ein paar andere Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #60356 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1 4.1
  SAY #60357 /* ~"Mit dem Verantwortlichen? Wozu zum Teufel?"~ */
  IF ~  GlobalGT("Snuff_Carl","GLOBAL",0)
GlobalLT("Snuff_Carl","GLOBAL",4)
Global("Roberta_Betrayed","GLOBAL",0)
~ THEN REPLY #60358 /* ~"Eine Frau namens Lady Roberta schmiedet Pläne, ihren Mann Carl zu ermorden. Ich glaube, er ist einer der Adjutanten des Stadtverwalters."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",4)
SetGlobal("Roberta_Betrayed","GLOBAL",1)
~ GOTO 7
  IF ~  Global("Snuff_Carl","GLOBAL",2)
Global("Regret","GLOBAL",10)
~ THEN REPLY #60359 /* ~"Ich möchte mich freiwillig stellen für den Mord an Carl Parfidor."~ */ GOTO 8
  IF ~  GlobalGT("C_Off","GLOBAL",2)
GlobalLT("C_Off","GLOBAL",6)
~ THEN REPLY #60360 /* ~"Einer der Beamten dieser Stadt hat mich angeworben, einen anderen von ihnen umzubringen. Ich wollte dich nur davon unterrichten."~ */ GOTO 9
  IF ~~ THEN REPLY #60361 /* ~"Ich möchte, daß du mich verhaftest."~ */ GOTO 10
  IF ~~ THEN REPLY #60362 /* ~"Ich bin auf der Suche nach einem Deva."~ */ GOTO 11
  IF ~~ THEN REPLY #60363 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.2 4.2 6.0
  SAY #60364 /* ~"So, tut sie das? Wir werden uns darum kümmern, mein Freund. Die Bürger von Verdammnis sind dir zu Dank verpflichtet."~ */
  IF ~~ THEN REPLY #60365 /* ~"Super. Ich hätte ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #60366 /* ~"Super. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.3 4.3 6.1
  SAY #60367 /* ~"Wirklich? Dann erzähl mal... Wenn ich's mir recht überlege, solltest du es lieber der Zelle erzählen, in der du sitzen wirst. Also, kommst du mit, ohne Probleme zu machen?"~ */
  IF ~~ THEN REPLY #60368 /* ~"Ich ergebe mich."~ */ DO ~SetGlobal("Curst_Arrest","GLOBAL",1)
TeleportParty("AR0702",[623.1787],2)
~ EXIT
  IF ~~ THEN REPLY #60369 /* ~"Machst du Witze? Kommt nicht in Frage."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.4 4.4 6.2
  SAY #60370 /* ~Seine Augen sehen dich unter dem Helm hervor scharf an. "Nenn mir den Namen. Wer plant was?"~ */
  IF ~~ THEN REPLY #60371 /* ~"Siabha plant, An'izius zu ermorden."~ */ DO ~SetGlobal("C_Off","GLOBAL",7)
~ JOURNAL #68276 /* ~Ich hab' den Oberbefehlshaber der Wache von Verdammnis darüber informiert, daß Siabha An'izius ermorden will. Er war hocherfreut über die Botschaft und hat versprochen, sie festzunehmen. Ich hoffe, ich habe das Richtige getan...~ */ GOTO 12
  IF ~~ THEN REPLY #60372 /* ~"An'izius wollte, daß ich Siabha etwas anhänge, die mich ihrerseits überreden wollte, An'izius etwas anzuhängen. Sie sind beide korrupt."~ */ DO ~SetGlobal("C_Off","GLOBAL",8)
AddexperienceParty(200000)
~ GOTO 13
  IF ~~ THEN REPLY #60373 /* ~"An'izius versucht, Siabha zu ermorden."~ */ DO ~SetGlobal("C_Off","GLOBAL",6)
~ JOURNAL #68277 /* ~Ich hab' den Oberbefehlshaber der Wache von Verdammnis darüber informiert, daß Siabha An'izius ermorden will. Er war hocherfreut über die Botschaft und hat versprochen, die Githyanki-Frau festzunehmen. Ich hoffe, ich habe das Richtige getan...~ */ GOTO 14
  IF ~~ THEN REPLY #60374 /* ~"Vergiß einfach, daß ich was gesagt habe."~ */ GOTO 15
END

IF ~~ THEN BEGIN 10 // from: 3.5 4.5 6.3
  SAY #60375 /* ~"Für welches Verbrechen? Wenn du wegen einer Formsache verhaftet werden willst, wende dich an eine meiner Wachen. Ich bin ein vielbeschäftigter Mann." Er durchstreift mit den Augen die Umgebung und ignoriert dich demonstrativ.~ */
  IF ~~ THEN REPLY #60376 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 3.6 4.6 6.4
  SAY #60377 /* ~Er neigt sich zu dir herüber. "Warum um alles in der Welt suchst du denn gerade hier nach einem Deva? Soweit ich weiß, ist seit langer, langer Zeit kein Deva mehr in Verdammnis gewesen. Er wäre zugrunde gegangen durch all den Verrat und das Böse, das in der Luft liegt." Er lacht.~ */
  IF ~~ THEN REPLY #60378 /* ~"Na schön. Beantworte mir noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #60379 /* ~"Okay. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.0 15.0
  SAY #60380 /* ~Seine Augen verengen sich zu schmalen Schlitzen. "Ich will sie schon seit langem in einer meiner Zellen sehen. Ich habe eine besondere Strafe für sie vorbereitet. Ich schicke gleich eine Abteilung. Besten Dank, Fremder."~ */
  IF ~~ THEN REPLY #60381 /* ~"Denk dir nichts dabei. Ich habe noch weitere Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #60382 /* ~"Klar. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.1 15.1
  SAY #60383 /* ~"Beide, hä? Gut. Damit dürfte sich mein Einfluß in der Stadt noch verstärken. Sie sind schon so gut wie abgeführt. Besten Dank, Fremder."~ */
  IF ~~ THEN REPLY #60384 /* ~"Denk dir nichts dabei. Ich habe noch weitere Fragen..."~ */ JOURNAL #60386 /* ~Ich habe den Oberbefehlshaber der Wache in Verdammnis darüber informiert, daß sowohl Siabha als auch An'Izius versuchten, sich gegenseitig erfundene Verbrechen in die Schuhe zu schieben. Er war erfreut, dies zu hören. Ich hoffe, ich habe das Richtige getan...~ */ GOTO 4
  IF ~~ THEN REPLY #60385 /* ~"Klar. Leb wohl."~ */ JOURNAL #60386 /* ~Ich habe den Oberbefehlshaber der Wache in Verdammnis darüber informiert, daß sowohl Siabha als auch An'Izius versuchten, sich gegenseitig erfundene Verbrechen in die Schuhe zu schieben. Er war erfreut, dies zu hören. Ich hoffe, ich habe das Richtige getan...~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.2 15.2
  SAY #60390 /* ~"Also hat dieser elende Githyanki endlich einen Fehler gemacht, hä? Er wird ein willkommener Zuwachs in unserem Gefängnis sein. Ich schicke gleich eine Abteilung, um ihn zu verhaften. Besten Dank, Fremder."~ */
  IF ~~ THEN REPLY #60391 /* ~"Denk dir nichts dabei. Ich habe noch weitere Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #60392 /* ~"Klar. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 9.3
  SAY #60394 /* ~Er starrt dich wütend an. "Nein, ich werde es nicht vergessen. Entweder du gibst mir die Information, oder ich wringe sie dir aus deinem narbigen Hals heraus."~ */
  IF ~~ THEN REPLY #60395 /* ~"Siabha plant, An'izius zu ermorden."~ */ DO ~SetGlobal("C_Off","GLOBAL",7)
~ JOURNAL #68276 /* ~Ich hab' den Oberbefehlshaber der Wache von Verdammnis darüber informiert, daß Siabha An'izius ermorden will. Er war hocherfreut über die Botschaft und hat versprochen, sie festzunehmen. Ich hoffe, ich habe das Richtige getan...~ */ GOTO 12
  IF ~~ THEN REPLY #60396 /* ~"An'izius wollte, daß ich Siabha etwas anhänge, die mich ihrerseits überreden wollte, An'izius etwas anzuhängen. Sie sind beide korrupt."~ */ DO ~SetGlobal("C_Off","GLOBAL",8)
AddexperienceParty(200000)
~ GOTO 13
  IF ~~ THEN REPLY #60397 /* ~"An'izius versucht, Siabha zu ermorden."~ */ DO ~SetGlobal("C_Off","GLOBAL",6)
~ JOURNAL #68277 /* ~Ich hab' den Oberbefehlshaber der Wache von Verdammnis darüber informiert, daß Siabha An'izius ermorden will. Er war hocherfreut über die Botschaft und hat versprochen, die Githyanki-Frau festzunehmen. Ich hoffe, ich habe das Richtige getan...~ */ GOTO 14
  IF ~~ THEN REPLY #60398 /* ~"Du wirst wohl Gewalt anwenden müssen."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END
