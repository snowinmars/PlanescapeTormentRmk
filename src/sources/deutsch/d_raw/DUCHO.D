// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DUCHO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DUCHO~

IF ~  True()
True()
~ THEN BEGIN 0 // from:
  SAY #49968 /* ~Diese schöne und verführerische Prostituierte ist völlig anders als die, die du im Stock gesehen hast. Sie riecht nach teurem Parfüm, und ihre Gesichtszüge werden durch weich gezogene Linien in weichen und warmen Farben subtil betont. Sie lächelt, als du dich näherst und macht einen anmutigen Knicks. "Seid gegrüßt, werter Herr. Ihr wollt doch sicher eine Lust stillen, die das Bordell von Lady Grace nicht befriedigen kann, oder?"~ */
  IF ~  Global("AR0605_Visited","GLOBAL",0)
~ THEN REPLY #61436 /* ~"Ich weiß nichts von einem 'Bordell', aber ich akzeptiere jedes Angebot von dir."~ */ GOTO 4
  IF ~  Global("AR0605_Visited","GLOBAL",1)
~ THEN REPLY #61437 /* ~"Ja."~ */ GOTO 4
  IF ~  Global("Morte_UCHO","GLOBAL",1)
~ THEN REPLY #61438 /* ~"Ich nicht, aber ich glaube, Morte hier vielleicht..."~ */ GOTO 9
  IF ~~ THEN REPLY #61439 /* ~"Nein... aber ich hätte da ein paar Fragen..."~ */ GOTO 1
  IF ~~ THEN REPLY #61440 /* ~"Nein, danke. Leb wohl."~ */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.3
  SAY #49972 /* ~Sie legt den Finger auf die Lippen, um dich zum Schweigen zu bringen. "Es gibt nur eine einzige Frage, die ich beantworte, guter Herr, und dies ist die Antwort: 'Ja, für nur fünfhundert Münzen.'"~ */
  IF ~~ THEN REPLY #49973 /* ~"Fünfhundert? Das ist ganz schön viel..."~ */ GOTO 3
  IF ~  PartyGoldGT(499)
!NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
~ THEN REPLY #61441 /* ~"Klingt gut. Ja, laß uns gehen."~ */ DO ~TakePartyGold(500)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 8
  IF ~  PartyGoldGT(499)
NearbyDialog("Dannah")
~ THEN REPLY #61442 /* ~"Klingt gut. Ja, laß uns gehen."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
SetGlobal("Harlot_Annah_Sex","GLOBAL",1)
~ EXTERN ~DANNAH~ 281
  IF ~  PartyGoldGT(499)
!NearbyDialog("Dannah")
NearbyDialog("Dgrace")
~ THEN REPLY #61443 /* ~"Klingt gut. Ja, laß uns gehen."~ */ DO ~TakePartyGold(500)
MoraleDec("Grace",1)
SetGlobal("Harlot_Grace_Sex","GLOBAL",1)
IncrementGlobal("Banged_Harlot","GLOBAL",1)
~ EXTERN ~DGRACE~ 202
  IF ~  PartyGoldLT(500)
~ THEN REPLY #61444 /* ~"Ich habe nicht genug."~ */ GOTO 7
  IF ~~ THEN REPLY #61445 /* ~"Nein, danke. Leb wohl."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.4 1.5 3.7 4.5
  SAY #49975 /* ~"Wie schade! Kommt doch bitte wieder, wenn ihr es Euch anders überlegt, werter Herr - ich werde sehnsüchtig auf Euch warten. Lebt wohl."~ */
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #49976 /* ~Geh weg.~ */ EXIT
  IF ~  NearbyDialog("Dmorte")
Global("Morte_UCHO","GLOBAL",0)
~ THEN REPLY #61446 /* ~Geh weg.~ */ DO ~SetGlobal("Morte_UCHO","GLOBAL",1)
~ EXTERN ~DMORTE~ 600
  IF ~  NearbyDialog("Dmorte")
GlobalGT("Morte_UCHO","GLOBAL",0)
~ THEN REPLY #61447 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 4.0
  SAY #49977 /* ~Sie lächelt. "Oh, ich versichere Euch, werter Herr..." Sie beugt sich vor, um dir mit warmer Stimme ins Ohr zu hauchen: "Keine einzige Münze davon ist verschwendet."~ */
  IF ~  PartyGoldGT(499)
!NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
~ THEN REPLY #49978 /* ~"Klingt gut. Ja, laß uns gehen."~ */ DO ~TakePartyGold(500)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 8
  IF ~  PartyGoldGT(499)
NearbyDialog("Dannah")
~ THEN REPLY #61448 /* ~"Klingt gut. Ja, laß uns gehen."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
SetGlobal("Harlot_Annah_Sex","GLOBAL",1)
~ EXTERN ~DANNAH~ 281
  IF ~  PartyGoldGT(499)
!NearbyDialog("Dannah")
NearbyDialog("Dgrace")
~ THEN REPLY #61449 /* ~"Klingt gut. Ja, laß uns gehen."~ */ DO ~TakePartyGold(500)
MoraleDec("Grace",1)
SetGlobal("Harlot_Grace_Sex","GLOBAL",1)
IncrementGlobal("Banged_Harlot","GLOBAL",1)
~ EXTERN ~DGRACE~ 202
  IF ~  PartyGoldLT(500)
~ THEN REPLY #61450 /* ~"Ich habe nicht genug."~ */ GOTO 7
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #61451 /* ~"Das möchte ich bezweifeln. Leb wohl."~ */ EXIT
  IF ~  NearbyDialog("Dmorte")
Global("Morte_UCHO","GLOBAL",0)
~ THEN REPLY #61452 /* ~"Das möchte ich bezweifeln. Leb wohl."~ */ DO ~SetGlobal("Morte_UCHO","GLOBAL",1)
~ EXTERN ~DMORTE~ 600
  IF ~  NearbyDialog("Dmorte")
