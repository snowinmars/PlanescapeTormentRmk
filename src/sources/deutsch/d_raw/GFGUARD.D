// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : GFGUARD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~GFGUARD~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #5826 /* ~"Du schon wieder? Wache! Wache!"~ */
  IF ~~ THEN REPLY #5827 /* ~Kämpfe.
~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #5828 /* ~Geh.~ */ EXIT
END

IF WEIGHT #1 ~  Allegiance(Myself,ENEMY)
~ THEN BEGIN 1 // from:
  SAY #5829 /* ~"Du schon wieder? Wache! Wache!"~ */
  IF ~~ THEN REPLY #5830 /* ~Kämpf.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #5831 /* ~Verschwinde.~ */ EXIT
END

IF WEIGHT #2 ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 2 // from:
  SAY #5832 /* ~"Na gut, Dussel... mach, daß du weiterkommst, und keinem passiert was."~ */
  IF ~~ THEN REPLY #5833 /* ~Verschwinde.~ */ EXIT
END

IF WEIGHT #3 ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN BEGIN 3 // from:
  SAY #5834 /* ~"Willkommen zurück in der Gießerei, mein Herr."~ */
  IF ~  Global("Receipt","GLOBAL",1)
~ THEN REPLY #5835 /* ~"Danke. Ich mußte einen Gegenstand abholen."~ */ GOTO 22
  IF ~~ THEN REPLY #5836 /* ~"Danke."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 25 even though they appear after this state */
~  False()
~ THEN BEGIN 4 // from:
  SAY #5837 /* ~"Willkommen zurück in der Gießerei, mein Herr."~ */
  IF ~  Global("Receipt","GLOBAL",1)
~ THEN REPLY #5838 /* ~"Danke. Ich mußte einen Gegenstand abholen."~ */ GOTO 22
  IF ~~ THEN REPLY #5839 /* ~"Danke."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 25 even though they appear after this state */
~  True()
~ THEN BEGIN 5 // from:
  SAY #5840 /* ~Du siehst einen strammen, gelangweilt dreinblickenden Wachsoldaten. "Was führt Euch hierher?"~ */
  IF ~~ THEN REPLY #5841 /* ~"Wollte mich nur mal umsehen."~ */ GOTO 6
  IF ~~ THEN REPLY #5842 /* ~"Ich soll eine Bestellung abholen."~ */ GOTO 7
  IF ~~ THEN REPLY #5843 /* ~"Ich wollte eine Bestellung aufgeben."~ */ GOTO 8
  IF ~~ THEN REPLY #5844 /* ~"Wer bist du?"~ */ GOTO 9
  IF ~~ THEN REPLY #5845 /* ~"Was machst du?"~ */ GOTO 10
  IF ~  GlobalGT("Dream","GLOBAL",0)
GlobalLT("Dream","GLOBAL",5)
~ THEN REPLY #5846 /* ~"Ich helfe Xander mit dem Traumerzeuger."~ */ GOTO 23
  IF ~  Global("Dream","GLOBAL",5)
PartyHasItem("DrmKey")
~ THEN REPLY #5847 /* ~"Ich bin gekommen, um den Traumerzeuger zu benutzen."~ */ GOTO 24
  IF ~~ THEN REPLY #6478 /* ~"Was ist das für ein Ort hier?"~ */ GOTO 11
  IF ~  Global("Gilt_Miss","GLOBAL",3)
PartyHasItem("GiltNote")
~ THEN REPLY #6479 /* ~"Nichts Besonderes. Tut mir leid."~ */ GOTO 26
  IF ~~ THEN REPLY #67933 /* ~"Wir kommen nicht ins Geschäft. Tut mir leid. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 12.0
  SAY #5848 /* ~"Dann möchte ich Euch bitten weiterzugehen."
~ */
  IF ~~ THEN REPLY #5849 /* ~"Darf ich reinkommen?"~ */ GOTO 13
  IF ~~ THEN REPLY #5850 /* ~"Ganz und gar nicht."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 12.1 19.1
  SAY #5851 /* ~"Ja, mein Herr. Habt Ihr einen Beleg?"~ */
  IF ~  PartyHasItem("Receipt")
~ THEN REPLY #5852 /* ~"Ja."~ */ GOTO 14
  IF ~~ THEN REPLY #5853 /* ~"Ja." (Lüge)~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Guards_1","GLOBALLaw",-1)
~ GOTO 15
  IF ~~ THEN REPLY #5854 /* ~"Nein."~ */ GOTO 16
  IF ~~ THEN REPLY #5855 /* ~"Ich weiß genau, daß ich's dabei hatte..."~ */ GOTO 17
END

