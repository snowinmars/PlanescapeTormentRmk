// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAMARYS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DAMARYS~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 9 13 11 even though they appear after this state */
~  GlobalLT("Nodd_Quest","GLOBAL",4)
~ THEN BEGIN 0 // from:
  SAY #20721 /* ~Du triffst auf eine junge Frau in einem engen Ledermieder und Strumpfhosen. Sie riecht schwach nach billigem Parfüm. Ihr Gesicht ist zwar hübsch, doch grell geschminkt. Als sie dich sieht, lächelt sie schüchtern. "Suchst du ein bißchen Gesellschaft, Süßer?"~ */
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22779 /* ~"Bist du zufällig Amarysse?"~ */ GOTO 2
  IF ~~ THEN REPLY #22780 /* ~"Nein, aber ich hätte da ein paar Fragen..."~ */ GOTO 1
  IF ~~ THEN REPLY #22781 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #20722 /* ~"Tut mir leid, Süßer, aber ich steh hier nicht rum, um die Fragen von Passanten zu beantworten. Bist du sicher, daß du nicht doch ein bißchen Gesellschaft brauchst, hmm?"~ */
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22782 /* ~"Nein, aber du bist Amarysse, nicht wahr?"~ */ GOTO 2
  IF ~~ THEN REPLY #22783 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #22784 /* ~Sie starrt dich einen Augenblick schweigend an, und sagt dann: "So hieß ich mal, aber das ist schon lange her. Wer bist du?"~ */
  IF ~~ THEN REPLY #22785 /* ~"Dein Bruder, Nodd, hat mich beauftragt, dich zu finden. Er sorgt sich um dich, und hat gehofft, ich könnte ihm sagen, wo du wärst."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #22786 /* ~"N... Nodd? Er lebt? Wo? Warum ist er nicht selbst gekommen, um mich zu suchen?"~ */
  IF ~~ THEN REPLY #22787 /* ~"Ich denke, er schämt sich. Er fristet sein Leben jetzt als Sammler auf dem Lumpensammler-Platz. Er scheint nicht ganz... richtig zu sein. Im Kopf, mein ich."~ */ JOURNAL #22632 /* ~Amarysse hat mir erzählt, daß Nodd als Kind "Thodus" hieß.~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #22788 /* ~"Tja, er war schon als Kind ein bißchen seltsam, als sein Name noch Thodus war. Oh, ich vermisse ihn so! So, er schämt sich also? Ha! Auf meine Arbeit kann ich auch nicht gerade stolz sein! Ah, nun, zumindest habe ich Erfolg - für jemanden aus dem Stock auf jeden Fall, oder? Ich muß ihn unbedingt bald sehen." Sie schaut dich zum ersten Mal richtig an. "Bist du ein Freund von Nodd, oder...?"~ */
  IF ~  Global("Nodd_Quest","GLOBAL",2)
~ THEN REPLY #22789 /* ~"Sozusagen. Warum?"~ */ GOTO 5
  IF ~  Global("Nodd_Quest","GLOBAL",2)
~ THEN REPLY #61490 /* ~"Eigentlich nicht, nein."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",4)
~ GOTO 8
  IF ~  Global("Nodd_Quest","GLOBAL",3)
~ THEN REPLY #22790 /* ~"Nicht wirklich. Ich werde bezahlt für meine Mühen."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",5)
~ GOTO 8
  IF ~  Global("Nodd_Quest","GLOBAL",3)
~ THEN REPLY #22791 /* ~Lüge: "Jaja, bin ich. Warum?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Amarysse_1","GLOBALLaw",-1)
~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.3
  SAY #22792 /* ~"Könntest du..." Sie runzelt die Stirn und beißt sich auf die Lippe, als ob sie etwas überlegt. "Könntest du ihm das hier geben?" Sie tritt an dich heran und gibt dir einen Beutel mit ungefähr hundert Kupfermünzen.~ */
  IF ~  Global("Nodd_Quest","GLOBAL",2)
~ THEN REPLY #22794 /* ~"Ja, ich schwöre, daß ich es zu ihm bringe."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",6)
GivePartyGold(100)
~ JOURNAL #22633 /* ~Ich habe Amarysse geschworen, daß ich das Kupfer ihrem Bruder Nodd auf dem Lumpensammler-Platz geben werde.~ */ GOTO 6
  IF ~  Global("Nodd_Quest","GLOBAL",3)
~ THEN REPLY #22793 /* ~"Ja, ich schwöre, daß ich es zu ihm bringe."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",7)
GivePartyGold(100)
~ JOURNAL #22633 /* ~Ich habe Amarysse geschworen, daß ich das Kupfer ihrem Bruder Nodd auf dem Lumpensammler-Platz geben werde.~ */ GOTO 6
  IF ~~ THEN REPLY #22795 /* ~"Ja, ich werd's ihm geben."~ */ GOTO 7
  IF ~  Global("Nodd_Quest","GLOBAL",2)
~ THEN REPLY #22796 /* ~"Nein, lieber nicht. Aber ich werd ihm sagen, daß du ihn bald besuchen kommst. Leb wohl."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",4)
~ EXIT
  IF ~  Global("Nodd_Quest","GLOBAL",3)