GlobalGT("Morte_UCHO","GLOBAL",0)
~ THEN REPLY #61453 /* ~"Das möchte ich bezweifeln. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #61454 /* ~"Nein, danke. Leb wohl."~ */ GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 0.0 0.1
  SAY #61401 /* ~"Es kostet nur fünfhundert Münzen, guter Herr, und ich werde Euch tausendfältig erfreuen..." Sie neigt ihren Kopf kokett und lächelt dich verschmitzt an. "Kommst du also mit mir?"~ */
  IF ~~ THEN REPLY #61459 /* ~"Fünfhundert? Das ist ganz schön viel..."~ */ GOTO 3
  IF ~  PartyGoldGT(499)
!NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
~ THEN REPLY #61455 /* ~"Ich bin dafür. Laß uns gehen."~ */ DO ~TakePartyGold(500)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 8
  IF ~  PartyGoldGT(499)
NearbyDialog("Dannah")
~ THEN REPLY #61456 /* ~"Ich bin dafür. Laß uns gehen."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
SetGlobal("Harlot_Annah_Sex","GLOBAL",1)
~ EXTERN ~DANNAH~ 281
  IF ~  PartyGoldGT(499)
!NearbyDialog("Dannah")
NearbyDialog("Dgrace")
~ THEN REPLY #61457 /* ~"Ich bin dafür. Laß uns gehen."~ */ DO ~TakePartyGold(500)
MoraleDec("Grace",1)
SetGlobal("Harlot_Grace_Sex","GLOBAL",1)
IncrementGlobal("Banged_Harlot","GLOBAL",1)
~ EXTERN ~DGRACE~ 202
  IF ~  PartyGoldLT(500)
~ THEN REPLY #61458 /* ~"Ich habe nicht genug."~ */ GOTO 7
  IF ~~ THEN REPLY #61460 /* ~"Nein, danke. Leb wohl."~ */ GOTO 2
END

IF ~~ THEN BEGIN 5 // from:
  SAY #61402 /* ~Die Kurtisane lächelt süffisant und knickst. "Vielleicht ein anderes Mal, guter Herr, wenn Ihr nicht in Begleitung Eures... Freundes seid. Lebt wohl."~ */
  IF ~~ THEN REPLY #61461 /* ~"Verdammt, Annah... Na schön. Lebt wohl."~ */ EXIT
  IF ~~ THEN REPLY #61462 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY #61403 /* ~Die Kurtisane weicht zurück, aus ihren Augen spricht Angst. Als sie außer Annahs Reichweite ist, reißt sie sich zusammen und grinst den Tiefling spöttisch an. "Dies ist nicht irgendeine Stockgosse, die vor dir kuscht, Halbblut... Ein Schritt in meine Richtung, und ich hetz dir ein paar Harmonium-Leute auf den Hals, die deinen wedelnden Schwanz aus dem Bezirk jagen!"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 286
END

IF ~~ THEN BEGIN 7 // from: 1.4 3.3 4.4
  SAY #61404 /* ~"Schade. Bitte kommt wieder, falls Eure Situation... sich ändern sollte, guter Herr. Ich erwarte Euch ungeduldig. Lebt wohl."~ */
  IF ~~ THEN REPLY #61463 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.1 3.0 4.1
  SAY #61405 /* ~"Nun gut... Ich hoffe aufrichtig, daß es Euch ein Vergnügen war, guter Herr."~ */
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #61464 /* ~"Keine Sorge, das war es wirklich. Lebt wohl."~ */ EXIT
  IF ~  NearbyDialog("Dmorte")
Global("Morte_UCHO","GLOBAL",0)
~ THEN REPLY #61465 /* ~"Keine Sorge, das war es wirklich. Lebt wohl."~ */ DO ~SetGlobal("Morte_UCHO","GLOBAL",1)
~ EXTERN ~DMORTE~ 600
  IF ~  NearbyDialog("Dmorte")
GlobalGT("Morte_UCHO","GLOBAL",0)
~ THEN REPLY #61466 /* ~"Keine Sorge, das war es wirklich. Lebt wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 0.2
  SAY #61406 /* ~Die junge Frau mustert Morte eine Weile kritisch, dann nickt sie. "Ja... Ja, ich glaube, ich könnte das tun. Nun, ich könnte mir sicherlich etwas... einfallen lassen. Natürlich alles für den gleichen Preis - nur fünfhundert Einfache."~ */
  IF ~  PartyGoldGT(499)
~ THEN REPLY #61467 /* ~"Natürlich. Hier hast du..."~ */ DO ~TakePartyGold(500)
IncrementGlobal("BD_MORTE_MORALE","GLOBAL",2)
~ EXTERN ~DMORTE~ 601
  IF ~  PartyGoldLT(500)
~ THEN REPLY #61468 /* ~"Tut mir leid, Morte. Nicht genug Klimper. Laß uns gehen."~ */ EXIT
  IF ~~ THEN REPLY #61469 /* ~"Also, Morte - wir müssen gehen. Lebt wohl, Madam."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY #61407 /* ~Die Kurtisane kehrt schließlich zurück, neben ihr wippt ein benommener Morte. Er ist von einem leichten Glanz überzogen - als sei er gewachst und poliert worden - und hat auf oben einen roten Fleck in Lippenform. "Eurem... Mimir? ...scheint es gefallen zu haben, guter Herr."~ */
  IF ~~ THEN REPLY #61470 /* ~"Morte?"~ */ EXTERN ~DMORTE~ 602
  IF ~~ THEN REPLY #61471 /* ~"Gut. Lebt wohl."~ */ EXIT
END
