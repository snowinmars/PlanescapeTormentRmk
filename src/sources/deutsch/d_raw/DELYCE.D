// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DELYCE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DELYCE~

IF ~  Global("Elyce","AR0400",0)
~ THEN BEGIN 0 // from:
  SAY #21865 /* ~Die von Panik erfaßte junge Frau rennt auf dich zu. Sie ist völlig außer Atem und Tränen strömen über ihr Gesicht. "Bitte! Du mußt mir helfen! Bring sie auseinander! Die *bringen sich noch um*!"~ */
  IF ~~ THEN REPLY #33509 /* ~"Was ist los?"~ */ GOTO 1
  IF ~~ THEN REPLY #33510 /* ~"Das ist dein Problem. Leb wohl."~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #33499 /* ~"Mein Bruder und mein Geliebter... sie streiten sich! Bis jetzt sind's nur Worte, aber gleich springen die sich an die Gurgel! Hilf mir! Bring sie auseinander! Biiiitte!"~ */
  IF ~~ THEN REPLY #33511 /* ~"Ich werde mal mit ihnen reden..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Elyce_1","GLOBALGood",1)
~ GOTO 2
  IF ~~ THEN REPLY #33512 /* ~"Klar kann ich sie auseinanderbringen. Das kostet dich aber was..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Elyce_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #33513 /* ~"Das ist dein Problem. Leb wohl."~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #33500 /* ~"Tausend Dank, Vollblut! Sie sind da drüben!"~ */
  IF ~~ THEN REPLY #33514 /* ~"Ich werde mit ihnen reden und komme dann hierher zurück."~ */ DO ~SetGlobal("Elyce","AR0400",3)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #33501 /* ~"Ich kann dir Klimper geben, Vollblut... hundert Kupfermünzen oder mehr... wenn du sie nur auseinanderbringst!"~ */
  IF ~~ THEN REPLY #33515 /* ~"Ich werde mit ihnen reden und komme dann hierher zurück."~ */ DO ~SetGlobal("Elyce","AR0400",3)
~ EXIT
  IF ~~ THEN REPLY #33516 /* ~"Wenn ich's mir recht überlege, geht mich das eigentlich überhaupt nichts an. Leb wohl."~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~  Global("Elyce","AR0400",1)
~ THEN BEGIN 4 // from:
  SAY #33502 /* ~"Vielen Dank, Schleifer, daß du sie auseinandergebracht hast. Ich hatte solche Angst, daß einer von ihnen sterben würde. Ich will keinen verlieren. Meinen Bruder nicht und auch nicht meinen liebsten Maeth."~ */
  IF ~~ THEN REPLY #33517 /* ~"Keine Ursache. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #33518 /* ~"Dann danke mir richtig..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Elyce_1","GLOBALGood",-1)
Enemy()
~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.1 7.1
  SAY #33503 /* ~Der Gesichtsausdruck der Frau verfinstert sich mit einem Schlag. "Was glaubst du, wo du bist, Schleifer, hä? Im Bezirk der Dame? Wenn ich Klimper hätte, würde ich damit was zu essen kaufen! Es tut mir ja soooo leid, daß ich dich nicht *belohnen* kann... du mußt dich wohl mit Worten begnügen." Die Frau wirft dir einen bösen Blick zu und wendet sich ab.~ */
  IF ~~ THEN REPLY #33519 /* ~Geh.~ */ EXIT
END

IF ~  Global("Elyce","AR0400",3)
~ THEN BEGIN 6 // from:
  SAY #33504 /* ~"Bitte, Schleifer! Bring sie auseinander!"~ */
  IF ~~ THEN REPLY #33520 /* ~"Ich werd's versuchen..."~ */ EXIT
  IF ~~ THEN REPLY #33521 /* ~"Weißt du, eigentlich geht mich die Sache doch nichts an. Leb wohl."~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~  Global("Elyce","AR0400",4)
~ THEN BEGIN 7 // from:
  SAY #33505 /* ~"Vielen Dank, Schleifer, daß du sie auseinandergebracht hast. Ich hatte solche Angst, daß einer von ihnen sterben würde. Ich will keinen verlieren. Meinen Bruder nicht und auch nicht meinen liebsten Maeth."~ */
  IF ~  Global("Good_Elyce_1","GLOBAL",1)
~ THEN REPLY #33522 /* ~"Gern geschehen. Leb wohl."~ */ EXIT
  IF ~  Global("Good_Elyce_1","GLOBAL",1)
~ THEN REPLY #33523 /* ~"Dann danke mir richtig..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Elyce_1","GLOBALGood",-1)
Enemy()
~ GOTO 5
  IF ~  Global("Evil_Elyce_1","GLOBAL",1)
~ THEN REPLY #33524 /* ~"Natürlich. Dann hätte ich jetzt gern meine Belohnung..."~ */ DO ~SetGlobal("Elyce","AR0400",5)
GiveItemCreate("TsilBra",Protagonist,1,0,0)
~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.2
  SAY #33506 /* ~Sie nickt und löst ein angelaufenes Silberarmband von den Falten ihres Gewands. "Hier, Schleifer... das ist alles, was ich habe. Aber das Leben der beiden ist's mir wert..." Die Frau seufzt traurig.~ */
  IF ~~ THEN REPLY #33525 /* ~"Warte... hier, nimm's zurück. Behalte dein Armband."~ */ DO ~TakePartyItemNum("TsilBra",1)
IncrementGlobalOnceEx("GLOBALGood_Elyce_1","GLOBALGood",1)
~ GOTO 9
  IF ~~ THEN REPLY #33526 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #33507 /* ~Die Augen der Frau leuchten auf. "Ich danke dir, Schleifer! Möge der Schatten der Dame an dir vorbeiziehen!"~ */
  IF ~~ THEN REPLY #33527 /* ~"Sicher... leb wohl."~ */ EXIT
END

IF ~  Global("Elyce","AR0400",5)
~ THEN BEGIN 10 // from:
  SAY #33508 /* ~"Nochmals vielen Dank, Schleifer, daß du die beiden auseinandergebracht hast."~ */
  IF ~~ THEN REPLY #33528 /* ~"Keine Ursache. Leb wohl."~ */ EXIT
END