~ THEN REPLY #22797 /* ~"Nein, lieber nicht. Aber ich werd ihm sagen, daß du ihn bald besuchen kommst. Leb wohl."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",5)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1 7.0 7.1
  SAY #22798 /* ~Sie gibt dir den Beutel. "Ich danke dir. Sprich für mich mit Nodd, und sag ihm, wie sehr ich ihn vermisse!"~ */
  IF ~~ THEN REPLY #22799 /* ~"Mach ich. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.2
  SAY #22800 /* ~"Tut mir leid, Schleifer, aber würdest du mir das auch schwören? Das sind 'ne Menge Kupfermünzen... für mich zumindest."~ */
  IF ~  Global("Nodd_Quest","GLOBAL",2)
~ THEN REPLY #22801 /* ~"Ja, ich schwöre, daß ich es zu ihm bringe."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",6)
GivePartyGold(100)
~ JOURNAL #22633 /* ~Ich habe Amarysse geschworen, daß ich das Kupfer ihrem Bruder Nodd auf dem Lumpensammler-Platz geben werde.~ */ GOTO 6
  IF ~  Global("Nodd_Quest","GLOBAL",3)
~ THEN REPLY #22802 /* ~"Ja, ich schwöre, daß ich es zu ihm bringe."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",7)
GivePartyGold(100)
~ JOURNAL #22633 /* ~Ich habe Amarysse geschworen, daß ich das Kupfer ihrem Bruder Nodd auf dem Lumpensammler-Platz geben werde.~ */ GOTO 6
  IF ~  Global("Nodd_Quest","GLOBAL",2)
~ THEN REPLY #22803 /* ~"Nein, lieber nicht. Aber ich werd ihm sagen, daß du ihn bald besuchen kommst. Leb wohl."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",4)
~ EXIT
  IF ~  Global("Nodd_Quest","GLOBAL",3)
~ THEN REPLY #22804 /* ~"Nein, lieber nicht. Aber ich werd ihm sagen, daß du ihn bald besuchen kommst. Leb wohl."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",5)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1 4.2
  SAY #22805 /* ~"Hmm. Nun, trotzdem vielen Dank. Bitte sprich für mich mit Nodd, und sag ihm, wie sehr ich ihn vermisse!"~ */
  IF ~~ THEN REPLY #22806 /* ~"Mach ich. Leb wohl."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 13 11 even though they appear after this state */
~  GlobalGT("Nodd_Quest","GLOBAL",3)
!Global("Nodd_Quest","GLOBAL",8)
!Global("Nodd_Quest","GLOBAL",9)
~ THEN BEGIN 9 // from:
  SAY #22807 /* ~Amarysses Miene hellt sich auf. "Hast du schon mit Nodd gesprochen?"~ */
  IF ~~ THEN REPLY #22808 /* ~"Nein, noch nicht."~ */ GOTO 10
  IF ~~ THEN REPLY #22809 /* ~"Noch nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #22810 /* ~"Dann sprich bitte für mich mit Nodd, und sag ihm, wie sehr ich ihn vermisse!"~ */
  IF ~~ THEN REPLY #22811 /* ~"Okay. Leb wohl."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Nodd_Quest","GLOBAL",8)
!Global("Chaotic_Nodd_4","GLOBAL",1)
~ THEN BEGIN 11 // from:
  SAY #22812 /* ~"Du hast also für mich mit Nodd gesprochen... Ich dank dir, Schleifer."~ */
  IF ~~ THEN REPLY #22813 /* ~"Natürlich... aber woher hast du das gewußt?"~ */ GOTO 12
  IF ~~ THEN REPLY #22814 /* ~"Natürlich. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #22815 /* ~"Ich hab' 'ne Menge Freunde hier im Stock, ja." Sie zwinkert dir zu. "Nochmals vielen Dank."~ */
  IF ~~ THEN REPLY #22816 /* ~"Natürlich. Leb wohl."~ */ EXIT
END

IF WEIGHT #1 ~  GlobalGT("Nodd_Quest","GLOBAL",7)
~ THEN BEGIN 13 // from:
  SAY #22817 /* ~Du siehst Amarysse. Sie hat dich noch nicht bemerkt.~ */
  IF ~  Global("Nodd_Quest","GLOBAL",9)
~ THEN REPLY #22818 /* ~Sprich mit ihr.~ */ GOTO 14
  IF ~  Global("Nodd_Quest","GLOBAL",8)
~ THEN REPLY #22819 /* ~Sprich mit ihr.~ */ GOTO 15
  IF ~~ THEN REPLY #22820 /* ~Laß sie in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #22821 /* ~Ihre Augen flackern vor Wut, als sie dich erblickt. Mit der Klinge in der Hand stürzt sie sich schreiend auf dich und läßt dich gar nicht erst zu Wort kommen. "Du Mistkerl! Glaub ja nicht, ich hätte nichts von meinem armen Bruder gehört... Ich bring dich um!"~ */
  IF ~~ THEN REPLY #22822 /* ~Reagiere auf ihren Angriff.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #22823 /* ~Flüchte.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY #22824 /* ~Ihre Augen flackern vor Wut, als sie dich erblickt. Mit der Klinge in der Hand stürzt sie sich schreiend auf dich und läßt dich gar nicht erst zu Wort kommen. "Du mieser kleiner Dieb! Ich hab' gehört, was du getan hast! Einem armen, hart arbeitenden Mädchen die Klimper abzuluchsen und ihren Bruder zu bestehlen... Ich bring dich um!"~ */
  IF ~~ THEN REPLY #22825 /* ~Reagiere auf ihren Angriff.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #22826 /* ~Flüchte.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
