// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTRIAS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DTRIAS~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Current_Area","GLOBAL",702)
NumTimesTalkedTo(0)
GlobalLT("Trias_Sword","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #2995 /* ~Du siehst ein Wesen mit elfenbeinfarbener Haut und blendendweißem Haar. Seine Flügel sind verkohlt, die Federn zerstört, doch immer noch strahlt er Frieden und Liebe aus. Er scheint mit seitlich ausgestreckten Armen zu meditieren und bemerkt dich nicht. Seine Unterarme werden von Ketten festgehalten, die an dem Podest befestigt sind, auf dem er steht. Obwohl du dich nicht erinnern kannst, je einen Deva gesehen zu haben, weißt du in deinem Herzen, daß dies einer ist.~ */
  IF ~  NearbyDialog("DGrace")
NearbyDialog("DDakkon")
NearbyDialog("DMorte")
~ THEN REPLY #2996 /* ~"Ich hab dich gesucht, Deva."~ */ DO ~SetGlobal("Trias","GLOBAL",1)
~ GOTO 114
  IF ~  NearbyDialog("DGrace")
!NearbyDialog("DDakkon")
NearbyDialog("DMorte")
~ THEN REPLY #54306 /* ~"Ich hab dich gesucht, Deva."~ */ DO ~SetGlobal("Trias","GLOBAL",1)
~ GOTO 115
  IF ~  NearbyDialog("DGrace")
NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
~ THEN REPLY #54307 /* ~"Ich hab dich gesucht, Deva."~ */ DO ~SetGlobal("Trias","GLOBAL",1)
~ JOURNAL #54312 /* ~Ich habe den Engel gefunden, von dem Ravel gesprochen hat. Sein Name ist Trias, und er sitzt in einem Gefängnis in Verdammnis. Allein der Gedanke daran, daß die Bewohner einen Engel so behandeln... Verdammnis ist wirklich eine Stadt der Halsabschneider und Meuchelmörder. Nicht, daß es meines Wissens ANDERSWO anders zugehen würde.~ */ GOTO 125
  IF ~  NearbyDialog("DGrace")
!NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
~ THEN REPLY #54308 /* ~"Ich hab dich gesucht, Deva."~ */ DO ~SetGlobal("Trias","GLOBAL",1)
~ JOURNAL #54312 /* ~Ich habe den Engel gefunden, von dem Ravel gesprochen hat. Sein Name ist Trias, und er sitzt in einem Gefängnis in Verdammnis. Allein der Gedanke daran, daß die Bewohner einen Engel so behandeln... Verdammnis ist wirklich eine Stadt der Halsabschneider und Meuchelmörder. Nicht, daß es meines Wissens ANDERSWO anders zugehen würde.~ */ GOTO 126
  IF ~  !NearbyDialog("DGrace")
NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
~ THEN REPLY #54309 /* ~"Ich hab dich gesucht, Deva."~ */ DO ~SetGlobal("Trias","GLOBAL",1)
~ GOTO 116
  IF ~  !NearbyDialog("DGrace")
NearbyDialog("DMorte")
NearbyDialog("DDakkon")
~ THEN REPLY #54310 /* ~"Ich hab dich gesucht, Deva."~ */ DO ~SetGlobal("Trias","GLOBAL",1)
~ GOTO 116
  IF ~  !NearbyDialog("DGrace")
!NearbyDialog("DMorte")
~ THEN REPLY #54311 /* ~"Ich hab dich gesucht, Deva."~ */ DO ~SetGlobal("Trias","GLOBAL",1)
~ GOTO 4
END

IF WEIGHT #1 ~  Global("Current_Area","GLOBAL",702)
NumTimesTalkedToGT(0)
Global("Trias_Sword","GLOBAL",0)
!NearbyDialog("DGrace")
~ THEN BEGIN 1 // from:
  SAY #54313 /* ~"Was ist dein Begehr, Sterblicher? Sprich und dann geh fort."~ [TTB005] */
  IF ~~ THEN REPLY #54314 /* ~"Ich habe ein paar Fragen an dich..."~ */ GOTO 10
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54315 /* ~"Ich habe dein Schwert."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #54316 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF WEIGHT #2 ~  Global("Current_Area","GLOBAL",702)
NumTimesTalkedToGT(0)
Global("Trias_Sword","GLOBAL",1)
!NearbyDialog("DGrace")
~ THEN BEGIN 2 // from:
  SAY #54317 /* ~"Was brauchst du, Sterblicher?"~ [TTB002] */
  IF ~~ THEN REPLY #54318 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 117
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54319 /* ~"Ich habe dein Schwert."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #54320 /* ~"Nichts. Leb wohl."~ */ GOTO 117
END

IF WEIGHT #3 ~  Global("Current_Area","GLOBAL",702)
Global("Trias_Sword","GLOBAL",2)
~ THEN BEGIN 3 // from:
  SAY #54321 /* ~"Danke, daß du mich befreit hast. Ich stehe tief in deiner Schuld." Seine verkohlten Flügel flattern. "Was kannst du von mir wollen, Sterblicher? Ich fürchte, daß ich dir recht wenig bieten kann."~ [TTB098] */
  IF ~~ THEN REPLY #54322 /* ~"Ich habe viele Fragen an dich..."~ */ DO ~SetGlobal("Trias_Sword","GLOBAL",3)
~ GOTO 53
  IF ~~ THEN REPLY #54323 /* ~"Was soll's. Leb wohl."~ */ DO ~SetGlobal("Trias_Sword","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.6
  SAY #54324 /* ~Der Deva hebt den Kopf und läßt seinen Blick auf dir ruhen. Seine Stimme ist klar und melodisch. "Was ist dein Begehr, Sterblicher? Sprich, und dann laß mich meinen Erinnerungen an das Paradies nachhängen."~ [TTB004] */
  IF ~~ THEN REPLY #54325 /* ~"Ravel, die Hexe, hat mir gesagt, ich solle dich suchen."~ */ JOURNAL #54312 /* ~Ich habe den Engel gefunden, von dem Ravel gesprochen hat. Sein Name ist Trias, und er sitzt in einem Gefängnis in Verdammnis. Allein der Gedanke daran, daß die Bewohner einen Engel so behandeln... Verdammnis ist wirklich eine Stadt der Halsabschneider und Meuchelmörder. Nicht, daß es meines Wissens ANDERSWO anders zugehen würde.~ */ GOTO 12
  IF ~  Global("Deva_Plague","GLOBAL",1)
~ THEN REPLY #54326 /* ~"Ich habe Gerüchte über eine Seuche gehört, die aufkam, als sie dieses Gefängnis geöffnet haben.~ */ DO ~SetGlobal("Deva_Plague","GLOBAL",2)
~ JOURNAL #54312 /* ~Ich habe den Engel gefunden, von dem Ravel gesprochen hat. Sein Name ist Trias, und er sitzt in einem Gefängnis in Verdammnis. Allein der Gedanke daran, daß die Bewohner einen Engel so behandeln... Verdammnis ist wirklich eine Stadt der Halsabschneider und Meuchelmörder. Nicht, daß es meines Wissens ANDERSWO anders zugehen würde.~ */ GOTO 13
  IF ~~ THEN REPLY #54327 /* ~"Was ist das für ein Ort hier?"~ */ JOURNAL #54312 /* ~Ich habe den Engel gefunden, von dem Ravel gesprochen hat. Sein Name ist Trias, und er sitzt in einem Gefängnis in Verdammnis. Allein der Gedanke daran, daß die Bewohner einen Engel so behandeln... Verdammnis ist wirklich eine Stadt der Halsabschneider und Meuchelmörder. Nicht, daß es meines Wissens ANDERSWO anders zugehen würde.~ */ GOTO 14
  IF ~~ THEN REPLY #54328 /* ~"Wer bist du?"~ */ JOURNAL #54312 /* ~Ich habe den Engel gefunden, von dem Ravel gesprochen hat. Sein Name ist Trias, und er sitzt in einem Gefängnis in Verdammnis. Allein der Gedanke daran, daß die Bewohner einen Engel so behandeln... Verdammnis ist wirklich eine Stadt der Halsabschneider und Meuchelmörder. Nicht, daß es meines Wissens ANDERSWO anders zugehen würde.~ */ GOTO 15
  IF ~~ THEN REPLY #54329 /* ~"Erinnerungen an das Paradies?"~ */ JOURNAL #54312 /* ~Ich habe den Engel gefunden, von dem Ravel gesprochen hat. Sein Name ist Trias, und er sitzt in einem Gefängnis in Verdammnis. Allein der Gedanke daran, daß die Bewohner einen Engel so behandeln... Verdammnis ist wirklich eine Stadt der Halsabschneider und Meuchelmörder. Nicht, daß es meines Wissens ANDERSWO anders zugehen würde.~ */ GOTO 16
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54871 /* ~"Ist das dein Schwert? Es war im Zentrum des Gefängnisses."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ JOURNAL #54312 /* ~Ich habe den Engel gefunden, von dem Ravel gesprochen hat. Sein Name ist Trias, und er sitzt in einem Gefängnis in Verdammnis. Allein der Gedanke daran, daß die Bewohner einen Engel so behandeln... Verdammnis ist wirklich eine Stadt der Halsabschneider und Meuchelmörder. Nicht, daß es meines Wissens ANDERSWO anders zugehen würde.~ */ GOTO 11
  IF ~~ THEN REPLY #54872 /* ~"Ach, vergiß es. Leb wohl."~ */ JOURNAL #54312 /* ~Ich habe den Engel gefunden, von dem Ravel gesprochen hat. Sein Name ist Trias, und er sitzt in einem Gefängnis in Verdammnis. Allein der Gedanke daran, daß die Bewohner einen Engel so behandeln... Verdammnis ist wirklich eine Stadt der Halsabschneider und Meuchelmörder. Nicht, daß es meines Wissens ANDERSWO anders zugehen würde.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 114.0
  SAY #54332 /* ~Der Deva wendet den Kopf und läßt seinen Blick auf Morte ruhen. "Der Gestank von Baator umgibt dich, Schädel."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 559
END

IF ~~ THEN BEGIN 6 // from: 115.0
  SAY #54333 /* ~Der Deva wendet den Kopf und läßt seinen Blick auf Morte ruhen. "Der Gestank von Baator umgibt dich, Schädel."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 560
END

IF ~~ THEN BEGIN 7 // from: 116.0
  SAY #54363 /* ~Der Deva wendet den Kopf und läßt seinen Blick auf Morte ruhen. "Der Gestank von Baator umgibt dich, Schädel."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 561
END

IF ~~ THEN BEGIN 8 // from:
  SAY #54364 /* ~"Du bist in schlechter Gesellschaft, Sterblicher. Aber stelle deine Fragen, und überlasse mich dann wieder meinen Erinnerungen an das Paradies."~ */
  IF ~~ THEN REPLY #54365 /* ~"Ravel, die Hexe, hat mir gesagt, ich solle dich suchen."~ */ GOTO 12
  IF ~  Global("Deva_Plague","GLOBAL",1)
~ THEN REPLY #54366 /* ~"Ich habe Gerüchte über eine Seuche gehört, die aufkam, als sie dieses Gefängnis geöffnet haben.~ */ DO ~SetGlobal("Deva_Plague","GLOBAL",2)
~ GOTO 13
  IF ~~ THEN REPLY #54367 /* ~"Was ist das für ein Ort hier?"~ */ GOTO 14
  IF ~~ THEN REPLY #54368 /* ~"Wer bist du?"~ */ GOTO 15
  IF ~~ THEN REPLY #54369 /* ~"Erinnerungen an das Paradies?"~ */ GOTO 16
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54370 /* ~"Ist das dein Schwert? Es war im Zentrum des Gefängnisses."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #54371 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY #54372 /* ~"Du bringst eine *Tanar-Ri*," zischt er, "hierher zu *mir*?"~ */
  IF ~~ THEN REPLY #54373 /* ~"Was, haben die Flügel es verraten?"~ */ GOTO 33
  IF ~~ THEN REPLY #54374 /* ~"Nun ja. Warum nicht?"~ */ GOTO 33
END

IF ~~ THEN BEGIN 10 // from: 1.0 13.2 14.4 16.0 22.1 23.3 24.3 26.2 27.2 28.0 29.2 30.2 31.2 32.1 117.0 117.1
  SAY #54375 /* ~"Noch eine Frage?"~ */
  IF ~~ THEN REPLY #54376 /* ~"Ravel, die Hexe, hat mir gesagt, ich solle dich suchen."~ */ GOTO 12
  IF ~  Global("Deva_Plague","GLOBAL",1)
~ THEN REPLY #54377 /* ~"Ich habe Gerüchte über eine Seuche gehört, die aufkam, als sie dieses Gefängnis geöffnet haben.~ */ DO ~SetGlobal("Deva_Plague","GLOBAL",2)
~ GOTO 13
  IF ~~ THEN REPLY #54378 /* ~"Was ist das für ein Ort hier?"~ */ GOTO 14
  IF ~~ THEN REPLY #54379 /* ~"Wer bist du?"~ */ GOTO 15
  IF ~~ THEN REPLY #54380 /* ~"Du hast etwas von Erinnerungen an das Paradies gesagt?"~ */ GOTO 16
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54381 /* ~"Ist das dein Schwert? Es war im Zentrum des Gefängnisses."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #54382 /* ~"Wie kommt es, daß deine Flügel verbrannt sind?"~ */ GOTO 28
  IF ~~ THEN REPLY #54383 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.1 2.1 4.5 8.5 10.5 21.0 117.2
  SAY #54384 /* ~Er sieht einen Moment lang schockiert aus. "Himmelsfeuer? Du hast meine Klinge wiederbeschafft? Willst du mich befreien? Dann schlage gegen die Kette!"~ */
  IF ~~ THEN REPLY #54385 /* ~"Ich hätte zuerst ein paar Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #54386 /* ~Versetze der Kette einen Hieb.~ */ GOTO 20
  IF ~~ THEN REPLY #54387 /* ~Versetze dem Deva einen Hieb.~ */ GOTO 19
  IF ~~ THEN REPLY #54388 /* ~"Noch nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.0 8.0 10.0
  SAY #54389 /* ~"Ravel... Ravel... ihr Name sprüht Funken in meiner Erinnerung, aber... nein, es ist weg. Diese Ketten sind wie die schlammigen Wasser des Styx - je länger sie bleiben, an desto weniger erinnere ich mich. Wenn ich befreit werde, könnte ich deine Frage zufriedenstellend beantworten."~ */
  IF ~~ THEN REPLY #54390 /* ~"Wie kann man dich befreien?"~ */ DO ~SetGlobal("Trias_Sword","GLOBAL",1)
~ JOURNAL #54392 /* ~Trias hat mir gesagt, daß er nur durch eine Tat der Güte befreit werden kann - in seinem Fall durch Wiederbeschaffung seines Schwerts und Durchschlagen seiner Ketten.~ */ GOTO 21
  IF ~~ THEN REPLY #54391 /* ~"Dann komme ich später zurück. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 4.1 8.1 10.1
  SAY #54393 /* ~"Daran sind sie selbst schuld. Als sie diese Ketten geschmiedet haben, die ich trage, haben sie die Bindeglieder mit Bitterkeit und Betrug gehärtet - ihre Kurzsichtigkeit wurde ihnen zum Verhängnis. Hätten sie auf mich gehört, wäre das nicht passiert." Große Traurigkeit steht in seinen Augen. "Sie tun mir aus tiefster Seele leid."~ */
  IF ~~ THEN REPLY #54394 /* ~"Wie bist du hierhergekommen?"~ */ GOTO 22
  IF ~~ THEN REPLY #54395 /* ~"Wie kann man diese Ketten zerschlagen und die Seuche ausmerzen?"~ */ JOURNAL #54392 /* ~Trias hat mir gesagt, daß er nur durch eine Tat der Güte befreit werden kann - in seinem Fall durch Wiederbeschaffung seines Schwerts und Durchschlagen seiner Ketten.~ */ GOTO 21
  IF ~~ THEN REPLY #54396 /* ~"Ich hätte noch mehr Fragen an dich..."~ */ GOTO 10
  IF ~~ THEN REPLY #54397 /* ~"Leb wohl... Wir sehen uns wieder."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 4.2 8.2 10.2 15.0
  SAY #54398 /* ~"Du liegst auf dem neutralen Boden der Außenländer, innerhalb der Mauern der Stadt der Portale, Verdammnis, der Heimat der Betrüger und Verräter, einer Stadt, die an die Gefängnisebene von Carzeri grenzt. Du bist im Gefängnis und in der Zelle von Trias, dem Verdammten, der überwältigt und in diese Zelle geschleppt wurde, fern von allen Menschen. Hier liege ich so lange in Ketten, bis ich durch einen Akt der Güte, Gnade und Gerechtigkeit befreit werde."~ */
  IF ~~ THEN REPLY #54399 /* ~"Erzähl mir von Verdammnis."~ */ GOTO 26
  IF ~~ THEN REPLY #54400 /* ~"Erzähl mir von Carzeri."~ */ GOTO 27
  IF ~~ THEN REPLY #54401 /* ~"Wie haben sie dich überwältigt?"~ */ GOTO 22
  IF ~~ THEN REPLY #54402 /* ~"Wie kann man dich befreien?"~ */ JOURNAL #54392 /* ~Trias hat mir gesagt, daß er nur durch eine Tat der Güte befreit werden kann - in seinem Fall durch Wiederbeschaffung seines Schwerts und Durchschlagen seiner Ketten.~ */ GOTO 21
  IF ~~ THEN REPLY #54403 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 10
END

IF ~~ THEN BEGIN 15 // from: 4.3 8.3 10.3
  SAY #54404 /* ~"Ich bin Trias, der Verdammte, Trias, der Verwundete, das verlorene Kind des Elysiums, ein General der Heerscharen der Oberen Ebenen."~ */
  IF ~~ THEN REPLY #54405 /* ~"Was ist das für ein Ort?"~ */ GOTO 14
  IF ~~ THEN REPLY #54406 /* ~"Wie bist du hierher gekommen?"~ */ GOTO 22
  IF ~~ THEN REPLY #54407 /* ~"Die Oberen Ebenen?"~ */ GOTO 23
  IF ~~ THEN REPLY #54408 /* ~"Der Verdammte?"~ */ GOTO 24
END

IF ~~ THEN BEGIN 16 // from: 4.4 8.4 10.4
  SAY #54409 /* ~"Das ist alles, was mir an diesem Ort noch geblieben ist. Und was willst du von mir, Sterblicher? Trage dein Anliegen vor, und dann geh."~ */
  IF ~~ THEN REPLY #54410 /* ~"Ich hätte ein paar Fragen an dich..."~ */ GOTO 10
  IF ~~ THEN REPLY #54411 /* ~"Wie bist du hierher gekommen?"~ */ GOTO 22
  IF ~~ THEN REPLY #54412 /* ~"Was kannst du mir über dieses Paradies sagen?"~ */ GOTO 23
  IF ~~ THEN REPLY #54413 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 11.0 118.0
  SAY #54414 /* ~"Sterblicher, ich werde alle deine Fragen beantworten, wenn du mich befreist, noch dazu mit einem klareren Kopf. Also schlage zu und gib mir mein Schwert zurück!"~ */
  IF ~~ THEN REPLY #54415 /* ~Versetze den Ketten einen Hieb.~ */ GOTO 20
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #54416 /* ~Versetze dem Deva einen Hieb.~ */ GOTO 19
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #54416 /* ~Versetze dem Deva einen Hieb.~ */ EXTERN ~DGRACE~ 181
  IF ~~ THEN REPLY #54417 /* ~Geh weg.~ */ EXIT
END

IF WEIGHT #4 ~  Global("Current_Area","GLOBAL",702)
NumTimesTalkedToGT(0)
Global("Know_Sword","GLOBAL",1)
PartyHasItem("Celestia")
GlobalLT("Trias_Sword","GLOBAL",2)
~ THEN BEGIN 18 // from:
  SAY #54418 /* ~"Ja?"~ [TTB003C] */
  IF ~~ THEN REPLY #54419 /* ~"Ich habe mal wieder ein paar Fragen."~ */ GOTO 118
  IF ~~ THEN REPLY #54420 /* ~Versetze den Ketten einen Hieb.~ */ GOTO 20
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #54421 /* ~Versetze dem Deva einen Hieb.~ */ GOTO 19
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #61308 /* ~Versetze dem Deva einen Hieb.~ */ EXTERN ~DGRACE~ 181
  IF ~~ THEN REPLY #54422 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 11.2 17.1 18.2 118.2
  SAY #54423 /* ~Die Klinge wird zu einem Funkeln aus weißem Feuer, als du den Deva erschlägst. Er brüllt fürchterlich, als er stirbt... In seiner Stimme liegt der Klang einer sterbenden Welt, und dir wird klar, daß du einen schrecklichen Fehler begangen hast.~ */
  IF ~~ THEN REPLY #54424 /* ~"Das wäre erledigt..."~ */ DO ~SetGlobal("Game_Over","GLOBAL",3)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 11.1 17.0 18.1 49.0 118.1
  SAY #54425 /* ~Die Ketten brechen leicht unter der Klinge, und ein Donnerschlag hallt zwischen deinen Ohren wider. Für einen Moment wird alles ganz schwarz, dann spürst du, wie die Klinge zwischen deinen Fingern verschwindet.~ */
  IF ~~ THEN REPLY #54426 /* ~Warte...~ */ DO ~TakePartyItemNum("Celestia",1)
AddexperienceParty(306250)
SetGlobal("Trias_Sword","GLOBAL",2)
FadeToColor([20.0],0)
Wait(3)
Polymorph(Trias)
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 12.0 13.1 14.3 22.0 24.1 32.0
  SAY #54427 /* ~"Eine Akt der Güte, der mir erwiesen wird, wird mich befreien. Mein Schwert - meine Seele - ist ein Mittel dieser Güte. Bring mir das Schwert und schlage mir die Ketten ab. Ich stünde dann... tief in deiner Schuld. Vielleicht kann ich dir bei deiner Suche behilflich sein."~ */
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54428 /* ~"Was weißt du über das, was ich suche?"~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #54429 /* ~"Ich tu' es. Leb wohl."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",7)
~ GOTO 25
  IF ~~ THEN REPLY #68139 /* ~"Ich tu's. Leb wohl."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",7)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 13.0 14.2 15.1 16.1 26.1 27.1
  SAY #54430 /* ~"Verraten, in der Stadt, die für Verrat bekannt ist. Ich dachte, ich könnte hier einen Funken der Güte zu entzünden, ein paar Seelen aus den Fallen befreien, die sie sich selbst gestellt haben. Statt dessen wurde ich gegen meinen Willen von meinen früheren Kohorten gefangen, und in diesem finsteren Loch unter der Erde eingekerkert.~ */
  IF ~~ THEN REPLY #54431 /* ~"Wie kann man dich befreien?"~ */ JOURNAL #54392 /* ~Trias hat mir gesagt, daß er nur durch eine Tat der Güte befreit werden kann - in seinem Fall durch Wiederbeschaffung seines Schwerts und Durchschlagen seiner Ketten.~ */ GOTO 21
  IF ~~ THEN REPLY #54432 /* ~"Ich hätte noch ein paar andere Fragen..." ~ */ GOTO 10
  IF ~~ THEN REPLY #54433 /* ~"Dann viel Glück. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 15.2 16.2
  SAY #54434 /* ~Ein Schatten legt sich auf sein Gesicht. "Ich werde sie wohl nie wiedersehen: die wohlgeordnete Schönheit Arkadiens, die Aussichten des E1ysiums, die sieben Gipfel des Berges Zelestia... All die Häßlichkeit der Unteren Ebenen sind dort ausgelöscht, wo es wirklich möglich ist, an die Erlösung zu glauben. Ich fürchte, daß sich zu viele Inspiration und Hilfe nur in den Unteren Ebenen suchen..."~ */
  IF ~~ THEN REPLY #54435 /* ~"Was kannst du mir über Arkadien sagen?"~ */ GOTO 29
  IF ~~ THEN REPLY #54436 /* ~"Was kannst du mir über Elysium sagen?"~ */ GOTO 30
  IF ~~ THEN REPLY #54437 /* ~"Was kannst du mir über den Berg Zelestia sagen?"~ */ GOTO 31
  IF ~~ THEN REPLY #54438 /* ~"Ich verstehe... Ich hätte aber noch ein paar Fragen..."~ */ GOTO 10
  IF ~~ THEN REPLY #54439 /* ~"Da hast du wohl recht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 15.3 24.2
  SAY #54440 /* ~"Ich war ein Meisterkämpfer der Heerscharen der Oberen Ebenen, nun bin ich besiegt und unter dieser verhaßten Stadt begraben. Ich möchte wieder frei fliegen können, weit weg von diesen Ketten, die mein tiefstes Inneres in Stagnation versetzen."~ */
  IF ~~ THEN REPLY #54441 /* ~"Was kannst du mir über diese Ketten sagen?"~ */ GOTO 32
  IF ~~ THEN REPLY #54442 /* ~"Wie kann man dich befreien?"~ */ JOURNAL #54392 /* ~Trias hat mir gesagt, daß er nur durch eine Tat der Güte befreit werden kann - in seinem Fall durch Wiederbeschaffung seines Schwerts und Durchschlagen seiner Ketten.~ */ GOTO 21
  IF ~  False()
~ THEN REPLY #54443 /* ~"Aber deine Flügel sind verbrannt. Du kannst nicht fliegen."~ */ GOTO 24
  IF ~~ THEN REPLY #54444 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 10
  IF ~~ THEN REPLY #54445 /* ~"Viel Glück. Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 21.1
  SAY #54446 /* ~Er lächelt traurig. "Du trägst die Zeichen davon auf deinem Gesicht und trägst es in deinem Herzen. Wenn man mich von diesen Ketten befreien würde, dann könnte ich in deiner Sache besser weissagen und dich wahrhaftiger führen. Bis dahin..." Der Deva zuckt die Schultern. "Bis dahin kann ich dir nicht einmal einen guten Rat geben. Diese Ketten ersticken das Gedächtnis und den Instinkt."~ */
  IF ~~ THEN REPLY #54447 /* ~"In Ordnung. Ich werde dein Schwert finden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 14.0 27.0
  SAY #54448 /* ~Sein Gesicht verdunkelt sich und hellt sich dann voller Mitleid auf. "Eine Stadt der Verräter. Sie verraten sich selbst und andere. Hier kann man niemandem trauen, jeder versucht, die Anderen in seine hinterhältigen Intrigen zu verstricken... Sogar die, die es nur gut meinen."~ */
  IF ~~ THEN REPLY #54449 /* ~"Was kannst du mir über Carzeri sagen?"~ */ GOTO 27
  IF ~~ THEN REPLY #54450 /* ~"Wie hat man dich verraten?"~ */ GOTO 22
  IF ~~ THEN REPLY #54451 /* ~"Ich hätte noch ein paar andere Fragen..." ~ */ GOTO 10
  IF ~~ THEN REPLY #54452 /* ~"Verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 14.1 26.0
  SAY #54453 /* ~"Es ist das Gefängnis der Ebenen, eine Ebene, wo sogar die Mächte dem Betrug hilflos gegenüberstehen. Die wenigen, die diese Ebene verlassen, haben sich verändert."~ */
  IF ~~ THEN REPLY #54454 /* ~"Erzähl mir von Verdammnis."~ */ GOTO 26
  IF ~~ THEN REPLY #54455 /* ~"Wie hat man dich verraten?"~ */ GOTO 22
  IF ~~ THEN REPLY #54456 /* ~"Ich hätte noch ein paar andere Fragen..." ~ */ GOTO 10
  IF ~~ THEN REPLY #54457 /* ~"Verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 10.6
  SAY #54458 /* ~"Das war Teil des großen Verrats. Sie haben mir die Flügel verbrannt, als sie mich in Ketten legten, damit ich ihnen auch durch die Erde nicht davonflöge. Es liegt in der Natur dieses Ortes, daß schöne Dinge hier nicht geduldet werden."~ */
  IF ~~ THEN REPLY #54459 /* ~"Ich verstehe. Ich hätte da noch ein paar Fragen an dich..."~ */ GOTO 10
  IF ~~ THEN REPLY #54460 /* ~"Verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 23.0 30.0 31.0
  SAY #54461 /* ~"Ein wohlgeordnetes Paradies, alles hat seinen Platz und ist zufrieden - nicht das Chaos und die Tücke, der in diesen unteren Welten herrschen. Ein Paradies, wie du es nie gekannt hast."~ */
  IF ~~ THEN REPLY #54462 /* ~"Was kannst du mir über Elysium sagen?"~ */ GOTO 30
  IF ~~ THEN REPLY #54463 /* ~"Was kannst du mir über den Berg Zelestia sagen?"~ */ GOTO 31
  IF ~~ THEN REPLY #54464 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 10
  IF ~~ THEN REPLY #54465 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 23.1 29.0 31.1
  SAY #54466 /* ~"Die Friedliche Ebene, eine Ebene der friedlichen Erholung, wo die Gezeiten von Chaos und Ordnung die Bewohner mit Gutem überschwemmen. Wälder und Grassteppen, in denen die Schönheit nicht widerhallt, sondern die selbst die Schönheit *sind*. Es gibt keinen vergleichbaren Ort. Er ist der Gipfel der Güte und Gnade."~ */
  IF ~~ THEN REPLY #54467 /* ~"Was kannst du mir über Arkadien sagen?"~ */ GOTO 29
  IF ~~ THEN REPLY #54468 /* ~"Was kannst du mir über den Berg Zelestia sagen?"~ */ GOTO 31
  IF ~~ THEN REPLY #54469 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 10
  IF ~~ THEN REPLY #54470 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 23.2 29.1 30.1
  SAY #54471 /* ~"Die sieben Berge der Güte und des Gesetzes, eine Ebene, wo alles in den warmen Strahlen der Gerechtigkeit und Gnade badet. Ein idealer Ort. Wo die Bewohner nach Gnade und Gerechtigkeit streben, und sich nicht damit zufrieden geben, im Schatten dieser Ideale zu spielen. Es sind Ideale, die man erhalten muß, kein Futter für die Münder der Engstirnigen und Gierigen.~ */
  IF ~~ THEN REPLY #54472 /* ~"Was kannst du mir über Arkadien sagen?"~ */ GOTO 29
  IF ~~ THEN REPLY #54473 /* ~"Was kannst du mir über Elysium sagen?"~ */ GOTO 30
  IF ~~ THEN REPLY #54474 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 10
  IF ~~ THEN REPLY #54475 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 24.0
  SAY #54476 /* ~"Diese Ketten sind so beschaffen, daß sie mich binden, ohne zu binden. Sie versenken Erinnerungen, halten sie unter einem stehenden Fluß, so daß mein Wissen gleitet und abebbt. Ich kann sie mit meiner Kraft nicht durchbrechen... Nur eine unsterbliche göttliche Kraft, ein Akt der Gerechtigkeit und Gnade kann sie sprengen."~ */
  IF ~~ THEN REPLY #54477 /* ~"Und was ist das für eine Kraft?"~ */ GOTO 21
  IF ~~ THEN REPLY #54478 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 10
  IF ~~ THEN REPLY #54479 /* ~"Verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 9.0 9.1
  SAY #54480 /* ~"Ich lasse mich von einem, der sich mit Scheusalen abgibt, nicht ködern. Tanar-Ri, trotz der Geschmeidigkeit deiner Figur bin ich kein so leichtes Opfer wie dieser Sterbliche. Sag, was du willst, und dann laß Trias in seinem Gefängnis allein."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 178
END

IF ~~ THEN BEGIN 34 // from:
  SAY #54481 /* ~"Du bist ein gewandter Redner, Tanar-Ri, wie alle von deiner Sorte. Stelle deine Fragen, und dann geh."~ */
  IF ~~ THEN REPLY #54482 /* ~"Ich bin nicht sterblich."~ */ GOTO 35
  IF ~~ THEN REPLY #54483 /* ~"Ravel, die Hexe, hat mich zu dir geschickt. Sie sagte, du könntest mir etwas über meine gestohlene Sterblichkeit sagen."~ */ GOTO 36
  IF ~  Global("Deva_Plague","GLOBAL",1)
~ THEN REPLY #54484 /* ~"Ich habe Gerüchte über eine Seuche gehört, die aufkam, als sie dieses Gefängnis geöffnet haben.~ */ DO ~SetGlobal("Deva_Plague","GLOBAL",2)
~ GOTO 37
  IF ~~ THEN REPLY #54485 /* ~"Was ist das für ein Ort hier?"~ */ GOTO 38
  IF ~~ THEN REPLY #54486 /* ~"Wer bist du?"~ */ GOTO 39
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54487 /* ~"Ist das dein Schwert? Es war im Zentrum des Gefängnisses."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #54488 /* ~"Wie kommt es, daß deine Flügel verbrannt sind?"~ */ GOTO 41
  IF ~~ THEN REPLY #54489 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #54490 /* ~Der Deva lacht ein reines, silbernes Lachen. "Wie du willst, Sterblicher. Was kann ich für dich tun?"~ */
  IF ~~ THEN REPLY #54491 /* ~"Ravel, die Hexe, hat mich zu dir geschickt. Sie sagte, du könntest mir etwas über meine gestohlene Sterblichkeit sagen."~ */ GOTO 36
  IF ~  Global("Deva_Plague","GLOBAL",1)
~ THEN REPLY #54492 /* ~"Ich habe Gerüchte über eine Seuche gehört, die aufkam, als sie dieses Gefängnis geöffnet haben.~ */ DO ~SetGlobal("Deva_Plague","GLOBAL",2)
~ GOTO 37
  IF ~~ THEN REPLY #54493 /* ~"Was ist das für ein Ort hier?"~ */ GOTO 38
  IF ~~ THEN REPLY #54494 /* ~"Wer bist du?"~ */ GOTO 39
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54495 /* ~"Ist das dein Schwert? Es war im Zentrum des Gefängnisses."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #54496 /* ~"Wie kommt es, daß deine Flügel verbrannt sind?"~ */ GOTO 41
  IF ~~ THEN REPLY #54497 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.1 35.0 45.0 52.0
  SAY #54498 /* ~"Ravel... die Nachthexe... eine gestohlene Sterblichkeit... das kommt mir alles so bekannt vor, aber ich fürchte, ich kann das Wissen nicht ans Licht zerren, solange diese Ketten mich einengen."~ */
  IF ~~ THEN REPLY #54499 /* ~"Warum nicht?"~ */ GOTO 42
  IF ~~ THEN REPLY #54500 /* ~"Wie kann man diese Ketten zerschlagen?"~ */ JOURNAL #54392 /* ~Trias hat mir gesagt, daß er nur durch eine Tat der Güte befreit werden kann - in seinem Fall durch Wiederbeschaffung seines Schwerts und Durchschlagen seiner Ketten.~ */ GOTO 42
  IF ~~ THEN REPLY #54501 /* ~"Warum wurdest du eingesperrt?"~ */ GOTO 44
END

IF ~~ THEN BEGIN 37 // from: 34.2 35.1 45.1 52.1
  SAY #54502 /* ~"Daran sind sie selbst schuld. Als sie diese Ketten geschmiedet haben, die ich trage, haben sie die Bindeglieder mit Bitterkeit und Betrug gehärtet - ihre Kurzsichtigkeit wurde ihnen zum Verhängnis. Hätten sie auf mich gehört, wäre das nicht passiert." Große Traurigkeit steht in seinen Augen. "Sie tun mir aus tiefster Seele leid."~ */
  IF ~~ THEN REPLY #54503 /* ~"Was kannst du mir über diese Ketten sagen?"~ */ GOTO 42
  IF ~~ THEN REPLY #54504 /* ~"Wie kann man diese Ketten zerschlagen?"~ */ JOURNAL #54392 /* ~Trias hat mir gesagt, daß er nur durch eine Tat der Güte befreit werden kann - in seinem Fall durch Wiederbeschaffung seines Schwerts und Durchschlagen seiner Ketten.~ */ GOTO 43
  IF ~~ THEN REPLY #54505 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 45
END

IF ~~ THEN BEGIN 38 // from: 34.3 35.2 39.0 45.2 52.2
  SAY #54506 /* ~"Das? Das ist das Verlies unter der Stadt der Portale, Verdammnis, das Portal zu Carzeri, der Gefängnisebene der Götter. Dies ist die Heimat der Verräter, der Verbitterten, der Verdammten... Egal, ob sie ihre Verdammnis verdienen oder nicht."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 180
END

IF ~~ THEN BEGIN 39 // from: 34.4 35.3 45.3 52.3
  SAY #54507 /* ~"Ich bin Trias, der Verdammte. Einst ein General der Heerscharen der Oberen Ebenen, schmachte ich nun in einem stinkenden Loch unter der erbärmlichsten aller Torstädte."~ */
  IF ~~ THEN REPLY #54508 /* ~"Was ist das für ein Ort?"~ */ GOTO 38
  IF ~~ THEN REPLY #54509 /* ~"Wie bist du hierher gekommen?"~ */ GOTO 44
END

IF ~~ THEN BEGIN 40 // from: 34.5 35.4 43.0 45.4 52.4
  SAY #54510 /* ~Er sieht einen Moment lang schockiert aus. "Himmelsfeuer? Du hast meine Klinge wiederbeschafft? Willst du mich befreien? Dann schlage gegen die Kette!"~ */
  IF ~~ THEN REPLY #54511 /* ~"Ich hätte zuerst ein paar Fragen..."~ */ GOTO 49
  IF ~~ THEN REPLY #54512 /* ~Versetze der Kette einen Hieb.~ */ GOTO 50
  IF ~~ THEN REPLY #54513 /* ~Versetze dem Deva einen Hieb.~ */ EXTERN ~DGRACE~ 181
  IF ~~ THEN REPLY #54514 /* ~"Noch nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 34.6 35.5 45.5 52.5
  SAY #54515 /* ~"Das war Teil des großen Verrats. Sie haben mir die Flügel verbrannt, als sie mich in Ketten legten, damit ich ihnen auch durch die Erde nicht davonflöge. Es liegt in der Natur dieses Ortes, daß schöne Dinge hier nicht geduldet werden."~ */
  IF ~~ THEN REPLY #54516 /* ~"Ich hätte da noch ein paar Fragen an dich..."~ */ GOTO 45
  IF ~~ THEN REPLY #54517 /* ~"Verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 36.0 36.1 37.0
  SAY #54518 /* ~"Diese Ketten engen nicht nur meine Bewegungsfreiheit ein. Wohl habe ich Erinnerungen an mein Wissen, doch die Ketten verzerren diese Erinnerung."~ */
  IF ~~ THEN REPLY #54519 /* ~"Wie kann man diese Ketten zerschlagen?"~ */ JOURNAL #54392 /* ~Trias hat mir gesagt, daß er nur durch eine Tat der Güte befreit werden kann - in seinem Fall durch Wiederbeschaffung seines Schwerts und Durchschlagen seiner Ketten.~ */ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 37.1 42.0
  SAY #54520 /* ~"Wenn ich noch das Symbol meines früheren Ranges besäße, könnten diese Ketten leicht durchschlagen werden. Meine Klinge, das Himmelsfeuer, ist in den Händen der Schatten dieser Stadt. Sie benutzen sie, um ihr erbärmliches Gefängnis zu sichern. Könnte ich die Klinge nur in meinen Händen halten... dann wär ich wieder frei. Hol mir das Schwert zurück, zerschlage meine Ketten, und ich werde die helfen, so gut ich kann. Meine wiedererweckte Erinnerung wird uns beide erleuchten."~ */
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54521 /* ~"In Ordnung. Ich komme wieder."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #68140 /* ~"Sehr gut. Ich komme wieder."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",7)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 36.2 39.1
  SAY #54522 /* ~"Die Menschen in dieser Stadt - allesamt Verräter - wissen nichts von Schönheit und Wahrheit. Sie können sie nicht ertragen. Sie haben mich hierher gelockt und in Ketten gelegt. Sterbliche verfügen nicht über die Sichtweise, die es ihnen ermöglicht, Charakterstärke zu erreichen und sich damit über ihre Begierden zu erheben. Ich habe versucht, es sie zu lehren."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 179
END

IF ~~ THEN BEGIN 45 // from: 37.2 41.0 46.0 47.1 48.0
  SAY #54523 /* ~"Schon wieder?"~ */
  IF ~~ THEN REPLY #54524 /* ~"Ravel, die Hexe, hat mich zu dir geschickt. Sie sagte, du könntest mir etwas über meine gestohlene Sterblichkeit sagen."~ */ GOTO 36
  IF ~  Global("Deva_Plague","GLOBAL",1)
~ THEN REPLY #54525 /* ~"Ich habe Gerüchte über eine Seuche gehört, die aufkam, als sie dieses Gefängnis geöffnet haben.~ */ DO ~SetGlobal("Deva_Plague","GLOBAL",2)
~ GOTO 37
  IF ~~ THEN REPLY #54526 /* ~"Was ist das für ein Ort hier?"~ */ GOTO 38
  IF ~~ THEN REPLY #54527 /* ~"Wer bist du?"~ */ GOTO 39
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54528 /* ~"Ist das dein Schwert? Es war im Zentrum des Gefängnisses."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #54529 /* ~"Wie kommt es, daß deine Flügel verbrannt sind?"~ */ GOTO 41
  IF ~~ THEN REPLY #54530 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from:
  SAY #54531 /* ~Ein höhnisches Lächeln verzerrt sein schönes Gesicht. "Mylady Tanar-Ri, Ihr glaubt doch nicht wirklich, daß Sterbliche jemals diese Sichtweise erlangen können? Nicht, solange Ihr seid, was Ihr seid - Euer ganzes Wesen trachtet doch danach, jede Möglichkeit für Sterbliche zu untergraben, über ihre primitiven Instinkte hinauszuwachsen.~ */
  IF ~~ THEN REPLY #54532 /* ~"In Ordnung, das reicht. Ich habe noch mehr Fragen, Trias."~ */ GOTO 45
  IF ~~ THEN REPLY #54533 /* ~"Das reicht. Leb wohl, Trias."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from:
  SAY #54534 /* ~Seine Augen sprühen Blitze. "Die Heerscharen hat der Mut verlassen. Sie wagen es nicht, den Scheusalen direkt gegenüberzutreten. Wo ist ihr Geist, ihre Liebe zur Reinheit? Meine Stabschefs führen den Krieg aus der Ferne, sie verwickeln die Scheusale in kostspielige Gefechte gegeneinander. Sie geben ihnen Waffen und füllen ihren Geist mit dem Wissen, wie sie sich gegenseitig besser verletzen können. Alles, damit sie nicht nach oben sehen und unsere goldenen Felder erblicken."~ */
  IF ~~ THEN REPLY #54535 /* ~"Wie kann man das ändern?"~ */ GOTO 48
  IF ~~ THEN REPLY #54536 /* ~"Aha. Ich hätte da noch andere Fragen..."~ */ GOTO 45
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #54537 /* ~Trias lehnt sich zurück, seine verkohlten Flügeln rascheln leise. "Es gibt Wege, selbst den Geist von unsterblichen Generälen zu verändern, Sterblicher. Eines Tages werden sie es erkennen, daran zweifle ich nicht."~ */
  IF ~~ THEN REPLY #54538 /* ~"Aha. Ich hätte da noch andere Fragen..."~ */ GOTO 45
  IF ~~ THEN REPLY #54539 /* ~"Verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 40.0
  SAY #54540 /* ~"Sterblicher, ich werde alle deine Fragen beantworten, wenn du mich befreist, noch dazu mit einem klareren Kopf. Also schlage zu und gib mir mein Schwert zurück!"~ */
  IF ~~ THEN REPLY #54541 /* ~Versetze den Ketten einen Hieb.~ */ GOTO 20
  IF ~~ THEN REPLY #54542 /* ~Versetze dem Deva einen Hieb.~ */ EXTERN ~DGRACE~ 181
  IF ~~ THEN REPLY #54543 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 40.1
  SAY #54544 /* ~Die Ketten brechen leicht unter der Klinge, und ein Donnerschlag hallt zwischen deinen Ohren wider. Für einen Moment wird alles ganz schwarz, dann spürst du, wie die Klinge zwischen deinen Fingern verschwindet.~ */
  IF ~~ THEN REPLY #54545 /* ~Warte...~ */ DO ~TakePartyItemNum("Celestia",1)
AddexperienceParty(306250)
SetGlobal("Trias_Sword","GLOBAL",2)
FadeToColor([20.0],0)
Wait(3)
Polymorph(Trias)
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 51 // from:
  SAY #54546 /* ~Die Klinge wird zu einem Funkeln aus weißem Feuer, als du den Deva erschlägst. Er brüllt fürchterlich, als er stirbt... In seiner Stimme liegt der Klang einer sterbenden Welt, und dir wird klar, daß du einen schrecklichen Fehler begangen hast.~ */
  IF ~~ THEN REPLY #54547 /* ~"Das wäre erledigt..."~ */ DO ~SetGlobal("Game_Over","GLOBAL",3)
~ EXIT
END

IF WEIGHT #5 ~  Global("Current_Area","GLOBAL",702)
NumTimesTalkedToGT(0)
NearbyDialog("DGrace")
GlobalLT("Trias_Sword","GLOBAL",2)
~ THEN BEGIN 52 // from:
  SAY #54548 /* ~"Du hast noch eine Frage?"~ [TTB034] */
  IF ~~ THEN REPLY #54549 /* ~"Ravel, die Hexe, hat mich zu dir geschickt. Sie sagte, du könntest mir etwas über meine gestohlene Sterblichkeit sagen."~ */ GOTO 36
  IF ~  Global("Deva_Plague","GLOBAL",1)
~ THEN REPLY #54550 /* ~"Ich habe Gerüchte über eine Seuche gehört, die aufkam, als sie dieses Gefängnis geöffnet haben.~ */ DO ~SetGlobal("Deva_Plague","GLOBAL",2)
~ GOTO 37
  IF ~~ THEN REPLY #54551 /* ~"Was ist das für ein Ort hier?"~ */ GOTO 38
  IF ~~ THEN REPLY #54552 /* ~"Wer bist du?"~ */ GOTO 39
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54553 /* ~"Ist das dein Schwert? Es war im Zentrum des Gefängnisses."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #54554 /* ~"Wie kommt es, daß deine Flügel verbrannt sind?"~ */ GOTO 41
  IF ~~ THEN REPLY #54555 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 3.0 112.0
  SAY #54556 /* ~"Trachtest du nach Macht über den Geist deiner sterblichen Freunde? Hoffst du, daß deine Wünsche erfüllt werden? Strebst du nach Reichtum? Willst du noch mehr Seelen quälen?"~ */
  IF ~~ THEN REPLY #54557 /* ~"Ich suche Wissen, nicht Macht oder Reichtum."~ */ GOTO 56
  IF ~~ THEN REPLY #54558 /* ~"Gib mir Macht."~ */ GOTO 54
  IF ~~ THEN REPLY #54559 /* ~"Erzähl mir von Reichtum."~ */ GOTO 55
END

IF ~~ THEN BEGIN 54 // from: 53.1 55.0
  SAY #54560 /* ~"Ich kann dir nicht mehr Macht geben, als ich dir Weisheit oder Einsicht verschaffen kann. Es ist kein Geschenk, das einem geschenkt wird, sondern eines, das man sich verdient. Das Unvermögen, das zu verstehen, bedeutet für Sterbliche oft den Untergang."~ */
  IF ~~ THEN REPLY #54561 /* ~"Dann gib mir Wissen."~ */ GOTO 56
  IF ~~ THEN REPLY #54562 /* ~"Dann gib mir Reichtum."~ */ GOTO 55
END

IF ~~ THEN BEGIN 55 // from: 53.2 54.1
  SAY #54563 /* ~"Dann verdiene ihn dir, und sieh, wie dein Wesen verschwindet, obgleich dein *Wert* steigt. Sprich mit mir nicht in der Sprache der Kaufleute."~ */
  IF ~~ THEN REPLY #54564 /* ~"Dann gib mir Macht."~ */ GOTO 54
  IF ~~ THEN REPLY #54565 /* ~"Dann gib mir Wissen."~ */ GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 53.0 54.0 55.1
  SAY #54566 /* ~"Dann äußere deine Wünsche."~ */
  IF ~~ THEN REPLY #54567 /* ~"Meine Sterblichkeit wurde mir gestohlen. Ich möchte sie wiedererlangen."~ */ JOURNAL #54569 /* ~Trias, der Deva, hat mir gesagt, daß mir ein Scheusal namens Fhjull Schlangenzunge bei meiner Suche behilflich sein könnte. Er lebt in den Außenländern und ist anscheinend Trias irgendwie verpflichtet.~ */ GOTO 57
  IF ~~ THEN REPLY #54568 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #54570 /* ~"Aus dir spricht die Dummheit. Dennoch... gibt es jemanden, der dir bei deiner Suche behilflich sein könnte. Er ist ein Scheusal namens Fhjull Schlangenzunge. Er wird dir helfen." Die Lippen des Deva verziehen sich zu einem schwachen Lächeln. "Er ist zur Wohltätigkeit verpflichtet."~ */
  IF ~~ THEN REPLY #54571 /* ~"Wie komme ich zu ihm?"~ */ JOURNAL #54572 /* ~Ich kann Verdammnis verlassen und Fhjull finden, indem ich ein Glied von Trias' gebrochener Kette nehme und ein Portal zum Norden finde.~ */ GOTO 59
END

IF ~~ THEN BEGIN 58 // from: 102.1 104.0
  SAY #54573 /* ~"Ihr Hallen sind dunkel und scheinen leer - aber genau wie du, zieht sie gepeinigte Seelen an wie ein Magnet. Wie du, ist sie leer und doch voll von den Ausgestoßenen der Zeit. Wie du, ist sie ein Denkmal der Qualen. Soll ich dir von diesen Seelen erzählen, Reisender?"~ */
  IF ~~ THEN REPLY #54574 /* ~"Ja."~ */ GOTO 60
END

IF ~~ THEN BEGIN 59 // from: 57.0
  SAY #54575 /* ~"Im Norden dieses Gefängnisses befindet sich ein Portal. Sein Schlüssel ist ein zerbrochenes Kettenglied." Er blickt bedeutungsvoll auf die zerschlagenen Kettenglieder zu seinen Füßen, bückt sich und drückt dir eines in die Hand. "Ein angemessener Schlüssel für einen, der Verdammnis verlassen will."~ */
  IF ~~ THEN REPLY #54576 /* ~"Danke. Leb wohl."~ */ DO ~SetGlobal("Outland_Portal","GLOBAL",1)
~ GOTO 61
END

IF ~~ THEN BEGIN 60 // from: 58.0
  SAY #54577 /* ~Sein blutiges Lächeln wird breiter. "Sie sind die Seelen derer, die an deiner Stelle gestorben sind. Sie sind zu Schatten geworden, damit du leben kannst. Es sind *deine* Schatten, die Schatten, die du auf die Existenz geworfen hast, und sie werden dich finden, Reisender, und sie werden dich für ihre Qualen leiden lassen. Von ihrer Hand wird dir Gerechtigkeit widerfahren, dir und denen, die einfältig genug sind, dich zu begleiten."~ */
  IF ~~ THEN REPLY #54578 /* ~"Gewiß. Was kannst du mir über diesen Wächter sagen?"~ */ GOTO 103
  IF ~~ THEN REPLY #54579 /* ~"Danke für die Ermutigung, Trias. Jetzt wirst du sterben."~ */ GOTO 105
  IF ~~ THEN REPLY #54580 /* ~"Das werden wir sehen. Was machst du, wenn ich dich verlasse, Trias?"~ */ GOTO 106
END

IF ~~ THEN BEGIN 61 // from: 59.0
  SAY #54581 /* ~"Lebe wohl, Sterblicher. Ich habe... Geschäfte... um die ich mich kümmern muß." Er blickt bedeutungsvoll zur Decke des Gefängnisses empor und springt in die Erde über sich, wie ein Taucher ins Meer.~ */
  IF ~~ THEN REPLY #61264 /* ~Geh weg.~ */ DO ~SinisterPoof("S0P2CUR3",[2577.3268],1)
PlaySoundNotRanged("CURES03")
DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 62 // from:
  SAY #54582 /* ~Null Node~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #6 ~  Global("Trias_Defeated","GLOBAL",1)
~ THEN BEGIN 63 // from:
  SAY #54583 /* ~"Ich ergebe mich dir in dieser Stunde, Sterblicher. Meine Gefangenschaft hat mich geschwächt. In meinem Zustand bin ich kein ebenbürtiger Gegner für dich."~ [TTB120] */
  IF ~~ THEN REPLY #54584 /* ~"Trias, selbst auf der Höhe deines Ruhms wärst du mir nicht gewachsen. Jetzt sag mir, was ich wissen muß."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Trias_2","GLOBALGood",-1)
SetGlobal("cd_int_1","LOCALS",1)
~ GOTO 93
  IF ~~ THEN REPLY #54585 /* ~"Ich brauche noch mehr Wissen von dir, Trias. Sag mir, wie ich zur Festung der Reue komme."~ */ DO ~SetGlobal("cd_int_1","LOCALS",1)
~ GOTO 94
  IF ~~ THEN REPLY #54586 /* ~Töte den Deva.~ */ DO ~SetGlobal("Game_Over","GLOBAL",3)
SetGlobal("cd_int_1","LOCALS",1)
~ GOTO 98
END

IF ~~ THEN BEGIN 64 // from: 119.0
  SAY #54587 /* ~"Schau sie dir an, wie sie rennen, um ihre armselige Habe und ihre armseligen Leben zu retten. Ich sehe, daß du nichts getan hast, ihnen zu helfen. Dein Egoismus hat mich gestärkt."~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 12
END

IF ~~ THEN BEGIN 65 // from: 120.0
  SAY #54588 /* ~"Schau sie dir an, wie sie rennen, um ihre armselige Habe und ihre armseligen Leben zu retten. Ich sehe, daß du nichts getan hast, ihnen zu helfen. Dein Egoismus hat mich gestärkt."~ */
  IF ~~ THEN REPLY #54589 /* ~"Warum hast du mich belogen?"~ */ GOTO 71
  IF ~~ THEN REPLY #54590 /* ~"Warum hast du Verdammnis in die Außenländer verschleppt?"~ */ GOTO 72
  IF ~~ THEN REPLY #54591 /* ~"Netter Trick, das mit der Stadt, Trias. Und jetzt sag mir, wie ich zur Festung der Reue komme, und wir sind fertig."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Trias_1","GLOBALGood",-2)
~ GOTO 85
  IF ~~ THEN REPLY #54592 /* ~Greif ihn an.~ */ GOTO 70
END

IF ~~ THEN BEGIN 66 // from: 121.0
  SAY #54599 /* ~"Du hast versucht, diese Stadt zu reformieren, Sterblicher, aber es ist zu spät für sie. Jetzt ernten sie den Lohn für ihre Ungläubigkeit."~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 13
END

IF ~~ THEN BEGIN 67 // from: 122.0
  SAY #54600 /* ~"Du hast versucht, diese Stadt zu reformieren, Sterblicher, aber es ist zu spät für sie. Jetzt ernten sie den Lohn für ihre Ungläubigkeit."~ */
  IF ~~ THEN REPLY #54601 /* ~"Warum hast du mich belogen?"~ */ GOTO 71
  IF ~~ THEN REPLY #54602 /* ~"Warum hast du Verdammnis in die Außenländer verschleppt?"~ */ GOTO 72
  IF ~~ THEN REPLY #54603 /* ~"Netter Trick, das mit der Stadt, Trias. Und jetzt sag mir, wie ich zur Festung der Reue komme, und wir sind fertig."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Trias_1","GLOBALGood",-2)
~ GOTO 75
  IF ~~ THEN REPLY #54604 /* ~Greif ihn an.~ */ GOTO 70
END

IF ~~ THEN BEGIN 68 // from: 123.0
  SAY #54605 /* ~Trias läßt seinen Blick über die Stadt schweifen. "Du hast in dieser kurzen Zeit viel Gutes getan, Sterblicher. Es wird jedoch nicht ausreichen, um zu verhindern, daß diese Verräter das wahre Ausmaß ihrer Dummheit erkennen."~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 13
END

IF ~~ THEN BEGIN 69 // from: 124.0
  SAY #54606 /* ~Trias läßt seinen Blick über die Stadt schweifen. "Du hast in dieser kurzen Zeit viel Gutes getan, Sterblicher. Es wird jedoch nicht ausreichen, um zu verhindern, daß diese Verräter das wahre Ausmaß ihrer Dummheit erkennen."~ */
  IF ~~ THEN REPLY #54607 /* ~"Warum hast du mich belogen?"~ */ GOTO 71
  IF ~~ THEN REPLY #54608 /* ~"Warum hast du Verdammnis in die Außenländer verschleppt?"~ */ GOTO 72
  IF ~~ THEN REPLY #54609 /* ~"Netter Trick, das mit der Stadt, Trias. Und jetzt sag mir, wie ich zur Festung der Reue komme, und wir sind fertig."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Trias_1","GLOBALGood",-2)
~ GOTO 85
  IF ~~ THEN REPLY #54610 /* ~Greif ihn an.~ */ GOTO 70
END

IF ~~ THEN BEGIN 70 // from: 65.3 67.3 69.3 80.2 86.2
  SAY #54611 /* ~Trias' Augen hellen sich auf, und ein Funke tanzt auf seiner Klinge. "Jetzt werden wir sehen, ob du sterben kannst. Zumindest wirst du leiden."~ [TTB118] */
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #54612 /* ~Greif ihn an.~ */ DO ~ForceAttack(Protagonist,Myself)
ForceAttack("Vhailor",Myself)
Enemy()
~ EXIT
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #54613 /* ~Warte.~ */ DO ~ForceAttack("Vhailor",Myself)
Enemy()
~ EXIT
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #54614 /* ~"Laß uns doch darüber reden!"~ */ DO ~ForceAttack("Vhailor",Myself)
Enemy()
~ EXIT
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #54615 /* ~Greif ihn an.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
~ EXIT
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #54616 /* ~Warte.~ */ DO ~Enemy()
~ EXIT
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #54617 /* ~"Laß uns doch darüber reden!"~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 71 // from: 65.0 67.0 69.0
  SAY #54618 /* ~"Du hast eine Richtung gebraucht. Der Preis dafür war Verrat. Wie kommt es, daß du meinst, das Recht auf Wahrheit erworben zu haben, in diesem oder im nächsten Leben? Was für eine Arroganz. Es war deine Pflicht als niedrigeres Wesen, mich zu befreien. Ich schulde dir nichts, und das habe ich dir gegeben. Ich habe dir mehr gegeben, als du verdient hast. Du hast mich befreit, um dir selbst zu helfen."~ */
  IF ~~ THEN REPLY #54619 /* ~"Warum hast du dann Verdammnis in die Außenländer verschleppt?"~ */ GOTO 72
END

IF ~~ THEN BEGIN 72 // from: 65.1 67.1 69.1 71.0
  SAY #54620 /* ~"Eine Stadt der Betrüger wurde betrogen und hat bekommen, was sie verdient hat. Es gibt kein 'warum'. Es besiegelt meine Vereinbarung mit den Unteren Ebenen. Dem größeren Guten wurde gedient."~ */
  IF ~~ THEN REPLY #54621 /* ~"Du hast eine Vereinbarung mit den Unteren Ebenen getroffen?"~ */ GOTO 73
  IF ~~ THEN REPLY #54622 /* ~"Das größere Gute? Was für ein größeres Gutes ist das?"~ */ GOTO 74
  IF ~~ THEN REPLY #54623 /* ~"Wer hat dich zum Henker ernannt? Was gibt dir das Recht, das zu tun?"~ */ GOTO 75
END

IF ~~ THEN BEGIN 73 // from: 72.0
  SAY #54624 /* ~"Man kann den Berg Zelestia nicht ohne eine Armee erklimmen. Der Aufbau dieser Armee ist von Bedeutung für mich. Es ist wesentlich einfacher, solche Wesen anzuheuern, als sie zu einem Angriff zu zwingen."~ */
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #54625 /* ~"Du willst den Berg Zelestia mit *Scheusalen* angreifen? Ist solch ein Bündnis nicht deinem Wesen zuwider?"~ */ GOTO 76
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #54626 /* ~"Du willst den Berg Zelestia mit *Scheusalen* angreifen? Ist solch ein Bündnis nicht deinem Wesen zuwider?"~ */ GOTO 77
END

IF ~~ THEN BEGIN 74 // from: 72.1
  SAY #54627 /* ~"Das Blut, das die Armee der Scheusale vergießen wird, wird durch den gerechten Zorn der Himmlischen Heerscharen gerächt werden. Diejenigen, die fallen, dienen einem größeren Guten. Diese Stadt fällt im Namen des größeren Guten - der Vernichtung des Bösen. Ein kleines Opfer, bedenkt man, wer noch geopfert werden wird.~ */
  IF ~~ THEN REPLY #54628 /* ~"Aus bösen Wurzeln wächst nichts Gutes, fürchte ich."~ */ GOTO 86
  IF ~~ THEN REPLY #54629 /* ~"Nun gut. Ich bin einverstanden. Sag mir, wie ich zur Festung der Reue komme und ich überlasse dich deinem Opfer."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Trias_1","GLOBALGood",-2)
~ GOTO 85
END

IF ~~ THEN BEGIN 75 // from: 67.2 72.2 92.0
  SAY #54630 /* ~"Ich bin *hier*. Ich sehe das Böse. Ich bin willens, dagegen zu kämpfen. Mein *Wille* gibt mir das Recht dazu."~ */
  IF ~~ THEN REPLY #54631 /* ~"Der Wille gibt einem noch nicht das Recht, Trias."~ */ GOTO 86
  IF ~~ THEN REPLY #54632 /* ~"Nun gut. Ich bin einverstanden. Sag mir, wie ich zur Festung der Reue komme und ich überlasse dich deinem Opfer."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Trias_1","GLOBALGood",-2)
~ GOTO 85
END

IF ~~ THEN BEGIN 76 // from: 73.0
  SAY #54633 /* ~Das Gesicht des Deva verdunkelt sich. "Ich tue das, um den Namen Gottes reinzuwaschen!" knurrt er. "Während die Generäle der Oberen Ebenen hinter ihren goldenen Toren kauern und einen brutalen Krieg schüren, der Unschuldige verschlingt, werde ich sie mit dem konfrontieren, was sie am meisten fürchten. Durch diese Konfrontation werden sie ihre Angst überwinden."~ */
  IF ~~ THEN REPLY #54634 /* ~"Indem du dein *Heimatland* verrätst?"~ */ GOTO 80
  IF ~~ THEN REPLY #54635 /* ~"Und du willst die Felder des Guten mit der Saat des Bösen verpesten?"~ */ GOTO 90
  IF ~~ THEN REPLY #54636 /* ~"Es muß einen anderen Weg geben, Trias."~ */ GOTO 91
END

IF ~~ THEN BEGIN 77 // from: 73.1
  SAY #54637 /* ~Das Gesicht des Deva verdunkelt sich. "Ich tue das, um den Namen Gottes reinzuwaschen!" knurrt er. "Während die Generäle der Oberen Ebenen hinter ihren goldenen Toren kauern und einen brutalen Krieg schüren, der Unschuldige verschlingt, werde ich sie mit dem konfrontieren, was sie am meisten fürchten. Durch diese Konfrontation werden sie ihre Angst überwinden."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 182
END

IF ~~ THEN BEGIN 78 // from:
  SAY #54638 /* ~"Viele ihrer Möglichkeiten vermutest du nur, Tanar-Ri. Ein Gefühl dafür, wessen Zeit gekommen ist, ist stärker als jede Armee. Was verstehst du schon von militärischen Strategien, *Verführerin?* Deine Fähigkeiten liegen woanders." Seine Augen wandern über ihren Körper. "Überlaß die Strategie denen, die etwas davon verstehen."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 183
END

IF ~~ THEN BEGIN 79 // from:
  SAY #54639 /* ~"Du bist mir ein Rätsel, Tanar-Ri. Das ist sicher genau das, was du zu sein wünschst." Er wendet seine Aufmerksamkeit wieder dir zu.~ */
  IF ~~ THEN REPLY #54640 /* ~"Und du denkst, du kannst dieses Problem lösen, indem du dein *Heimatland* verrätst?"~ */ GOTO 80
  IF ~~ THEN REPLY #54641 /* ~"Willst du die Felder des Guten mit der Saat des Bösen verpesten?"~ */ GOTO 90
  IF ~  CheckStatGT(Protagonist,15,WIS)
GlobalGT("Good","GLOBAL",14)
~ THEN REPLY #54642 /* ~"Es muß einen anderen Weg geben, Trias."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Trias_1","GLOBALGood",1)
~ GOTO 87
  IF ~  CheckStatGT(Protagonist,15,WIS)
GlobalLT("Good","GLOBAL",15)
~ THEN REPLY #54643 /* ~"Es muß einen anderen Weg geben, Trias."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Trias_1","GLOBALGood",1)
~ GOTO 88
END

IF ~~ THEN BEGIN 80 // from: 76.0 79.0 90.0
  SAY #54644 /* ~"Ich werde dir etwas über Verrat erzählen, Mensch. Verrat bedeutet, den Kampf gegen das Böse aufzugeben. Verrat ist Feigheit, ist, wenn du deinen Gegnern Waffen verkaufst, weil du befürchtest, daß sie aufhören könnten, sich gegenseitig umzubringen, und sich gegen dich wenden könnten. Verrat heißt, sich zu weigern, mit gutem Beispiel voranzugehen. Verrat ist, die Scheusale frei durch die Ebenen laufen zu lassen, bis das Böse alle Herzen erfaßt hat. Frage mich nicht, warum ich den Berg Zelestia erklimmen und seine ach so behaglichen Hänge mit dem Feuer des Krieges entzünden will. Es ist kein Verrat." ~ */
  IF ~~ THEN REPLY #54645 /* ~"Du würdest die Essenz des Guten mit bösen Inkarnationen füllen. Das klingt nach Verrat."~ */ GOTO 81
  IF ~~ THEN REPLY #54646 /* ~"Verrat bleibt Verrat."~ */ GOTO 81
  IF ~~ THEN REPLY #54647 /* ~"Ich habe genug von deiner Selbstgerechtigkeit, Trias. Du wirst jetzt sterben."~ */ GOTO 70
END

IF ~~ THEN BEGIN 81 // from: 80.0 80.1 86.0 86.1
  SAY #54648 /* ~"Es gibt viele Definitionen von Verrat. Man muß lange leben, um sie alle zu erfahren. Selbst dein Leben, wäre es nicht mit Vergeßlichkeit geschlagen, dauert nicht genügend Jahrhunderte, um sie alle erfassen zu können. Solch ein Verrat ist überhaupt kein Verrat."~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #54649 /* ~"Was ist wirklich mit deinen Flügeln geschehen, Trias?"~ */ GOTO 82
  IF ~~ THEN REPLY #54650 /* ~"Laß es bleiben, Trias, dann werden wir nicht kämpfen müssen."~ */ GOTO 83
  IF ~~ THEN REPLY #54651 /* ~"Genug, Trias. Verteidige dich."~ */ GOTO 84
  IF ~~ THEN REPLY #54652 /* ~"Sag mir, wie ich zur Festung der Reue gelange, Trias, und ich laß dich hier."~ */ GOTO 85
END

IF ~~ THEN BEGIN 82 // from: 81.0 91.0
  SAY #54653 /* ~"Baators Feuer sind wirklich sehr heiß, doch verglichen mit dem Zorn eines Vaters sind sie nur Kerzen." Er flattert mit seinen verbrannten Flügelfetzen. "Kein Schmerz ist so stark, wie vom Berg Zelestia verstoßen zu werden."~ */
  IF ~  CheckStatGT(Protagonist,15,WIS)
GlobalGT("Good","GLOBAL",14)
~ THEN REPLY #54654 /* ~"Laß es bleiben, Trias. Du kannst immer noch erlöst werden."~ */ GOTO 87
  IF ~  CheckStatGT(Protagonist,15,WIS)
GlobalLT("Good","GLOBAL",15)
~ THEN REPLY #54655 /* ~"Laß es bleiben, Trias. Du kannst immer noch erlöst werden."~ */ GOTO 88
  IF ~~ THEN REPLY #54656 /* ~"Dann wurdest du also verstoßen? Warum sollte ich dir irgend etwas glauben?"~ */ GOTO 92
END

IF ~~ THEN BEGIN 83 // from: 81.1 90.1 91.1
  SAY #54657 /* ~"Ist deine Dummheit so groß, daß du deine Pseudo-Unsterblichkeit gegen einen echten Unsterblichen messen willst? Aus dem Weg, Mensch, oder wir werden deine Behauptung auf die Probe stellen."~ */
  IF ~~ THEN REPLY #54658 /* ~"Na los, Trias."~ */ GOTO 84
END

IF ~~ THEN BEGIN 84 // from: 81.2 83.0 88.0
  SAY #54659 /* ~"Es ist lange her, daß ich das Schwert gegen einen anderen geführt haben. Wir werden uns duellieren, du und ich."~ [TTB119] */
  IF ~~ THEN REPLY #54660 /* ~Greif ihn an.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 85 // from: 65.2 69.2 74.1 75.1 81.3
  SAY #54661 /* ~Trias Augen funkeln. "Das glaube ich nicht, Sterblicher. Du wirfst Schatten auf die Existenz, du beschwörst Qualen vom Himmel herunter, und es liegt in meiner Macht, dich dem Licht zu öffnen." Auf seiner Klinge tanzen weiße Flammen. "Wir werden uns duellieren, du und ich."~ */
  IF ~~ THEN REPLY #54662 /* ~"In Ordnung, Trias... Aber ich werde dich töten."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 86 // from: 74.0 75.0
  SAY #54663 /* ~"Ich lasse mich von dir nicht verurteilen, Sterblicher, nicht bei den Leben, das du gelebt hast. Ich werde dir sagen, was Verrat ist: Verrat ist Feigheit, ist, Waffen an deine Gegner zu verkaufen, aus Furcht, sie könnten aufhören, sich gegenseitig zu bekämpfen, und sich statt dessen gegen dich wenden. Verrat ist, sich zu weigern, mit gutem Beispiel voranzugehen. Verrat ist, die Scheusale frei durch die Ebenen laufen zu lassen, bis das Böse alle Herzen erfaßt hat. Darum frage nicht, warum ich den Berg Zelestia erklimmen und seine Hänge mit dem Feuer des Krieges entzünden will."~ */
  IF ~~ THEN REPLY #54664 /* ~"Du würdest die Essenz des Guten mit bösen Inkarnationen füllen. Das klingt nach Verrat."~ */ GOTO 81
  IF ~~ THEN REPLY #54665 /* ~"Verrat bleibt Verrat."~ */ GOTO 81
  IF ~~ THEN REPLY #54666 /* ~"Ich habe genug von deiner Selbstgerechtigkeit, Trias. Du wirst jetzt sterben."~ */ GOTO 70
END

IF ~~ THEN BEGIN 87 // from: 79.2 82.0
  SAY #54667 /* ~Er sieht dir tief in die Augen. "Die Zeit für die Erlösung ist vorbei, Sterblicher. Ich bereue nichts. Wenn man wirklich an eine Sache glaubt, muß man bereit sein, sie zu verraten. Ich glaube an das Gute, und daher habe ich mich entschlossen, es zu verraten."~ */
  IF ~~ THEN REPLY #54668 /* ~"Vielleicht kann ich dich umstimmen..."~ */ GOTO 89
END

IF ~~ THEN BEGIN 88 // from: 79.3 82.1
  SAY #54669 /* ~Er lacht spöttisch. "Du hast kein Recht, von Erlösung zu sprechen, Sterblicher. Du riechst nach Bösem, deine Worte sind Fallen und Lügen. Nein, dieser Plan wird fortgesetzt, und wir werden die Himmelspforten brennen sehen, irgendwann."~ */
  IF ~~ THEN REPLY #54670 /* ~"Dann werden wir kämpfen."~ */ GOTO 84
END

IF ~~ THEN BEGIN 89 // from: 87.0 92.1
  SAY #54671 /* ~"Laß uns unsere Waffen messen, Sterblicher, und wir werden sehen, wessen Ideen das größere Gewicht haben. Verteidige dich, Sterblicher."~ */
  IF ~~ THEN REPLY #54672 /* ~Mach dich bereit.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #54673 /* ~Greif den Deva an.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 90 // from: 76.1 79.1
  SAY #54674 /* ~"Der Beigeschmack wird nicht lange anhalten und wird durch die Reinheit derer, die bleiben, weggewaschen werden. Es ist ein Opfer für das größere Gute."~ */
  IF ~~ THEN REPLY #54675 /* ~"Dein Heimatland verraten?"~ */ GOTO 80
  IF ~~ THEN REPLY #54676 /* ~"Das reicht, Trias. Laß das bleiben, oder wir werden kämpfen."~ */ GOTO 83
END

IF ~~ THEN BEGIN 91 // from: 76.2
  SAY #54677 /* ~"Du, der du von menschlichen Lebensspannen sprichst, maßt es dir an, einem wahren Unsterblichen zu sagen, daß es einen anderen Weg geben muß? Ich habe die anderen Wege überprüft, Sterblicher. Dies ist der einzige Weg."~ */
  IF ~~ THEN REPLY #54678 /* ~"Was ist wirklich mit deinen Flügeln geschehen, Trias?"~ */ GOTO 82
  IF ~~ THEN REPLY #54679 /* ~"Das reicht, Trias. Laß das bleiben, oder wir werden kämpfen."~ */ GOTO 83
END

IF ~~ THEN BEGIN 92 // from: 82.2
  SAY #54680 /* ~"Erzähle mir nicht von Verrat und Scheitern, Sterblicher. Ich bin bereit, sogar mich selbst aufzugeben, damit das Gute triumphieren kann."~ */
  IF ~~ THEN REPLY #54681 /* ~"Das ist edel, Trias, aber woher nimmst du das Recht dazu?"~ */ GOTO 75
  IF ~~ THEN REPLY #54682 /* ~"Ich hoffe, du bist bereit, dieses Opfer jetzt zu bringen, Trias. Ich werde das Werkzeug des Richters sein."~ */ GOTO 89
END

IF ~~ THEN BEGIN 93 // from: 63.0
  SAY #54683 /* ~"Halt ein, Sterblicher. Du kamst zu mir auf der Suche nach Wissen, das nur ich alleine besitze. Niemand sonst auf den Ebenen kann dir sagen, was ich dir sagen werde. Wenn du dieses Wissen wirklich erlangen willst, dann mußt du mir versprechen, mein Leben zu verschonen."~ */
  IF ~~ THEN REPLY #54684 /* ~"Kommt nicht in Frage, Trias. Sag es mir sofort, oder ich bring' dich um. Ich pfeife auf die Konsequenzen."~ */ GOTO 95
  IF ~~ THEN REPLY #54685 /* ~"Ich verschone dein Leben, wenn du mir das Wissen gibst, das ich suche."~ */ GOTO 96
  IF ~~ THEN REPLY #54686 /* ~"Ich schwöre, dein Leben zu verschonen, wenn du mir das Wissen gibst, das ich suche."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Trias_1","GLOBALLaw",1)
~ GOTO 96
  IF ~~ THEN REPLY #54687 /* ~Töte den Deva.~ */ DO ~SetGlobal("Game_Over","GLOBAL",3)
~ GOTO 98
END

IF ~~ THEN BEGIN 94 // from: 63.1
  SAY #54688 /* ~Er hustet blutige Spucke. "Bevor ich es dir sage, mußt du mir ein Versprechen geben. Du mußt schwören, mein Leben zu verschonen."~ */
  IF ~~ THEN REPLY #54689 /* ~"Kommt nicht in Frage, Trias. Sag es mir sofort, oder ich bring' dich um. Ich pfeife auf die Konsequenzen."~ */ GOTO 95
  IF ~~ THEN REPLY #54690 /* ~"Ich verschone dein Leben, wenn du mir das Wissen gibst, das ich suche."~ */ GOTO 96
  IF ~~ THEN REPLY #54691 /* ~"Ich schwöre, dein Leben zu verschonen, wenn du mir das Wissen gibst, das ich suche."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Trias_1","GLOBALLaw",1)
~ GOTO 96
  IF ~~ THEN REPLY #54692 /* ~Töte den Deva.~ */ DO ~SetGlobal("Game_Over","GLOBAL",3)
~ GOTO 98
END

IF ~~ THEN BEGIN 95 // from: 93.0 94.0
  SAY #54693 /* ~"Du brauchst dieses Wissen, oder du wirst... auf ewig leiden."~ */
  IF ~~ THEN REPLY #54694 /* ~"Ich sagte: *Sag es mir.*"~ */ GOTO 97
  IF ~~ THEN REPLY #54695 /* ~"Ich verschone dein Leben, wenn du mir das Wissen gibst, das ich suche."~ */ GOTO 96
  IF ~~ THEN REPLY #54696 /* ~"Ich schwöre, dein Leben zu verschonen, wenn du mir das Wissen gibst, das ich suche."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Trias_1","GLOBALLaw",1)
~ GOTO 96
  IF ~~ THEN REPLY #54697 /* ~Töte den Deva.~ */ DO ~SetGlobal("Game_Over","GLOBAL",3)
~ GOTO 98
END

IF ~~ THEN BEGIN 96 // from: 93.1 93.2 94.1 94.2 95.1 95.2 97.0 97.1
  SAY #54698 /* ~"Das Portal zu dem Ort, den du suchst, liegt innerhalb des Ringes über dem Turm, in der Stadt Sigil, der Stadt der Türen. In dieser Stadt gibt es einen Ort, wo die Toten deiner Sorte hingebracht werden..."~ */
  IF ~~ THEN REPLY #54699 /* ~"Du meinst die *Leichenhalle*?"~ */ GOTO 99
  IF ~~ THEN REPLY #54700 /* ~"Was ist der Schlüssel?"~ */ GOTO 100
END

IF ~~ THEN BEGIN 97 // from: 95.0
  SAY #54701 /* ~Er lacht still. "Du hast wohl keine Wahl, Sterblicher. Schwöre es mir, oder das Wissen ist dir für immer verloren."~ */
  IF ~~ THEN REPLY #54702 /* ~"Nun gut. Ich werde dein Leben verschonen, wenn du mir das Wissen gibst, das ich suche."~ */ GOTO 96
  IF ~~ THEN REPLY #54703 /* ~"Nun gut. Ich schwöre, dein Leben zu verschonen, wenn du mir das Wissen gibst, das ich suche."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Trias_1","GLOBALLaw",1)
~ GOTO 96
  IF ~~ THEN REPLY #54704 /* ~Töte den Deva.~ */ DO ~SetGlobal("Game_Over","GLOBAL",3)
~ GOTO 98
END

IF ~~ THEN BEGIN 98 // from: 63.2 93.3 94.3 95.3 97.2 107.0
  SAY #54705 /* ~Du schlägst ihn nieder, zerschmetterst dabei die Knochen seines stolzen Gesichts und zerstörst dessen makellose Schönheit. Mit schwindender Kraft sagt er: "Wisse, daß du dich selbst verflucht hast. Dadurch, daß du mich getötet hast, hast du den letzten Schild zerstört, den du gegen die Schrecken besessen hast, die dich zerstören werden. Das Scheusal, das ich überlistet habe... ist nun frei..." Sein schwaches Lachen erstirbt, und das Licht schwindet aus seinen Augen. ~ */
  IF ~~ THEN REPLY #54706 /* ~"Stirb einfach, jetzt schon."~ */ DO ~AddexperienceParty(375000)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 99 // from: 96.0
  SAY #54707 /* ~"Da bist du neulich aufgewacht, nicht wahr? Die Ebenen scheinen in letzter Zeit voller solcher Ironie zu stecken. Du warst so *nahe* dran..."~ */
  IF ~~ THEN REPLY #54708 /* ~"Was ist der Schlüssel?"~ */ GOTO 100
END

IF ~~ THEN BEGIN 100 // from: 96.1 99.0
  SAY #54709 /* ~"Die Festung der Reue ist aus Tränen gemauert, und Gleiches zieht Gleiches an. Um die Festung zu betreten, mußt du etwas dazu beisteuern. Wenn du am Portal vorbeigehst und Reue in deinem Herzen trägst, so wirst du die Gegenwart des Portals spüren wie die kalte Umarmung des Todes."~ */
  IF ~~ THEN REPLY #54710 /* ~"Und?"~ */ DO ~SetGlobal("Regret","GLOBAL",1)
~ JOURNAL #54711 /* ~Trias, der Verräter, hat mir den Schlüssel zur Festung der Reue gegeben. Das Portal liegt irgendwo in der Leichenhalle; ich kann es ausfindig machen, indem ich etwas, das ich bereue, frisch im Gedächtnis bewahre. Das wird mich dann kühl durchfahren, wenn ich mich dem Portal nähere. Bin ich einmal vor dem Portal, muß ich mir einen Hautfetzen von meinem Körper reißen und etwas, was ich bereue, mit Blut aus meinem linken Zeigefinger daraufschreiben.~ */ GOTO 101
END

IF ~~ THEN BEGIN 101 // from: 100.0
  SAY #54712 /* ~"Während diese Kälte dich umfängt, mußt du dir eine Stück deiner Haut abreißen und mit Blut aus deinem linken Zeigefinger ein Reuebekenntnis daraufschreiben. Das Portal wird sich öffnen, und du kannst die Wahrheit hinter der Festung der Reue entdecken - vielleicht triffst du auch ihren Wächter."~ */
  IF ~~ THEN REPLY #54713 /* ~"Woher weißt du das?"~ */ GOTO 102
  IF ~~ THEN REPLY #54714 /* ~"Was kannst du mir über den Wächter der Festung erzählen?"~ */ GOTO 103
END

IF ~~ THEN BEGIN 102 // from: 101.0
  SAY #54715 /* ~"Viele Bündnisse habe ich auf den Ebenen gesucht. Meine Suche führte mich zur Festung, wo ich mit ihrem Herrn und dem Wächter ihrer überschatteten Hallen sprach. Sicher möchtest du jetzt nach Sigil zurückkehren. Das Blut an deinen Händen wird dir als Schlüssel zu diesem Portal dienen. Gehe einfach durch die Tür, durch die du eingetreten bist, und du wirst zurückkehren.~ */
  IF ~~ THEN REPLY #54716 /* ~"Was kannst du mir über diesen Wächter erzählen?"~ */ GOTO 103
  IF ~~ THEN REPLY #54717 /* ~"Was kannst du mir über die Festung erzählen?"~ */ GOTO 58
  IF ~~ THEN REPLY #54718 /* ~"Meinen Dank, Trias. Jetzt wirst du sterben."~ */ GOTO 105
  IF ~~ THEN REPLY #54719 /* ~"Was wirst du tun, wenn ich gegangen bin, Trias?"~ */ GOTO 106
END

IF ~~ THEN BEGIN 103 // from: 60.0 101.1 102.0
  SAY #54720 /* ~"Der ist sehr mächtig. Du kannst ihn nicht besiegen, und du kannst deine Sterblichkeit nicht aus seinem eisigen Griff entwinden. Sie ist für dich verloren. Nur ein Narr wie du läßt sich auf solch ein Unterfangen ein."~ */
  IF ~~ THEN REPLY #54721 /* ~"Ich bin vielleicht ein Narr, aber ich will dennoch mehr über diesen Wächter wissen."~ */ DO ~SetGlobal("Know_Keeper_Mortality","GLOBAL",1)
~ GOTO 104
  IF ~~ THEN REPLY #54722 /* ~"Erzähl weiter."~ */ DO ~SetGlobal("Know_Keeper_Mortality","GLOBAL",1)
~ GOTO 104
END

IF ~~ THEN BEGIN 104 // from: 103.0 103.1
  SAY #54723 /* ~"Die Sterblichkeit eines Menschen ist wie ein Kompaß, der ihn durchs Leben führt. Wenn sie wie ein Ding ergriffen werden kann, kann man viel über das Wesen desjenigen lernen, dem sie entrissen wurde. Dein Gegner weiß mehr über dich, als du je wissen wirst. Er hat dich beobachtet und während vieler deiner Halbleben genau studiert. Ich kenne sein Herz. Er wird dir das, was du suchst, nicht zurückgeben."~ */
  IF ~~ THEN REPLY #54717 /* ~"Was kannst du mir über die Festung erzählen?"~ */ GOTO 58
  IF ~~ THEN REPLY #54724 /* ~"Meinen Dank, Trias. Jetzt wirst du sterben."~ */ GOTO 105
  IF ~~ THEN REPLY #54725 /* ~"Was wirst du tun, wenn ich gegangen bin, Trias?"~ */ GOTO 106
END

IF ~~ THEN BEGIN 105 // from: 60.1 102.2 104.1
  SAY #54726 /* ~"Aber du hast geschworen..."~ */
  IF ~  Global("Lawful_Trias_1","GLOBAL",1)
~ THEN REPLY #54727 /* ~"Ich habe gelogen."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Trias_1","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Trias_2","GLOBALGood",-1)
~ GOTO 107
  IF ~  !Global("Lawful_Trias_1","GLOBAL",1)
~ THEN REPLY #54728 /* ~"Ich habe überhaupt nichts geschworen. Ich habe lediglich gesagt, daß ich dein Leben verschonen würde. Ich hab's mir anders überlegt."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Trias_2","GLOBALGood",-1)
~ GOTO 107
  IF ~~ THEN REPLY #54729 /* ~"Ich mach' nur Spaß. Was machst du, wenn ich gegangen bin, Trias?"~ */ GOTO 106
END

IF ~~ THEN BEGIN 106 // from: 60.2 102.3 104.2 105.2
  SAY #54730 /* ~"Ich werde noch einmal versuchen, eine Heerschar gegen die Pforten des Paradieses zu führen. Sie wollen mich nicht zurückhaben, und mein Dasein hat keinen anderen Zweck."~ */
  IF ~~ THEN REPLY #54731 /* ~"Dann muß ich dich aufhalten, Sofort."~ */ GOTO 108
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #54732 /* ~"Trias, hast du das Gesicht deines Vaters vergessen?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Trias_2","GLOBALGood",1)
~ GOTO 109
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #54733 /* ~"Viel Glück damit. Leb wohl."~ */ DO ~SinisterPoof("S0P2CUR3",[2577.3268],1)
PlaySoundNotRanged("CURES03")
DestroySelf()
~ EXIT
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #54734 /* ~"Viel Glück damit. Leb wohl."~ */ EXTERN ~DVHAIL~ 14
END

IF ~~ THEN BEGIN 107 // from: 105.0 105.1 108.0 108.1
  SAY #54735 /* ~"Ich verfluche dich zu Leben ohne Bedeutung. Mögest du in deiner mit ewigen Qualen gefüllten Hülle leiden und niemals die Erinnerungen an die Freude von Licht und Liebe genießen. Das bißchen, was von deiner Menschlichkeit übrig ist, soll dein Tod sein, Sterblicher."~ */
  IF ~~ THEN REPLY #54736 /* ~Strecke ihn nieder. "Lebe wohl, Trias." ~ */ GOTO 98
END

IF ~~ THEN BEGIN 108 // from: 106.0 111.1
  SAY #54737 /* ~"Du hast geschworen, mein Leben zu verschonen, Sterblicher."~ */
  IF ~  Global("Lawful_Trias_1","GLOBAL",1)
~ THEN REPLY #54738 /* ~"Sagen wir einfach, ich tue es für ein größeres Gutes, Trias."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Trias_1","GLOBALLaw",-3)
~ GOTO 107
  IF ~  !Global("Lawful_Trias_1","GLOBAL",1)
~ THEN REPLY #54739 /* ~"Ich habe überhaupt nichts geschworen. Ich habe nur gesagt, ich würde dein Leben verschonen. Doch jetzt ist mir klar geworden, daß es sinnlos wäre. Ich habe meine Meinung geändert."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Trias_2","GLOBALGood",-1)
~ GOTO 107
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #54740 /* ~"Dann versuch es eben. Aber wisse, daß sie auf dich vorbereitet sein werden. Leb wohl, Trias. Auf daß dein Unterfangen scheitere."~ */ DO ~EscapeArea()
~ EXIT
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #54741 /* ~"Dann versuch es eben. Aber wisse, daß sie auf dich vorbereitet sein werden. Leb wohl, Trias. Auf daß dein Unterfangen scheitere."~ */ EXTERN ~DVHAIL~ 14
END

IF ~~ THEN BEGIN 109 // from: 106.1
  SAY #54742 /* ~"Was meinst du?"~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #54743 /* ~"Die Oberen Ebenen sind die Heimat der Gerechtigkeit, der Schönheit und der Güte. Sie sind auch die Heimat der Vergebung. Geh nach Hause. Gestehe deinen Fehler ein und bitte um Vergebung."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Trias_3","GLOBALGood",5)
SetGlobal("Trias_Redeem","GLOBAL",1)
~ GOTO 110
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #54744 /* ~"Die Oberen Ebenen sind die Heimat der Gerechtigkeit, der Schönheit und der Güte. Sie sind auch die Heimat der Vergebung. Geh nach Hause. Gestehe deinen Fehler ein und bitte um Vergebung."~ */ GOTO 111
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #54745 /* ~"Vergiß es. Leb wohl, Trias."~ */ DO ~SinisterPoof("S0P2CUR3",[2577.3268],1)
PlaySoundNotRanged("CURES03")
DestroySelf()
~ EXIT
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #54746 /* ~"Vergiß es. Leb wohl, Trias."~ */ EXTERN ~DVHAIL~ 14
END

IF ~~ THEN BEGIN 110 // from: 109.0 111.0
  SAY #54747 /* ~Er setzt zu einer wütenden Antwort an... und hält nachdenklich inne. Er senkt den Kopf. "Deine Worte sind überzeugend, Sterblicher, und ihre Weisheit geht mir durch und durch. Ich werde meine Väter um Vergebung bitten und jede Wiedergutmachung akzeptieren, die sie fordern. Nimm dies und leb wohl, Sterblicher. Wenn wir uns wiedersehen, werde ich hoffentlich erlöst sein."~ */
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #54748 /* ~"Viel Glück, Trias. Leb wohl."~ */ DO ~GiveItem("SPWI901",Protagonist)
AddexperienceParty(375000)
StickySinisterPoof("S113SMOK",Myself,1)
Wait(1)
DestroySelf()
~ JOURNAL #54750 /* ~Ich habe Trias überredet, Vergebung in den Oberen Ebenen zu suchen.~ */ EXIT
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #54749 /* ~"Viel Glück, Trias. Leb wohl."~ */ DO ~GiveItem("SPWI901",Protagonist)
~ JOURNAL #54751 /* ~Ich habe Trias überredet, Vergebung in den Oberen Ebenen zu suchen - und dann hat Vhailor ihn angegriffen.~ */ EXTERN ~DVHAIL~ 14
END

IF ~~ THEN BEGIN 111 // from: 109.1
  SAY #54752 /* ~Sein Gesicht hellt sich auf und verfinstert sich dann wieder. Er sieht weg. "Ich kann nicht zurück. Meine Vergehen sind zu groß. Für einen wie mich gibt es keine Vergebung. Ich werde jetzt dem Guten auf meine eigene Weise dienen."~ */
  IF ~  CheckStatGT(Protagonist,16,WIS)
~ THEN REPLY #54753 /* ~"Es gibt Vergebung, Trias. Genau wie du mehr bist als ein niederer Sucher, sind die Mächte der Oberen Ebenen gerechter als du. Du bist nicht der Inbegriff der Güte. Denke daran, daß du ihnen vertrauen kannst."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Trias_3","GLOBALGood",5)
SetGlobal("Trias_Redeem","GLOBAL",1)
~ GOTO 110
  IF ~~ THEN REPLY #54754 /* ~"Dann muß ich dich hier aufhalten."~ */ GOTO 108
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #54755 /* ~"Dann leb wohl, und denke immer daran, daß du eine Gelegenheit zur Erlösung gehabt und sie ausgeschlagen hast."~ */ DO ~SinisterPoof("S0P2CUR3",[2577.3268],1)
PlaySoundNotRanged("CURES03")
DestroySelf()
~ EXIT
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #54756 /* ~"Dann leb wohl, und denke immer daran, daß du eine Gelegenheit zur Erlösung gehabt und sie ausgeschlagen hast."~ */ EXTERN ~DVHAIL~ 14
END

IF WEIGHT #13 /* Triggers after states #: 124 123 122 121 120 119 even though they appear after this state */
~  Global("Current_Area","GLOBAL",702)
NumTimesTalkedToGT(0)
Global("Trias_Sword","GLOBAL",3)
~ THEN BEGIN 112 // from:
  SAY #54757 /* ~"Schon wieder?"~ [TTB037] */
  IF ~~ THEN REPLY #54758 /* ~"Ich hätte noch ein paar Fragen an dich."~ */ GOTO 53
  IF ~~ THEN REPLY #54759 /* ~"Eigentlich nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 113 // from:
  SAY #54760 /* ~Vhailor schlägt ihn nieder, zerschmettert die Knochen seines stolzen Gesichts und tränkt seinen makellosen Körper mit Blut. Mit letzter Kraft sagt Trias: "Wisse, daß du dich selbst verdammt hast. Dadurch, daß du mich getötet hast, hast du den letzten Schild zwischen dir und den Schrecken, die dich verzehren werden, zerschlagen. Das Scheusal, das ich überlistet habe... er ist jetzt frei..." Sein schwaches Lachen erstirbt, und das Licht schwindet aus seinen Augen.~ */
  IF ~~ THEN REPLY #106512 /* ~"Verdammt, Vhailor, weißt du, was du da angerichtet hast?!"~ */ DO ~SetGlobal("Trias_Redeem","GLOBAL",0)
AddexperienceParty(375000)
Kill(Myself)
~ EXTERN ~DVHAIL~ 170
  IF ~~ THEN REPLY #54761 /* ~"Stirb einfach, jetzt schon."~ */ DO ~SetGlobal("Trias_Redeem","GLOBAL",0)
AddexperienceParty(375000)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 114 // from: 0.0
  SAY #61293 /* ~Der Deva hebt den Kopf und läßt seinen Blick auf dir ruhen. Seine Stimme ist klar und melodisch. "Was wünschst du von mir, Sterblicher? Sprich frei heraus und überlass mich meinen Erinnerungen an das Paradies." Bevor du antworten kannst, verhärten sich die Züge des Devas, und er runzelt die Stirn.~ [TTB004] */
  IF ~~ THEN JOURNAL #54312 /* ~Ich habe den Engel gefunden, von dem Ravel gesprochen hat. Sein Name ist Trias, und er sitzt in einem Gefängnis in Verdammnis. Allein der Gedanke daran, daß die Bewohner einen Engel so behandeln... Verdammnis ist wirklich eine Stadt der Halsabschneider und Meuchelmörder. Nicht, daß es meines Wissens ANDERSWO anders zugehen würde.~ */ GOTO 5
END

IF ~~ THEN BEGIN 115 // from: 0.1
  SAY #61294 /* ~Der Deva hebt den Kopf und läßt seinen Blick auf dir ruhen. Seine Stimme ist klar und melodisch. "Was wünschst du von mir, Sterblicher? Sprich frei heraus und überlass mich meinen Erinnerungen an das Paradies." Bevor du antworten kannst, verhärten sich die Züge des Devas, und er runzelt die Stirn.~ [TTB004] */
  IF ~~ THEN JOURNAL #54312 /* ~Ich habe den Engel gefunden, von dem Ravel gesprochen hat. Sein Name ist Trias, und er sitzt in einem Gefängnis in Verdammnis. Allein der Gedanke daran, daß die Bewohner einen Engel so behandeln... Verdammnis ist wirklich eine Stadt der Halsabschneider und Meuchelmörder. Nicht, daß es meines Wissens ANDERSWO anders zugehen würde.~ */ GOTO 6
END

IF ~~ THEN BEGIN 116 // from: 0.4 0.5
  SAY #61295 /* ~Der Deva hebt den Kopf und läßt seinen Blick auf dir ruhen. Seine Stimme ist klar und melodisch. "Was wünschst du von mir, Sterblicher? Sprich frei heraus und überlass mich meinen Erinnerungen an das Paradies." Bevor du antworten kannst, verhärten sich die Züge des Devas, und er runzelt die Stirn.~ [TTB004] */
  IF ~~ THEN JOURNAL #54312 /* ~Ich habe den Engel gefunden, von dem Ravel gesprochen hat. Sein Name ist Trias, und er sitzt in einem Gefängnis in Verdammnis. Allein der Gedanke daran, daß die Bewohner einen Engel so behandeln... Verdammnis ist wirklich eine Stadt der Halsabschneider und Meuchelmörder. Nicht, daß es meines Wissens ANDERSWO anders zugehen würde.~ */ GOTO 7
END

IF ~~ THEN BEGIN 117 // from: 2.0 2.2
  SAY #61296 /* ~"Hast du meine Klinge?"~ */
  IF ~  !PartyHasItem("Celestia")
~ THEN REPLY #61297 /* ~"Noch nicht. Ich muß dir ein paar Fragen stellen..."~ */ GOTO 10
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #61298 /* ~"Ich bin sicher, daß es irgendwo hier ist. Zuerst muß ich dir *wirklich* ein paar Fragen stellen..."~ */ GOTO 10
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #61299 /* ~"Ich habe dein Schwert."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #61300 /* ~"Vergiß es. Ich komm wieder."~ */ EXIT
END

IF ~~ THEN BEGIN 118 // from: 18.0
  SAY #61305 /* ~"Du willst mich nicht befreien, Sterblicher? Ich... verfüge vielleicht über Wissen, das sich als nützlich erweisen könnte..."~ */
  IF ~~ THEN REPLY #61306 /* ~"Ich hätte gern ein paar Antworten..."~ */ GOTO 17
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #61307 /* ~Versetze den Ketten einen Hieb.~ */ GOTO 20
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #61308 /* ~Versetze dem Deva einen Hieb.~ */ GOTO 19
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #61308 /* ~Versetze dem Deva einen Hieb.~ */ EXTERN ~DGRACE~ 181
  IF ~~ THEN REPLY #61309 /* ~Geh weg.~ */ EXIT
END

IF WEIGHT #7 ~  Global("Current_Area","GLOBAL",901)
GlobalLT("Curst_Counter","GLOBAL",3)
NearbyDialog("DVhail")
~ THEN BEGIN 119 // from:
  SAY #61310 /* ~Trias Augen lodern vor Rechtschaffenheit. "Diese Menschen sind Verräter, Lügner, Mörder... Sie haben ihr Schicksal verdient!"~ [TTB111] */
  IF ~~ THEN GOTO 64
END

IF WEIGHT #8 ~  Global("Current_Area","GLOBAL",901)
GlobalLT("Curst_Counter","GLOBAL",3)
!NearbyDialog("DVhail")
~ THEN BEGIN 120 // from:
  SAY #61311 /* ~Trias Augen lodern vor Rechtschaffenheit. "Diese Menschen sind Verräter, Lügner, Mörder... Sie haben ihr Schicksal verdient!"~ [TTB111] */
  IF ~~ THEN GOTO 65
END

IF WEIGHT #9 ~  Global("Current_Area","GLOBAL",901)
GlobalGT("Curst_Counter","GLOBAL",2)
GlobalLT("Curst_Counter","GLOBAL",6)
NearbyDialog("DVhail")
~ THEN BEGIN 121 // from:
  SAY #61312 /* ~Trias blickt dich voller Verachtung an. "Sieh an... die Hunde kehren zurück."~ [TTB100] */
  IF ~~ THEN GOTO 66
END

IF WEIGHT #10 ~  Global("Current_Area","GLOBAL",901)
GlobalGT("Curst_Counter","GLOBAL",2)
GlobalLT("Curst_Counter","GLOBAL",6)
!NearbyDialog("DVhail")
~ THEN BEGIN 122 // from:
  SAY #61313 /* ~Trias blickt dich voller Verachtung an. "Sieh an... die Hunde kehren zurück."~ [TTB100] */
  IF ~~ THEN GOTO 67
END

IF WEIGHT #11 ~  Global("Current_Area","GLOBAL",901)
GlobalGT("Curst_Counter","GLOBAL",5)
NearbyDialog("DVhail")
~ THEN BEGIN 123 // from:
  SAY #61316 /* ~"Was hoffst du hier zu erreichen?"~ [TTB106] */
  IF ~~ THEN GOTO 68
END

IF WEIGHT #12 ~  Global("Current_Area","GLOBAL",901)
GlobalGT("Curst_Counter","GLOBAL",5)
!NearbyDialog("DVhail")
~ THEN BEGIN 124 // from:
  SAY #61317 /* ~"Was hoffst du hier zu erreichen?"~ [TTB106] */
  IF ~~ THEN GOTO 69
END

IF ~~ THEN BEGIN 125 // from: 0.2
  SAY #61293 /* ~Der Deva hebt den Kopf und läßt seinen Blick auf dir ruhen. Seine Stimme ist klar und melodisch. "Was wünschst du von mir, Sterblicher? Sprich frei heraus und überlass mich meinen Erinnerungen an das Paradies." Bevor du antworten kannst, verhärten sich die Züge des Devas, und er runzelt die Stirn.~ [TTB004] */
  IF ~~ THEN JOURNAL #54312 /* ~Ich habe den Engel gefunden, von dem Ravel gesprochen hat. Sein Name ist Trias, und er sitzt in einem Gefängnis in Verdammnis. Allein der Gedanke daran, daß die Bewohner einen Engel so behandeln... Verdammnis ist wirklich eine Stadt der Halsabschneider und Meuchelmörder. Nicht, daß es meines Wissens ANDERSWO anders zugehen würde.~ */ EXTERN ~DGRACE~ 176
END

IF ~~ THEN BEGIN 126 // from: 0.3
  SAY #61293 /* ~Der Deva hebt den Kopf und läßt seinen Blick auf dir ruhen. Seine Stimme ist klar und melodisch. "Was wünschst du von mir, Sterblicher? Sprich frei heraus und überlass mich meinen Erinnerungen an das Paradies." Bevor du antworten kannst, verhärten sich die Züge des Devas, und er runzelt die Stirn.~ [TTB004] */
  IF ~~ THEN JOURNAL #54312 /* ~Ich habe den Engel gefunden, von dem Ravel gesprochen hat. Sein Name ist Trias, und er sitzt in einem Gefängnis in Verdammnis. Allein der Gedanke daran, daß die Bewohner einen Engel so behandeln... Verdammnis ist wirklich eine Stadt der Halsabschneider und Meuchelmörder. Nicht, daß es meines Wissens ANDERSWO anders zugehen würde.~ */ EXTERN ~DGRACE~ 177
END