IF ~~ THEN BEGIN 8 // from: 5.2 12.2
  SAY #5856 /* ~"Tut mir leid, mein Herr, aber im Moment nehmen wir aufgrund des großen Projektes, an dem wir arbeiten, keine neuen Aufträge an. Versucht es doch in einem Jahr oder so nochmal, mein Herr. Danke für Euer Interesse."~ */
  IF ~~ THEN REPLY #5857 /* ~"Okay. Ich hätte da noch ein paar Fragen."~ */ GOTO 12
  IF ~~ THEN REPLY #5858 /* ~"Danke."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.3 12.3
  SAY #5859 /* ~"Ich bin ein Wächter der Gläubigen der Quelle, mein Herr."~ */
  IF ~  GlobalLT("Join_Godsmen","GLOBAL",1)
~ THEN REPLY #5860 /* ~"Gläubige der Quelle?"~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #5861 /* ~"Oh. Ich verstehe. Ich hätte da noch ein paar Fragen."~ */ GOTO 12
  IF ~~ THEN REPLY #5862 /* ~"Danke."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.4 12.4
  SAY #5863 /* ~"Ich bewache das Tor."~ */
  IF ~~ THEN REPLY #5864 /* ~"Okay, okay. Ich hätte da noch ein paar Fragen."~ */ GOTO 12
  IF ~~ THEN REPLY #5865 /* ~"Danke, daß du mir ein wenig Zeit geopfert hast."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.7 12.5
  SAY #5866 /* ~"Sie stehen vor der Großen Gießerei, der Heimstatt der Gläubigen der Quelle."~ */
  IF ~  GlobalLT("Join_Godsmen","GLOBAL",1)
~ THEN REPLY #5867 /* ~"Wer?"~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #5868 /* ~"Was ist die Große Gießerei?"~ */ GOTO 19
  IF ~~ THEN REPLY #5869 /* ~"Oh. Danke. Ich hätte da noch ein paar Fragen."~ */ GOTO 12
  IF ~~ THEN REPLY #5870 /* ~"Oh." (Geh)~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.0 9.1 10.0 11.2 13.0 15.1 17.0 19.0 20.1 21.0
  SAY #5871 /* ~"Beschreibt die Art Eurer Forderung, mein Herr."~ */
  IF ~~ THEN REPLY #5872 /* ~"Wollte mich nur mal umsehen."~ */ GOTO 6
  IF ~~ THEN REPLY #5873 /* ~"Ich soll eine Bestellung abholen."~ */ GOTO 7
  IF ~~ THEN REPLY #5874 /* ~"Ich wollte eine Bestellung aufgeben."~ */ GOTO 8
  IF ~~ THEN REPLY #5875 /* ~"Wer bist du?"~ */ GOTO 9
  IF ~~ THEN REPLY #5876 /* ~"Was machst du?"~ */ GOTO 10
  IF ~~ THEN REPLY #5877 /* ~"Was ist dies für ein Ort?"~ */ GOTO 11
  IF ~~ THEN REPLY #5878 /* ~"Nichts Besonderes. Tut mir leid."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.0
  SAY #5879 /* ~"Erst wenn Ihr beweisen könnt, daß Ihr hier etwas zu erledigen habt, mein Herr."~ */
  IF ~~ THEN REPLY #5880 /* ~"Ich verstehe. Ich hätte da noch ein paar Fragen."~ */ GOTO 12
  IF ~~ THEN REPLY #5881 /* ~"Verstehe. Lebe wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 7.0
  SAY #5882 /* ~"Danke, mein Herr. Der Schreiber, den Ihr sucht, hat sein Büro an der südlichen Mauer der Gießerei. Danke für Euren Besuch." Er öffnet das Tor für dich.
~ */
  IF ~~ THEN REPLY #5883 /* ~Geh.~ */ DO ~SetDoorLocked("AR0500d1",FALSE)
OpenDoor("AR0500d1")
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 7.1
  SAY #5884 /* ~"Mein Herr, Ihr scheint keinen Beleg zu haben."
