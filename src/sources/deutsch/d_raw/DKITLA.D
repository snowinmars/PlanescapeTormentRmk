// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKITLA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DKITLA~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  NumTimesTalkedTo(0)
GlobalLT("Curst_Key","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #49453 /* ~Du siehst eine große, auffallende Frau. Sie starrt die Wände der Taverne an, ohne sie wirklich zu sehen, und ihre Hände ballen sich langsam zu Fäusten und öffnen sich wieder. Als sie dich sieht, gleiten ihre Augen schnell über deine Kleidung und Ausrüstung und dann wieder zu deinen Augen. Ein süffisantes Lächeln zieht über ihr Gesicht, und sie schaut wieder weg.~ */
  IF ~~ THEN REPLY #49454 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #49455 /* ~Geh weiter.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49456 /* ~Ihr Blick trifft dich erneut, und sie sieht dich mürrisch an. "Du hast es dir wohl zur Gewohnheit gemacht, fremde Leute anzuquatschen, was?" ~ */
  IF ~~ THEN REPLY #49457 /* ~"Wenn ich ihnen Fragen stellen muß, dann schon."~ */ GOTO 2
  IF ~~ THEN REPLY #49458 /* ~"Eigentlich nicht, aber ich hab mir gedacht, daß ich mit dir ein bißchen plaudern könnte."~ */ GOTO 2
  IF ~~ THEN REPLY #49459 /* ~"Nein. Leb wohl."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #49460 /* ~"Du mußt ja ein faszinierendes Leben führen, wenn du so was tust. Pech für dich, daß ich gerade beschäftigt bin. Ich wär dir sehr verbunden, wenn du mich jetzt in Ruhe lassen würdest."~ */
  IF ~~ THEN REPLY #49461 /* ~"Ich hatte nur ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #49462 /* ~"Dann laß ich dich eben in Ruhe. Leb wohl."~ */ EXIT
END

IF WEIGHT #1 ~  NumTimesTalkedToGT(0)
GlobalLT("Curst_Key","GLOBAL",2)
~ THEN BEGIN 3 // from: 2.0
  SAY #49463 /* ~"Sprech ich ne Fremdsprache, oder was? Laß... mich... in Ruhe! Danke!" Sie widmet sich wieder sich selbst und versinkt in Gedanken. Sie fängt an, auf ihrer Unterlippe zu kauen, und kleine Blutströpfchen treten aus dieser hervor.~ */
  IF ~~ THEN REPLY #49464 /* ~"Dann leb wohl."~ */ EXIT
END

IF WEIGHT #2 ~  Global("Mediate","GLOBAL",0)
NumTimesTalkedTo(0)
Global("Curst_Key","GLOBAL",2)
~ THEN BEGIN 4 // from:
  SAY #49465 /* ~Du siehst eine große, auffallende Frau. Sie starrt die Wände der Taverne an, ohne sie wirklich zu sehen, und ihre Hände ballen sich langsam zu Fäusten und öffnen sich wieder. Als sie dich sieht, gleiten ihre Augen schnell über deine Kleidung und Ausrüstung und dann wieder zu deinen Augen. Ein süffisantes Lächeln zieht über ihr Gesicht, und sie schaut wieder weg. "Suchst du was, Schleifer?" fragt sie, immer noch ohne dich anzusehen.~ */
  IF ~~ THEN REPLY #49466 /* ~"Wenn ich das richtig sehe, bist du die nächste Person, mit der ich über diesen Schlüssel sprechen soll."~ */ GOTO 5
  IF ~~ THEN REPLY #49467 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #49468 /* ~"Nicht jetzt. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1
  SAY #49469 /* ~"Über den Schlüssel, hm?" Sie zieht eine Augenbraue hoch. "Du willst wissen, was du dafür tun mußt, nicht wahr? Ganz einfach, mein Freund. Bist du interessiert? Natürlich bist du das. Du bist extra gekommen, um mit mir darüber zu sprechen. Die eigentliche Frage ist, ob du bereit bist, zuzuhören."~ */
  IF ~~ THEN REPLY #49471 /* ~"Sag mir, was ich tun muß."~ */ JOURNAL #49473 /* ~Kitla hat mir die Aufgabe übertragen, die Testamentskopien zweier Männer, Dellenschlag und Kester, zu besorgen - oder ihre Zänkereien zu beenden. Zur Belohnung wird sie mir dann den zweiten Teil des Schlüssels zum Deva geben.~ */ GOTO 6
  IF ~~ THEN REPLY #49472 /* ~"Noch nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 9.0 10.7
  SAY #49474 /* ~"Hier sind zwei Männer mit Namen Dellenschlag und Kester. Dellenschlag ist der Schmied und Kester der Schnapsbrenner. Beide schulden mir eine *Menge* Geld. Allerdings schulden sie sich gegenseitig auch noch was, und deshalb zahlt mir keiner mein Geld zurück. Sie streiten sich über ein Erbe. Besorg mir die Testamente, auf die sie sich berufen. Dann kann ich *sehr* effektiv mit ihnen verhandeln. Wenn dir das nicht gelingt, bring sie dazu, die Probleme zu lösen, die sie miteinander haben - oder töte sie - und ich gebe dir den zweiten Teil des Schlüssels."~ */
  IF ~  PartyHasItem("CrumLeg")
PartyHasItem("KestLeg")
~ THEN REPLY #49487 /* ~"Ich hab die Testamente von beiden mitgebracht."~ */ GOTO 11
  IF ~  PartyHasItem("CrumLeg")
!PartyHasItem("KestLeg")
~ THEN REPLY #49488 /* ~"Ich hab Dellenschlags Testament dabei."~ */ GOTO 17
  IF ~  !PartyHasItem("CrumLeg")
PartyHasItem("KestLeg")
~ THEN REPLY #49489 /* ~"Ich hab Kesters Testament dabei."~ */ GOTO 18
  IF ~  Global("Crumple_Dead_KAPUTZ","GLOBAL",1)
!Global("Kester_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #49490 /* ~"Dellenschlag ist tot."~ */ GOTO 21
  IF ~  !Global("Crumple_Dead_KAPUTZ","GLOBAL",1)
Global("Kester_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #49491 /* ~"Kester ist tot."~ */ GOTO 22
  IF ~  Global("Crumple_Dead_KAPUTZ","GLOBAL",1)
Global("Kester_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #66358 /* ~"Sie sind beide tot."~ */ GOTO 23
  IF ~~ THEN REPLY #3787 /* ~"Ich werde es nicht tun."~ */ GOTO 8
  IF ~  Global("Mediate","GLOBAL",0)
~ THEN REPLY #6018 /* ~"Schon gut. Leb wohl."~ */ DO ~SetGlobal("Mediate","GLOBAL",1)
~ EXIT
  IF ~  GlobalGT("Mediate","GLOBAL",0)
~ THEN REPLY #6018 /* ~"Schon gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 10.6
  SAY #49478 /* ~Sie sieht dich kokett an. "Vielleicht plaudern wir ein bißchen, wenn du den kleinen Auftrag erledigt hast, hm? Und jetzt beeil dich!" Sie wendet sich wieder ihrem Glas zu.~ */
  IF ~~ THEN REPLY #49479 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.6
  SAY #49480 /* ~Sie lächelt süßlich. "Dann bekommst du den Schlüssel nicht. Mach's gut."~ */
  IF ~~ THEN REPLY #49481 /* ~"Leb wohl."~ */ EXIT
END

IF WEIGHT #3 ~  NumTimesTalkedToGT(0)
Global("Curst_Key","GLOBAL",2)
Global("Mediate","GLOBAL",0)
~ THEN BEGIN 9 // from:
  SAY #49482 /* ~"Du bist zurück, hm? So wie die Dinge liegen, hab ich doch noch eine Verwendung für dich. Du hilfst mir, ich helfe dir, und wir sind alle zufrieden."~ */
  IF ~~ THEN REPLY #49483 /* ~"Was muß ich tun?"~ */ JOURNAL #49485 /* ~Kitla hat mir die Aufgabe übertragen, die Testamentskopien zweier Männer, Dellenschlag und Kester, zu besorgen - oder ihre Zänkereien zu beenden. Zur Belohnung wird sie mir dann den zweiten Teil des Schlüssels zum Deva geben.~ */ GOTO 6
  IF ~~ THEN REPLY #49484 /* ~"Vielleicht später. Leb wohl."~ */ JOURNAL #49485 /* ~Kitla hat mir die Aufgabe übertragen, die Testamentskopien zweier Männer, Dellenschlag und Kester, zu besorgen - oder ihre Zänkereien zu beenden. Zur Belohnung wird sie mir dann den zweiten Teil des Schlüssels zum Deva geben.~ */ EXIT
END

IF WEIGHT #4 ~  GlobalGT("Mediate","GLOBAL",0)
!Global("Mediate","GLOBAL",6)
!Global("Mediate","GLOBAL",7)
!Global("Mediate","GLOBAL",8)
!Global("Mediate","GLOBAL",10)
~ THEN BEGIN 10 // from:
  SAY #49486 /* ~Ihre Augen leuchten im Halbdunkel der Taverne. "Bringst du mir was, Narbenmann?"~ */
  IF ~  PartyHasItem("CrumLeg")
PartyHasItem("KestLeg")
~ THEN REPLY #49487 /* ~"Ich hab die Testamente von beiden mitgebracht."~ */ GOTO 11
  IF ~  PartyHasItem("CrumLeg")
!PartyHasItem("KestLeg")
~ THEN REPLY #49488 /* ~"Ich hab Dellenschlags Testament dabei."~ */ GOTO 17
  IF ~  !PartyHasItem("CrumLeg")
PartyHasItem("KestLeg")
~ THEN REPLY #49489 /* ~"Ich hab Kesters Testament dabei."~ */ GOTO 18
  IF ~  Global("Crumple_Dead_KAPUTZ","GLOBAL",1)
!Global("Kester_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #49490 /* ~"Dellenschlag ist tot."~ */ GOTO 21
  IF ~  Global("Kester_Dead_KAPUTZ","GLOBAL",1)
!Global("Crumple_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #49491 /* ~"Kester ist tot."~ */ GOTO 22
  IF ~  Global("Crumple_Dead_KAPUTZ","GLOBAL",1)
Global("Kester_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #66358 /* ~"Sie sind beide tot."~ */ GOTO 23
  IF ~~ THEN REPLY #66359 /* ~"Bis jetzt noch nicht. Ich arbeite dran. Ich hätte da ein paar Fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #50063 /* ~"Was sollte ich doch gleich tun?"~ */ GOTO 6
  IF ~~ THEN REPLY #49499 /* ~"Noch nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.0 10.0
  SAY #49492 /* ~"Ehrlich? Gib sie mir, und du bekommst den zweiten Teil des Schlüssels."~ */
  IF ~~ THEN REPLY #49493 /* ~"Hier, bitte sehr."~ */ DO ~TakePartyItemNum("CrumLeg",1)
TakePartyItemNum("KestLeg",1)
SetGlobal("Mediate","GLOBAL",10)
AddexperienceParty(150000)
~ GOTO 12
  IF ~~ THEN REPLY #49494 /* ~"Ich muß da noch ein paar Dinge klären. Gib mir eine Chance."~ */ GOTO 13
  IF ~~ THEN REPLY #49495 /* ~"Noch nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #49496 /* ~Sie nimmt sie von dir entgegen und lacht böse. "JETZT sollen die noch mal sagen, daß sie zahlungsunfähig sind." Sie steckt die Testamente in ihre Gürteltasche. "Bist du bereit für den zweiten Teil des Schlüssels?"~ */
  IF ~~ THEN REPLY #49497 /* ~"Ja. Sag ihn mir."~ */ GOTO 14
  IF ~~ THEN REPLY #49498 /* ~"Noch nicht. Beantworte mir erst ein paar Fragen."~ */ GOTO 16
  IF ~~ THEN REPLY #49499 /* ~"Noch nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1 17.1 18.1
  SAY #49500 /* ~Sie seufzt. "Dein Gerede bringt mir das Geld, das sie mir schulden, auch nicht schneller zurück. Los... hol's mir!"~ */
  IF ~~ THEN REPLY #49501 /* ~"Okay. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0 16.0 19.0 20.0 21.0 22.0 23.0
  SAY #49502 /* ~Sie konzentriert sich kurz, und ihr Stimme nimmt einen anderen, tieferen Tonfall an, als sie diese Worte anstimmt: "Hier ihr Gefängnis befohlen in völlige Dunkelheit..." Sie macht eine Pause und spricht mit normaler Stimme weiter. "Wegen dem dritten Teil des Schlüssels mußt du mit Nabat da drüben reden." Sie gähnt wie ein Scheunentor. "Ich bin erschöpft. Nimm das und dann laß mich erstmal in Ruhe. Ich muß über meinen nächsten Schritt hier nachdenken. Leb wohl."~ */
  IF ~~ THEN REPLY #49503 /* ~"Ich wollte nur ein paar Fragen stellen..."~ */ DO ~GiveItem("SPWI912",Protagonist)
SetGlobal("Curst_Key","GLOBAL",3)
~ JOURNAL #49505 /* ~Ich hab den zweiten Teil des Schlüssels von Kitla bekommen. Er lautete: "Ihr Gefängnis, hier in tiefster Dunkelheit...."~ */ GOTO 15
  IF ~  !Class(Protagonist,MAGE)
~ THEN REPLY #49504 /* ~"Leb wohl."~ */ DO ~GiveItem("SPWI912",Protagonist)
SetGlobal("Curst_Key","GLOBAL",3)
~ JOURNAL #49505 /* ~Ich hab den zweiten Teil des Schlüssels von Kitla bekommen. Er lautete: "Ihr Gefängnis, hier in tiefster Dunkelheit...."~ */ GOTO 24
  IF ~~ THEN REPLY #67753 /* ~"Leb wohl."~ */ DO ~GiveItem("SPWI912",Protagonist)
SetGlobal("Curst_Key","GLOBAL",3)
~ JOURNAL #49505 /* ~Ich hab den zweiten Teil des Schlüssels von Kitla bekommen. Er lautete: "Ihr Gefängnis, hier in tiefster Dunkelheit...."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 20 even though they appear after this state */
~  GlobalGT("Mediate","GLOBAL",5)
GlobalGT("Curst_Key","GLOBAL",2)
~ THEN BEGIN 15 // from: 14.0 24.2 25.1
  SAY #49506 /* ~"Später vielleicht. Mir schwirrt gerade zu viel im Kopf herum..."~ */
  IF ~  !Class(Protagonist,MAGE)
~ THEN REPLY #49507 /* ~"Okay. Leb wohl."~ */ GOTO 24
  IF ~~ THEN REPLY #67754 /* ~"Also gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.1
  SAY #49508 /* ~Sie seufzt. "Hör zu, ich hab für meine Zukunft einiges zu planen... Laß mich dir also einfach den Schlüssel geben, und dann sind wir quitt, OK?"~ */
  IF ~~ THEN REPLY #49509 /* ~"In Ordnung. Gib ihn mir."~ */ GOTO 14
  IF ~  !Class(Protagonist,MAGE)
~ THEN REPLY #49510 /* ~"Vielleicht später. Leb wohl."~ */ GOTO 24
  IF ~~ THEN REPLY #67755 /* ~"Vielleicht später. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 6.1 10.1
  SAY #49511 /* ~"Gibst du es mir?" Sie streckt dir ihre Hand hin. "Dies wird klarstellen, daß Dellenschlag mir mein Geld zurückzahlen kann."~ */
  IF ~~ THEN REPLY #49512 /* ~"Ja. Hier, bitte sehr."~ */ DO ~TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",6)
AddexperienceParty(131250)
~ GOTO 19
  IF ~~ THEN REPLY #49513 /* ~"Ich muß da noch ein paar Dinge klären. Gib mir eine Chance."~ */ GOTO 13
  IF ~~ THEN REPLY #49514 /* ~"Noch nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 6.2 10.2
  SAY #49515 /* ~"Gibst du es mir?" Sie streckt dir ihre Hand hin. "Dies wird klarstellen, daß Kester mir mein Geld zurückzahlen kann."~ */
  IF ~~ THEN REPLY #49516 /* ~"Ja. Hier, bitte sehr."~ */ DO ~TakePartyItemNum("KestLeg",1)
SetGlobal("Mediate","GLOBAL",7)
AddexperienceParty(131250)
~ GOTO 19
  IF ~~ THEN REPLY #49517 /* ~"Ich muß da noch ein paar Dinge klären. Gib mir eine Chance."~ */ GOTO 13
  IF ~~ THEN REPLY #49518 /* ~"Noch nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.0 18.0
  SAY #49519 /* ~Sie steckt das Testament in ihre Gürteltasche und grinst böse. "Willst du jetzt den zweiten Teil des Schlüssels haben?"~ */
  IF ~~ THEN REPLY #49520 /* ~"Ja. Sag ihn mir."~ */ GOTO 14
  IF ~~ THEN REPLY #49521 /* ~"Noch nicht. Beantworte mir erst ein paar Fragen."~ */ GOTO 20
  IF ~~ THEN REPLY #49522 /* ~"Noch nicht. Leb wohl."~ */ EXIT
END

IF WEIGHT #5 ~  GlobalGT("Mediate","GLOBAL",5)
Global("Curst_Key","GLOBAL",2)
~ THEN BEGIN 20 // from: 19.1
  SAY #49523 /* ~Sie seufzt. "Danke, daß du diese Sache für mich erledigt hast, aber... Hör mal, ich hab da noch 'ne Menge Planungsarbeit vor mir. Ich geb dir noch schnell den Schlüssel, und dann sind wir quitt, in Ordnung?"~ */
  IF ~~ THEN REPLY #49524 /* ~"In Ordnung. Gib ihn mir."~ */ GOTO 14
  IF ~~ THEN REPLY #49525 /* ~"Vielleicht später. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 6.3 10.3
  SAY #66361 /* ~"Du hast ihn getötet? Auch gut... Der geile alte Bock hat mich immer betatscht. Bist du bereit für den zweiten Teil des Schlüssels?"~ */
  IF ~~ THEN REPLY #66362 /* ~"Gib ihn mir..."~ */ DO ~SetGlobal("Mediate","GLOBAL",6)
AddexperienceParty(131250)
~ GOTO 14
END

IF ~~ THEN BEGIN 22 // from: 6.4 10.4
  SAY #66363 /* ~"Gut. Ich hab ihn noch nie ausstehen können. Bist du bereit für den zweiten Teil des Schlüssels?"~ */
  IF ~~ THEN REPLY #66364 /* ~"Gib ihn mir..."~ */ DO ~SetGlobal("Mediate","GLOBAL",7)
AddexperienceParty(131250)
~ GOTO 14
END

IF ~~ THEN BEGIN 23 // from: 6.5 10.5
  SAY #66365 /* ~"Nun, sei gegrüßt, Killer! Damit hab ich nicht gerechnet, aber ich bin auch nicht gerade enttäuscht deswegen. Bist du bereit für den zweiten Teil des Schlüssels?"~ */
  IF ~~ THEN REPLY #66366 /* ~"Gib ihn mir..."~ */ DO ~SetGlobal("Mediate","GLOBAL",9)
AddexperienceParty(131250)
~ GOTO 14
END

IF ~~ THEN BEGIN 24 // from: 14.1 15.0 16.1
  SAY #67738 /* ~Ihr Blick hellt sich auf. "Oh? Hast du früher schon mal die Kunst studiert?"~ */
  IF ~  GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #67756 /* ~"Ja. Ich muß nur ein paar Fähigkeiten aufpolieren."~ */ GOTO 25
  IF ~  Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #67757 /* ~"Nein. Ich brauche Unterricht."~ */ GOTO 27
  IF ~~ THEN REPLY #67758 /* ~"Vergiß es. Beantworte mir nur ein paar Fragen."~ */ GOTO 15
  IF ~~ THEN REPLY #67759 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #67739 /* ~"Und jetzt willst du alles aufgeben, um deine Fähigkeiten aufzufrischen?"~ */
  IF ~~ THEN REPLY #67760 /* ~"Ja."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(MAGE)
~ GOTO 26
  IF ~~ THEN REPLY #67761 /* ~"Nein, eigentlich nicht. Beantworte mir lieber ein paar Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #67762 /* ~"Nein, eigentlich nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #67740 /* ~Nachdem sie eine Zeit über die Kunst gesprochen hat, nickt sie und lächelt. "Du bist wirklich begabt. Du hast alle Voraussetzungen, den mystischen Pfad noch einmal zu beschreiten."~ */
  IF ~~ THEN REPLY #67763 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 24.1
  SAY #67741 /* ~"Schaun wir erst mal, ob du überhaupt dafür geeignet bist." Sie testet deine Intelligenz und dein Urteilsvermögen mit einer langen Reihe von Denkaufgaben und Worträtseln...~ */
  IF ~  CheckStatGT(Protagonist,8,INT)
~ THEN REPLY #67764 /* ~Beantworte ihre Fragen so gut du kannst.~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
SetGlobal("Mage_Training","GLOBAL",4)
~ GOTO 28
  IF ~  CheckStatLT(Protagonist,9,INT)
~ THEN REPLY #67765 /* ~Beantworte ihre Fragen so gut du kannst.~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
~ GOTO 29
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #67742 /* ~"Es sieht aus, als hättest du zumindest einen funktionierenden Verstand." Sie mustert dich. "Und ein Buch hast du auch. Gut. Das brauchst du, um deine Zauber aufzuschreiben. Alle Zauber müssen irgendwo aufbewahrt werden. Zauber findet man in verschiedenen Formen und Größen, aber letztlich müssen sie alle aufgeschrieben werden, damit der Magier sie erlernen kann. Kannst du mir so weit folgen?"~ */
  IF ~~ THEN REPLY #67766 /* ~"Ja. Ich brauche ein Buch, in das ich meine Zauber eintragen kann, damit ich sie später studieren kann."~ */ GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 27.1
  SAY #67743 /* ~Sie kann sich ein lautes Lachen gerade so verkneifen, aber du bemerkst einen Anflug von Verachtung in ihren Augen. "Du hast nicht den nötigen Verstand für einen Magier. Alle Zauber wären in deinem Geist eine undefinierbare Masse, die dir aus den Ohren laufen würde, bevor du die Zauber auch nur ausgesprochen hast. Halt' dich besser ans Schwert, halt' dich ans Stehlen. Du wirst niemals gut mit Zaubern umgehen können."~ */
  IF ~~ THEN REPLY #67767 /* ~"Fein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 28.0
  SAY #67744 /* ~"Dann wollen wir dich mal auf die Probe stellen. Sieh dir das mal an." Sie zeigt dir eine Schriftrolle. "Lies das, und sag' mir, was da steht." Die Schriftzeichen auf der Rolle tanzen wie wild vor deinen Augen und verlieren ihre Bedeutung.~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #67768 /* ~Untersuche die Schriftrolle.~ */ GOTO 31
  IF ~  CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #67769 /* ~Untersuche die Schriftrolle.~ */ GOTO 32
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #67745 /* ~Instinktiv entspannst du deine Augen und nimmst die Bedeutung der Schriftrolle fast unterbewußt auf, als ob sich ein zweiter Gehirnteil eingeschaltet hätte. Die Schriftrolle besteht aus einer Liste obskurer Silben, Zauberspruch-Komponenten, Gesten und Ritualen, die zur Vollendung eines Zaubers benötigt werden.~ */
  IF ~~ THEN REPLY #67770 /* ~"Dies ist eine kleine Prophezeiung, oder? Etwas, womit du Gegenstände identifizieren kannst."~ */ GOTO 33
END

IF ~~ THEN BEGIN 32 // from: 30.1
  SAY #67746 /* ~So sehr du dich auch bemühst, die Buchstaben auf der Schriftrolle sagen dir überhaupt nichts. Jedesmal, wenn du glaubst, du hast die Symbole begriffen, verschwimmen sie wieder und bereiten dir hämmernde Kopfschmerzen. Schließlich, nach Minuten intensiven Lesens, läßt du mit glasigen Augen von dem Pergament ab... und plötzlich wird der Inhalt der Schriftrolle klar. Die Schriftrolle besteht aus einer Liste obskurer Silben, Zauberspruch-Komponenten, Gesten und Ritualen, die zur Vollendung eines Zaubers benötigt werden.~ */
  IF ~~ THEN REPLY #67771 /* ~"Dies ist eine kleine Prophezeiung, oder? Etwas, womit du Gegenstände identifizieren kannst."~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 31.0 32.0
  SAY #67747 /* ~Kitla grinst. "Also kennst du dich mit Zauber-Schriftrollen bereits aus, wie? Das bedeutet, daß du bereits irgendwann einmal ausgebildet wurdest, auch wenn du es vergessen hast, denn nur ein Magier könnte die Symbole auf dieser Schriftrolle entziffern. Du hast deinen Sinn dafür wieder geöffnet. Du hast dir gerade jahrelange Ausbildung erspart. Glückwunsch."~ */
  IF ~~ THEN REPLY #67772 /* ~"Danke. Was ist der nächste Schritt?"~ */ JOURNAL #67774 /* ~Kitla, die Magierin in der Taverne 'Zum Verrätertor', hat mir eine magische Schriftrolle gezeigt und gemeint, der Umstand, daß ich sie lesen könne, würde darauf hinweisen, daß ich irgendwann in meinem Leben mal ein Magier gewesen bin.~ */ GOTO 34
  IF ~~ THEN REPLY #67773 /* ~"Ich glaube, ich habe die Grundlagen verstanden. Fangen wir mit dem Training an."~ */ JOURNAL #67774 /* ~Kitla, die Magierin in der Taverne 'Zum Verrätertor', hat mir eine magische Schriftrolle gezeigt und gemeint, der Umstand, daß ich sie lesen könne, würde darauf hinweisen, daß ich irgendwann in meinem Leben mal ein Magier gewesen bin.~ */ GOTO 37
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #67748 /* ~"Du hast bereits das Buch, also mußt du nur noch lernen, wie du dir deine Zauber einprägst und sie anwendest. Zunächst brauchst du einen klaren Kopf und ausreichend Ruhe, bevor du dir Zauber einprägen kannst. Bevor du dich ausruhst, und das ist ganz wichtig, mußt du den Zauber auswählen, den du dir einprägen willst, und dann mußt du dich entspannen. Wenn du aufwachst, dann sieh dir die aufgeschriebenen Zauber eine Zeit lang an, und sie werden in deinem Geist verinnerlicht."~ */
  IF ~~ THEN REPLY #67775 /* ~"Wie viele Zauber kann ich wirken?"~ */ GOTO 35
  IF ~~ THEN REPLY #67776 /* ~"Ich glaube, ich habe die Grundlagen verstanden. Fangen wir mit dem Training an."~ */ GOTO 37
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #67749 /* ~"Am Anfang ist dein Vorrat an Zaubern begrenzt. Du kannst einen einzelnen Zauber wirken, bestenfalls aber drei. Setze sie mit Umsicht ein, denn wenn sie verbraucht sind, mußt du dich erst wieder ausruhen, bevor du dir neue Zauber einprägen kannst. Wenn du aber in der Kunst besser wirst, wird dein Gedächtnis immer aufnahmefähiger."~ */
  IF ~~ THEN REPLY #67777 /* ~"In Ordnung. Red weiter."~ */ GOTO 36
  IF ~~ THEN REPLY #67778 /* ~"Ich glaube, ich habe die Grundlagen verstanden. Fangen wir mit dem Training an."~ */ GOTO 37
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #67750 /* ~"Sobald du einen Zauber gewirkt hast, wird er aus deiner Erinnerung gelöscht. Wenn du denselben Zauber zweimal anwenden mußt, mußt du ihn dir auch zweimal einprägen." Sie legt eine kurze Pause ein und denkt nach. "Halt immer die Augen nach weiteren Zaubern offen. Du findest Zauber an vielen verschiedenen Orten, in vielen Formen und bei verschiedenen Leuten. Wenn du Zauber findest, dann sammle sie, und füge sie sobald es geht in dein Zauberbuch ein. Studiere sie sorgfältig, und schreibe sie auf."~ */
  IF ~~ THEN REPLY #67779 /* ~"Alles klar. Ist das alles?"~ */ JOURNAL #67781 /* ~Kitla hat mir die Grundlagen der Magie beigebracht. Bevor ich mich ausruhen kann, muß ich die Zaubersprüche bestimmen, die ich mir einprägen will, indem ich mein Zauberbuch aufschlage und sie dort auswähle. Wenn ich in der Lage sein will, einen Zauber öfter als einmal anzuwenden, muß ich mir den Zauber mehrere Male einprägen. Wenn ich mich dann ausruhe, wache ich am nächsten Morgen mit den Zaubern in meinem Gedächtnis auf und kann sie nun jederzeit anwenden. Ich kann nur eine geringe Anzahl von Zaubern pro Tag anwenden, bis ich mehr Erfahrung in ihrem Gebrauch habe.~ */ GOTO 37
  IF ~~ THEN REPLY #67780 /* ~"Ich glaube, ich habe die Grundlagen verstanden. Fangen wir mit dem Training an."~ */ JOURNAL #67781 /* ~Kitla hat mir die Grundlagen der Magie beigebracht. Bevor ich mich ausruhen kann, muß ich die Zaubersprüche bestimmen, die ich mir einprägen will, indem ich mein Zauberbuch aufschlage und sie dort auswähle. Wenn ich in der Lage sein will, einen Zauber öfter als einmal anzuwenden, muß ich mir den Zauber mehrere Male einprägen. Wenn ich mich dann ausruhe, wache ich am nächsten Morgen mit den Zaubern in meinem Gedächtnis auf und kann sie nun jederzeit anwenden. Ich kann nur eine geringe Anzahl von Zaubern pro Tag anwenden, bis ich mehr Erfahrung in ihrem Gebrauch habe.~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 33.1 34.1 35.1 36.0 36.1
  SAY #67751 /* ~"Du hast es verstanden. Sehr gut. Hier. Nimm diese Schriftrollen, und füge sie in dein Zauberbuch ein. Viel Glück."~ */
  IF ~~ THEN REPLY #67752 /* ~"Vielen Dank. Leb wohl."~ */ DO ~SetNamelessClass(MAGE)
GiveExperience(Protagonist,5000)
GiveItemCreate("SPWI105",Protagonist,0,0,0)
GiveItemCreate("SPWI502",Protagonist,0,0,0)
GiveItemCreate("SPWI207",Protagonist,0,0,0)
~ EXIT
END
