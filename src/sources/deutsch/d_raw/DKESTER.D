// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKESTER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DKESTER~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  CreatureInArea("AR3016")
GlobalGT("Mob_Dead","AR3016",2)
~ THEN BEGIN 0 // from:
  SAY #58985 /* ~"Danke für deine Hilfe. Ich werde meine Freunde mobilisieren..." Er hält inne. "So unzulänglich sie auch sein mögen. Geh nun."~ */
  IF ~~ THEN REPLY #58986 /* ~"Viel Glück. Wiedersehen."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 20 even though they appear after this state */
~  GlobalLT("Mediate","GLOBAL",4)
NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #58987 /* ~Du siehst einen schlanken Mann mit tief gebräunter Haut und durchdringenden grünen Augen. "Willkommen in der Brennerei der Gebrüder Malako!", ruft er so freudestrahlend, als gäbe es niemanden, den er lieber sähe als dich. "Was kann ich heute für dich tun?"~ */
  IF ~~ THEN REPLY #58988 /* ~"Wer bist du?"~ */ GOTO 2
  IF ~~ THEN REPLY #58989 /* ~"Was ist das für ein Ort?"~ */ GOTO 3
  IF ~  Global("Mediate","GLOBAL",1)
~ THEN REPLY #58990 /* ~"Wie ich höre, hast du etwas Ärger mit deinem Bruder. Ich würde gern helfen."~ */ DO ~SetGlobal("Mediate","GLOBAL",2)
~ GOTO 7
  IF ~~ THEN REPLY #58991 /* ~"Ist dir irgend etwas über einen Deva in der Stadt zu Ohren gekommen?"~ */ GOTO 4
  IF ~~ THEN REPLY #58992 /* ~"Ich möchte etwas kaufen."~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~  Global("Mediate","GLOBAL",3)