~ */
  IF ~~ THEN REPLY #5885 /* ~"Ich weiß genau, daß ich's dabei hatte..."~ */ GOTO 17
  IF ~~ THEN REPLY #5886 /* ~"Hmm. Nein. Ich hätte jedoch noch andere Fragen."~ */ GOTO 12
  IF ~~ THEN REPLY #5887 /* ~Verschwinde.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 7.2
  SAY #5888 /* ~"Dann fürchte ich, daß Ihr gehen müßt, mein Herr."~ */
  IF ~~ THEN REPLY #5889 /* ~Verschwinde.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 7.3 15.0
  SAY #5890 /* ~"Ja, mein Herr, ich bin sicher, daß es so ist. Trotzdem können wir Euch keinen Einlaß gewähren, solange Ihr nicht einen Beweis dafür liefern könnt, daß Ihr hier etwas zu erledigen habt."~ */
  IF ~~ THEN REPLY #5891 /* ~"Ich hätte da aber noch ein paar andere Fragen."~ */ GOTO 12
  IF ~~ THEN REPLY #5892 /* ~Verschwinde.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 9.0 11.0
  SAY #5893 /* ~"Ja, mein Herr. Wir werden Göttermenschen genannt."~ */
  IF ~~ THEN REPLY #5894 /* ~"Warum?"~ */ GOTO 20
  IF ~~ THEN REPLY #5895 /* ~"Gut für dich. Lebe wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 11.1
  SAY #5896 /* ~"Neben der Tatsache, daß es das Zuhause der Gläubigen der Quelle ist, handelt es sich außerdem um eine der größten Gießereien, die jemals gebaut wurden. Diese Tore werden täglich von Strömen von Menschen und Material passiert, wir erhalten Aufträge von überall auf den Ebenen. Im Moment nehmen wir keine weiteren Aufträge an, da die meisten unserer Handwerker entweder an einem neuen Projekt arbeiten oder für die nächsten Monate mit kleineren Aufträgen beschäftigt sind. In der Praxis heißt das, daß Ihr nicht hier reinkommt, solange Ihr nicht über einen Beleg für eine abzuholende Bestellung verfügt oder dringende Geschäfte abwickeln müßt."~ */
  IF ~~ THEN REPLY #5897 /* ~"Ich komme wegen einer dringenden Angelegenheit!"~ */ GOTO 12
  IF ~~ THEN REPLY #5898 /* ~"Natürlich habe ich einen Beleg!"~ */ GOTO 7
  IF ~~ THEN REPLY #5899 /* ~Verschwinde.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.0
  SAY #5900 /* ~"Wir sind einer der fünfzehn anerkannten Bünde von Sigil, mein Herr. Wir glauben, daß jedes Lebewesen in sich den Funken der Göttlichkeit trägt - nicht unbedingt gut oder böse, aber zur Göttlichkeit berufen. Jenseits der Göttlichkeit, so glauben wir, verbirgt sich Größeres. Wir sind überzeugt, daß jedes Leben einen Zweck und ein Ziel hat und wir beschäftigen uns mit der Frage, was diese Ziele sind. Mit allem, was wir in unserem Leben tun, streben wir nach Größe."~ */
  IF ~~ THEN REPLY #5901 /* ~"Klingt wichtig."~ */ GOTO 21
  IF ~~ THEN REPLY #5902 /* ~"Gut für dich. Läßt du mich nun hinein?"~ */ GOTO 12
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #5903 /* ~"Unserer Meinung nach ja, mein Herr. Kann ich Euch sonst noch irgendwie helfen?"~ */
  IF ~~ THEN REPLY #5904 /* ~"Ja. Ich hätte da noch ein paar Fragen."~ */ GOTO 12
  IF ~~ THEN REPLY #5905 /* ~"Nein."~ */ EXIT
  IF ~~ THEN REPLY #5906 /* ~"Danke nein."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 3.0 4.0
  SAY #5907 /* ~"Ja, mein Herr. Geht hinein."~ */
  IF ~~ THEN REPLY #5908 /* ~"Danke."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 5.5
  SAY #6480 /* ~"Ja, mein Herr. Man hat uns von Euch erzählt. Geht hinein."~ */
  IF ~~ THEN REPLY #6481 /* ~Danke.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 5.6
  SAY #6482 /* ~Der Wächter schaut dich kurz mit einem nicht definierbaren Gesichtsausdruck an. "Viel Glück. Geht hinein."~ */
  IF ~~ THEN REPLY #6483 /* ~Danke.~ */ EXIT
END

IF WEIGHT #4 ~  Global("Foundry_Open","AR0500",1)
~ THEN BEGIN 25 // from:
  SAY #66285 /* ~"Wieder da, mein Herr? Ihr habt noch mehr da drin zu erledigen, nehme ich an. Haltet den Hof sauber, und tretet ein."~ */
  IF ~~ THEN REPLY #66286 /* ~"Nun denn. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 5.8
  SAY #67931 /* ~"Danke, mein Herr. Ihr findet ihn in der großen Halle der Göttermenschen." Er öffnet dir das Tor.~ */
  IF ~~ THEN REPLY #67932 /* ~"Danke."~ */ DO ~SetGlobal("Foundry_Open","AR0500",1)
SetDoorLocked("AR0500d1",FALSE)
OpenDoor("AR0500d1")
~ EXIT
END