~ THEN REPLY #58993 /* ~"Dein Bruder hat mich geschickt. Er sagt, er will eine Verhandlung über die Erbschaft zwischen euch und eurem Vater."~ */ DO ~SetGlobal("Mediate","GLOBAL",4)
SetGlobal("Negotiate_Kester","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #66569 /* ~"Nichts, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 9.0
  SAY #58994 /* ~"Ich bin Kester Malako, Inhaber und Halb-Besitzer der Brennerei der Gebrüder Malako. Möchtest du etwas kaufen?"~ */
  IF ~  !Global("Mediate","GLOBAL",3)
!Global("Mediate","GLOBAL",1)
~ THEN REPLY #58995 /* ~"Halb-Besitzer?"~ */ GOTO 5
  IF ~  !Global("Mediate","GLOBAL",3)
!Global("Mediate","GLOBAL",1)
~ THEN REPLY #58996 /* ~"Wer ist denn die andere Hälfte der Gebrüder?"~ */ GOTO 6
  IF ~  Global("Mediate","GLOBAL",1)
~ THEN REPLY #58997 /* ~"Im Augenblick nicht, danke. Wie ich höre, hast du Ärger mit deinem Bruder."~ */ DO ~SetGlobal("Mediate","GLOBAL",2)
~ GOTO 7
  IF ~~ THEN REPLY #58998 /* ~"Ist dir irgend etwas über einen Deva in der Stadt zu Ohren gekommen?"~ */ GOTO 4
  IF ~~ THEN REPLY #58999 /* ~"Laß mal sehen, was du hast."~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~  Global("Mediate","GLOBAL",3)
~ THEN REPLY #59000 /* ~"Nein danke. Leb wohl."~ */ DO ~SetGlobal("Mediate","GLOBAL",4)
SetGlobal("Negotiate_Kester","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #68289 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 9.1
  SAY #59001 /* ~Er sieht dich aufmerksam an. "Dies ist eine Brennerei. Wir verkaufen hier alles mögliche Gebräu, von Alkohol bis hin zu Mixturen wie Zaubertränken und so. Möchtest du etwas kaufen?"~ */
  IF ~~ THEN REPLY #59008 /* ~"Ja."~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #59009 /* ~"Nicht jetzt. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.3 2.3 9.3
  SAY #59010 /* ~"Was, in Verdammnis?" Er lacht gutmütig. "Lieber Freund, wenn Du schon eine Weile in Verdammnis bist, dann weißt du genau, daß es hier keinen Deva gibt. Versuch's doch mal in Sturmfeste oder einer der anderen Städte jenseits des Großen Ringes. Also, willst du nun etwas kaufen?"~ */
  IF ~~ THEN REPLY #59011 /* ~"Ja."~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #59012 /* ~"Nein, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0
  SAY #59013 /* ~"Ja, so ist es. Mein Bruder ist auch ein Teilhaber des Unternehmens, obwohl "Teilhaber" eigentlich nicht das richtige Wort ist, da er eigentlich nicht besonders viel Anteil daran nimmt... Was ist, willst du etwas kaufen?"~ */
  IF ~  !Global("Mediate","GLOBAL",3)
!Global("Mediate","GLOBAL",1)
~ THEN REPLY #59014 /* ~"Was kannst du mir über deinen Bruder erzählen?"~ */ GOTO 6
  IF ~~ THEN REPLY #59015 /* ~"Ja. Was hast du denn so?"~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~  Global("Mediate","GLOBAL",3)
~ THEN REPLY #59016 /* ~"Nein, danke. Leb wohl."~ */ DO ~SetGlobal("Mediate","GLOBAL",4)
SetGlobal("Negotiate_Kester","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #68290 /* ~"Nein danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1 5.0
  SAY #59017 /* ~Seine Miene verfinstert sich. "Sein Name ist Dellenschlag. Er ist der Schmied hier in der Stadt. Er tut, was er kann, um mein Geschäft zu ruinieren und... Wieso erzähl ich dir das eigentlich? Ich kenne dich doch überhaupt nicht."~ */
  IF ~  Global("Mediate","GLOBAL",1)
~ THEN REPLY #59018 /* ~"Ich würde gern helfen."~ */ DO ~SetGlobal("Mediate","GLOBAL",2)
~ GOTO 7
  IF ~~ THEN REPLY #59019 /* ~"Ich weiß nicht. Was verkaufst du denn so?"~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #59020 /* ~"Ich weiß nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.2 2.2 6.0 9.2
  SAY #59021 /* ~"So, würdest du das? Nun gut. Wirf mal einen Blick hierauf. Das ist meine Urkunde der Erbschaft, die uns mein Vater hinterlassen hat. Hier: Wie du deutlich lesen kannst, soll das Geld, das wir erben, in die Brennerei fließen, und nicht einfach zwischen uns aufgeteilt werden. Doch mein Bruder, der Narr, will unbedingt daß wir uns das Bargeld auszahlen lassen, statt auf die Zukunft zu bauen. Bring mir seine Erbschaftsurkunde oder ihn zur Vernunft, und ich werde dich reich belohnen."~ */
  IF ~~ THEN REPLY #59022 /* ~"Ich brauche deine Urkunde, damit ich sie prüfen kann."~ */ DO ~GiveItem("KestLeg",Protagonist)
~ JOURNAL #59024 /* ~Ich habe mich bereit erklärt, Kester, dem Schnapsbrenner, in der Erbschaftsstreitigkeit mit seinem Bruder Dellenschlag, dem Schmied, zu helfen.~ */ GOTO 8
  IF ~  False()
~ THEN REPLY #59023 /* ~"Ist gut. Ich komme wieder. Bis dann."~ */ JOURNAL #59024 /* ~Ich habe mich bereit erklärt, Kester, dem Schnapsbrenner, in der Erbschaftsstreitigkeit mit seinem Bruder Dellenschlag, dem Schmied, zu helfen.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 14.0
  SAY #59025 /* ~Er sieht dich mißtrauisch an und gibt dann nach. "Wenn es damit schneller und zu meinem Vorteil ausgeführt werden kann, dann gut. Hier." Er reicht sie dir.~ */
  IF ~~ THEN REPLY #59026 /* ~"Super. Leb wohl."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 20 even though they appear after this state */
~  GlobalLT("Mediate","GLOBAL",4)
NumTimesTalkedToGT(0)
~ THEN BEGIN 9 // from:
  SAY #59027 /* ~"Noch einmal Willkommen in der Brennerei der Gebrüder Malako! Womit kann ich dir heute dienen?"~ */
  IF ~~ THEN REPLY #59028 /* ~"Wer bist du?"~ */ GOTO 2
  IF ~~ THEN REPLY #59029 /* ~"Was ist das für ein Ort?"~ */ GOTO 3
  IF ~  Global("Mediate","GLOBAL",1)
~ THEN REPLY #59030 /* ~"Wie ich höre, hast du etwas Ärger mit deinem Bruder. Ich würde gern helfen."~ */ DO ~SetGlobal("Mediate","GLOBAL",2)
~ GOTO 7
  IF ~~ THEN REPLY #59031 /* ~"Ist dir irgend etwas über einen Deva in der Stadt zu Ohren gekommen?"~ */ GOTO 4
  IF ~~ THEN REPLY #59032 /* ~"Ich möchte etwas kaufen."~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~  Global("Mediate","GLOBAL",3)
~ THEN REPLY #59033 /* ~"Nichts, danke. Leb wohl."~ */ DO ~SetGlobal("Mediate","GLOBAL",4)
SetGlobal("Negotiate_Kester","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #68291 /* ~"Nichts, danke. Leb wohl."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 20 even though they appear after this state */
~  Global("Mediate","GLOBAL",4)
~ THEN BEGIN 10 // from:
  SAY #59034 /* ~"Was willst du?"~ */
  IF ~~ THEN REPLY #59035 /* ~"Ich möchte etwas kaufen."~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~  Global("Mediate","GLOBAL",4)
!PartyHasItem("KestLeg")
~ THEN REPLY #59036 /* ~"Ich habe deinen Bruder dazu gebracht, einem verbindlichen Schiedsspruch zuzustimmen. Bist du einverstanden?"~ */ DO ~SetGlobal("Mediate","GLOBAL",5)
GiveItem("KestLeg",Protagonist)
~ GOTO 11
  IF ~  Global("Mediate","GLOBAL",4)
PartyHasItem("KestLeg")
~ THEN REPLY #59037 /* ~"Ich habe deinen Bruder dazu gebracht, einem verbindlichen Schiedsspruch zuzustimmen. Bist du einverstanden?"~ */ DO ~SetGlobal("Mediate","GLOBAL",5)
~ GOTO 12
  IF ~  Global("Mediate","GLOBAL",3)
~ THEN REPLY #59038 /* ~"Dein Bruder hat mir Geld dafür geboten, daß ich den Streit, den du mit ihm hast, zu seinen Gunste beilege."~ */ DO ~SetGlobal("Negotiate_Kester","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #59032 /* ~"Ich möchte etwas kaufen."~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #68291 /* ~"Nichts, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #59041 /* ~"Also, ich... verdammt! Ja. Hier. Hier ist meine Erbschaftsurkunde. Prüfe sie, und laß einen von uns wissen, wie du entschieden hast."~ */
  IF ~~ THEN REPLY #59042 /* ~"Bin bald zurück. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.2
  SAY #59043 /* ~"Also, ich... verdammt! Also schön... Prüfe unsere Erbschaftsurkunden, und laß einen von uns wissen, wie du entschieden hast."~ */
  IF ~~ THEN REPLY #59044 /* ~"Bin bald zurück. Leb wohl."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 20 even though they appear after this state */
~  Global("Mediate","GLOBAL",5)
~ THEN BEGIN 13 // from:
  SAY #59045 /* ~"Bist du schon zu einem Urteil gekommen?"~ */
  IF ~  PartyHasItem("KestLeg")
PartyHasItem("CrumLeg")
~ THEN REPLY #59046 /* ~"Ich habe zu deinen Gunsten entschieden. Nachdem ich die Erbschaftsurkunde gelesen habe, ist für mich klar, daß du das gesamte Erbe bekommen solltest."~ */ DO ~TakePartyItemNum("KestLeg",1)
TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",6)
GivePartyGold(1000)
AddexperienceParty(131250)
~ GOTO 15
  IF ~  PartyHasItem("KestLeg")
PartyHasItem("CrumLeg")
~ THEN REPLY #59047 /* ~"Ich habe entschieden, daß dein Bruder das ganze Geld kriegen soll. Er ist eindeutig im Recht."~ */ DO ~TakePartyItemNum("KestLeg",1)
TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",7)
AddexperienceParty(131250)
~ JOURNAL #59006 /* ~Ich habe den Streit zwischen dem Schnapsbrenner und dem Schmied zugunsten des Schmieds geschlichtet. Dem Schnapsbrenner hat das gar nicht gefallen.~ */ GOTO 16
  IF ~  PartyHasItem("KestLeg")
PartyHasItem("CrumLeg")
~ THEN REPLY #59048 /* ~"Ihr beide solltet das Geld genau zwischen euch aufteilen. Euer Vater hat es ganz klar so gewollt."~ */ DO ~TakePartyItemNum("KestLeg",1)
TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",8)
AddexperienceParty(150000)
GivePartyGold(500)
~ GOTO 17
  IF ~~ THEN REPLY #59049 /* ~"Keiner von euch beiden verdient das Geld. Ich werde eure Erbschaftsurkunden jemandem geben, der das Geld einer nützlichen Verwendung zuführt. Leb wohl."~ */ DO ~SetGlobal("Mediate","GLOBAL",9)
IncrementGlobalOnceEx("GLOBALEvil_Mediate_1","GLOBALGood",-1)
~ JOURNAL #59005 /* ~Ich habe den Streit zwischen dem Schnapsbrenner und dem Schmied geschlichtet, indem ich beide übers Ohr gehauen habe. Das hat ihnen gar nicht gefallen.~ */ GOTO 16
  IF ~~ THEN REPLY #59050 /* ~"Noch nicht. Aber ich würde gern einen Blick auf deine Waren werfen."~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #59051 /* ~"Noch nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 1.5 2.5 5.2 9.5 10.3
  SAY #59052 /* ~"So, hat er das? Ich werde dafür sorgen, daß deine Belohnung ansehnlicher ausfällt, wenn du zu meinen Gunsten entscheidest... Ich mach dir einen Vorschlag: Besorg dir seine Urkunde, überprüfe sie, und überzeuge ihn davon, daß du in der Sache vermitteln wirst. Du sollst reich belohnt werden. Na, wie klingt das?"~ */
  IF ~~ THEN REPLY #59022 /* ~"Ich brauche deine Urkunde, damit ich sie prüfen kann."~ */ DO ~GiveItem("KestLeg",Protagonist)
~ GOTO 8
  IF ~  False()
~ THEN REPLY #59054 /* ~"Das klingt gut. Also abgemacht: Ich werde mit ihm reden. Wiedersehen."~ */ EXIT
  IF ~  PartyHasItem("KestLeg")
PartyHasItem("CrumLeg")
~ THEN REPLY #59055 /* ~"Ich glaube, ich schlage mich in dieser Sache auf seine Seite. Er sollte die Erbschaft bekommen."~ */ DO ~TakePartyItemNum("KestLeg",1)
TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",7)
AddexperienceParty(131250)
~ GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 13.0
  SAY #59056 /* ~"HA! Ha ha ha ha! Ich wußte es doch!" Er drückt dir einen Beutel mit Münzen in die Hand. "Ich danke dir, mein Freund, du bist hier jederzeit willkommen! Wenn du mich entschuldigen würdest. Ich glaube, darauf muß ich einen heben!"~ */
  IF ~~ THEN REPLY #59057 /* ~"Klar, Mann. Wiedersehen."~ */ JOURNAL #59004 /* ~Ich habe den Streit zwischen dem Schnapsbrenner und dem Schmied zugunsten des Schnapsbrenners geschlichtet. Als Bezahlung habe ich einen Beutel Münzen erhalten.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.1 13.3 14.2
  SAY #59058 /* ~Sein Gesicht wird knallrot, und er brüllt: "WAS? DU ELENDER, DOPPELZÜNGIGER DIEB! MACH, DASS DU RAUSKOMMST AUS MEINEM LADEN! RAUS!"~ */
  IF ~~ THEN REPLY #59059 /* ~"Okay, okay, ich geh ja schon."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 13.2
  SAY #59060 /* ~Er stottert: "Aber... aber... das ist doch... aber..." Er seufzt. "Nun gut. Ich habe mich auf dein Wort verlassen. Jetzt erwarte du nur keine Milde von mir. Mach, daß du aus meinem Laden kommst." Er wirft dir mit saurer Miene einen Beutel mit Münzen zu. "Ich hab dir das hier versprochen, dann sollst du es auch haben. Da, nimm es."~ */
  IF ~~ THEN REPLY #59061 /* ~"Danke. Leb wohl."~ */ JOURNAL #61386 /* ~Ich habe die Frage des Erbes so entschieden, daß die beiden den Nachlaß teilen sollen.~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 20 even though they appear after this state */
~  Global("Mediate","GLOBAL",6)
~ THEN BEGIN 18 // from:
  SAY #59062 /* ~"Schön, dich wieder hier zu sehen! Was kann ich für dich tun?" Er ist geradezu überschäumend guter Laune.~ */
  IF ~~ THEN REPLY #59063 /* ~"Ich möchte nur einen Blick auf deine Waren werfen."~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #59064 /* ~"Nichts, danke. Leb wohl."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 20 even though they appear after this state */
~  GlobalGT("Mediate","GLOBAL",6)
~ THEN BEGIN 19 // from:
  SAY #59066 /* ~"Mach, daß du aus meinem Laden kommst, oder ich rufe die Wache. Raus!"~ */
  IF ~~ THEN REPLY #59067 /* ~"OK. Ich gehe schon."~ */ EXIT
END

IF WEIGHT #1 ~  CreatureInArea("AR3016")
GlobalLT("Mob_Dead","AR3016",3)
~ THEN BEGIN 20 // from:
  SAY #67918 /* ~"Hilf mir! Halt sie auf!"~ */
  IF ~~ THEN REPLY #67919 /* ~"Ich werde sehen, was ich tun kann..."~ */ EXIT
END
