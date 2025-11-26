// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFORGE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DFORGE~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 46 even though they appear after this state */
~  GlobalGT("Forge","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #5086 /* ~Du willst den Hammer erneut hochheben...~ */
  IF ~~ THEN REPLY #5087 /* ~"...Was nun?"~ */ EXTERN ~FSMITH~ 17
END

IF WEIGHT #2 /* Triggers after states #: 46 even though they appear after this state */
~  True()
~ THEN BEGIN 1 // from:
  SAY #5088 /* ~Du gehst zur Schmiede hinauf. Die Hitze ist unglaublich. Was tust du?~ */
  IF ~  !PartyHasItem("LApron")
CheckStatLT(Protagonist,20,RESISTFIRE)
~ THEN REPLY #5089 /* ~Arbeite in der Schmiede.~ */ GOTO 2
  IF ~  PartyHasItem("LApron")
~ THEN REPLY #5090 /* ~Arbeite in der Schmiede.~ */ GOTO 3
  IF ~  !PartyHasItem("LApron")
CheckStatGT(Protagonist,19,RESISTFIRE)
~ THEN REPLY #5091 /* ~Arbeite in der Schmiede.~ */ GOTO 3
  IF ~~ THEN REPLY #5092 /* ~Tritt zurück.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 46.0
  SAY #5093 /* ~Die Flamme ist zu heiß, selbst für deine hitzegewohnte Haut. Das Feuer beginnt, dich zu verbrennen.~ */
  IF ~~ THEN REPLY #5094 /* ~Arbeite in der Schmiede.~ */ GOTO 4
  IF ~~ THEN REPLY #5095 /* ~Tritt zurück.~ */ DO ~Damage(Protagonist,LOWER,5)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 1.2 46.1 46.2
  SAY #5096 /* ~Das Feuer gibt eine unglaubliche Hitze ab, doch du bist gut geschützt und kommst mit heiler Haut davon. Möchtest du den Schmiedehammer schwingen?
~ */
  IF ~~ THEN REPLY #5097 /* ~Ja.~ */ GOTO 25
  IF ~~ THEN REPLY #5098 /* ~Nein.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #5099 /* ~Wieder versengen die Flammen deine Haut. Was hast du als erstes vor?~ */
  IF ~  PartyHasItem("Tongs")
~ THEN REPLY #5100 /* ~Leg die Zange bereit.~ */ DO ~Damage(Protagonist,LOWER,10)
~ GOTO 5
  IF ~  PartyHasItem("FHammer")
~ THEN REPLY #5101 /* ~Schlag auf den Amboß.~ */ DO ~Damage(Protagonist,LOWER,10)
~ GOTO 6
  IF ~  PartyHasItem("IOre")
~ THEN REPLY #5102 /* ~Nimm das Erz auf.~ */ DO ~Damage(Protagonist,LOWER,10)
~ GOTO 7
  IF ~  PartyHasItem("Tongs")
PartyHasItem("IOre")
!HPLT(Protagonist,1)
~ THEN REPLY #5103 /* ~Greif das Erz mit der Zange, und halte es ins Schmiedefeuer.~ */ DO ~Damage(Protagonist,LOWER,10)
~ GOTO 8
  IF ~  PartyHasItem("Fhammer")
PartyHasItem("IOre")
!HPLT(Protagonist,1)
~ THEN REPLY #5104 /* ~Leg das Erz auf den Amboß und hämmer drauflos.~ */ DO ~Damage(Protagonist,LOWER,10)
~ GOTO 9
  IF ~  !HPLT(Protagonist,1)
~ THEN REPLY #5105 /* ~Tritt von der Schmiede zurück.~ */ DO ~Damage(Protagonist,LOWER,10)
~ EXIT
  IF ~  HPLT(Protagonist,1)
~ THEN REPLY #5106 /* ~Stirb. Die Hitze ist zu stark.~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.0
  SAY #5107 /* ~Du hältst die Schmiedezange gut fest, während die Hitze des Ofens Blasen auf deiner Haut bildet. Was hast du jetzt vor?~ */
  IF ~  PartyHasItem("FHammer")
!HPLT(Protagonist,1)
~ THEN REPLY #5108 /* ~Schlag auf den Amboß.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 6
  IF ~  PartyHasItem("IOre")
!HPLT(Protagonist,1)
~ THEN REPLY #5109 /* ~Greif das Erz mit der Zange, und halte es in die Flammen.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 8
  IF ~  PartyHasItem("FHammer")
PartyHasItem("IOre")
!HPLT(Protagonist,1)
~ THEN REPLY #5110 /* ~Leg das Erz auf den Amboß und hämmer drauflos.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 9
  IF ~  !HPLT(Protagonist,1)
~ THEN REPLY #5111 /* ~Tritt von der Schmiede zurück.~ */ EXIT
  IF ~  HPLT(Protagonist,1)
~ THEN REPLY #5112 /* ~Stirb. Die Hitze ist zu stark.~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.0 6.1 7.0
  SAY #5113 /* ~Du schlägst eine Weile auf den leeren Amboß und schickst das Klirren von Metall auf Metall gen Himmel. Die Hitze der Schmiede versengt weiter deine Haut. Was jetzt?~ */
  IF ~  PartyHasItem("Tongs")
!HPLT(Protagonist,1)
~ THEN REPLY #5114 /* ~Leg die Zange bereit.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 5
  IF ~  PartyHasItem("FHammer")
!HPLT(Protagonist,1)
~ THEN REPLY #5115 /* ~Schlag auf den Amboß.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 6
  IF ~  PartyHasItem("IOre")
!HPLT(Protagonist,1)
~ THEN REPLY #5116 /* ~Nimm das Erz auf.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 7
  IF ~  PartyHasItem("Tongs")
PartyHasItem("IOre")
!HPLT(Protagonist,1)
~ THEN REPLY #5117 /* ~Greif das Erz mit der Zange, und halte es ins Schmiedefeuer.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 8
  IF ~  PartyHasItem("FHammer")
PartyHasItem("IOre")
!HPLT(Protagonist,1)
~ THEN REPLY #5118 /* ~Leg das Erz auf den Amboß und hämmer drauflos.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 9
  IF ~  !HPLT(Protagonist,1)
~ THEN REPLY #5119 /* ~Tritt von der Schmiede zurück.~ */ EXIT
  IF ~  HPLT(Protagonist,1)
~ THEN REPLY #5120 /* ~Stirb. Die Hitze ist zu stark.~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 6.2
  SAY #5121 /* ~Du hältst einen Klumpen Erz in den Händen. Dort, wo du stehst, ist die Hitze der Schmiede fast stark genug, um das Eisen zu schmelzen - und um dir ordentlich den Pelz zu verbrennen. Was jetzt?~ */
  IF ~  PartyHasItem("FHammer")
!HPLT(Protagonist,1)
~ THEN REPLY #5122 /* ~Schlag auf den Amboß.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 6
  IF ~  PartyHasItem("Tongs")
PartyHasItem("IOre")
!HPLT(Protagonist,1)
~ THEN REPLY #5123 /* ~Halte das Erz mit der Zange ins Schmiedefeuer.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 8
  IF ~  PartyHasItem("FHammer")
PartyHasItem("IOre")
!HPLT(Protagonist,1)
~ THEN REPLY #5124 /* ~Leg das Erz auf den Amboß und hämmer drauflos.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 9
  IF ~  !HPLT(Protagonist,1)
~ THEN REPLY #5125 /* ~Halte das Erz mit bloßen Händen ins Feuer.~ */ GOTO 10
  IF ~  !HPLT(Protagonist,1)
~ THEN REPLY #5126 /* ~Tritt von der Schmiede zurück.~ */ EXIT
  IF ~  HPLT(Protagonist,1)
~ THEN REPLY #5146 /* ~Stirb. Die Hitze ist zu stark.~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.3 5.1 6.3 7.1
  SAY #5147 /* ~Das Erz wird schnell weich und ist bald weich genug, um es zu bearbeiten. Auf deiner Haut wimmelt es nur so von Brandblasen.~ */
  IF ~  PartyHasItem("FHammer")
!HPLT(Protagonist,1)
~ THEN REPLY #5148 /* ~Leg das glühende Erz auf den Schmiedeamboß und bring es in Form.~ */ DO ~DestroyPartyItem("IOre",FALSE)
Damage(Protagonist,LOWER,5)
~ GOTO 11
  IF ~  !PartyHasItem("FHammer")
!HPLT(Protagonist,1)
~ THEN REPLY #5149 /* ~Mein Hammer! Ich hab' den Hammer vergessen, um dieses Zeug zu bearbeiten! Bin gleich zurück!~ */ DO ~DestroyPartyItem("IOre",FALSE)
Damage(Protagonist,LOWER,5)
~ EXIT
  IF ~  !HPLT(Protagonist,1)
~ THEN REPLY #5150 /* ~Tritt von der Schmiede zurück.~ */ DO ~DestroyPartyItem("IOre",FALSE)
~ EXIT
  IF ~  HPLT(Protagonist,1)
~ THEN REPLY #5151 /* ~Stirb. Die Hitze ist zu stark.~ */ DO ~DestroyPartyItem("IOre",FALSE)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.4 5.2 6.4 7.2
  SAY #5152 /* ~Du legst das kalte Erz auf den Amboß und schlägst wild mit dem Hammer darauf ein. Du schlägst es in kleine, unbrauchbare Stücke. Die Flammen aus dem Schmiedeofen, der neben dir steht, tanzen derweil auf deiner Haut und fügen dir ein Meer von Schmerzen zu.~ */
  IF ~  !HPLT(Protagonist,1)
~ THEN REPLY #5153 /* ~Tritt von der Schmiede zurück.~ */ DO ~DestroyPartyItem("IOre",FALSE)
~ EXIT
  IF ~  HPLT(Protagonist,1)
~ THEN REPLY #5154 /* ~Stirb. Die Hitze ist einfach zuviel für dich.~ */ DO ~DestroyPartyItem("IOre",FALSE)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.3
  SAY #5155 /* ~Der durch die Flammen verursachte Schmerz ist unglaublich. Das Erz wird in deiner Faust weich wie Lehm, und der Geruch verbrannten Fleisches erfüllt die Luft. Das Eisen verschmilzt mit deiner Hand, und du fällst vor Schmerz in Ohnmacht.~ */
  IF ~~ THEN REPLY #5156 /* ~Fertig.~ */ DO ~DestroyPartyItem("IOre",FALSE)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.0 12.3 13.3 14.3
  SAY #5157 /* ~Was möchtest du schmieden?~ */
  IF ~  !HPLT(Protagonist,1)
~ THEN REPLY #5158 /* ~Etwas Kleines, Gefährliches: Ein Stilett!~ */ GOTO 12
  IF ~  !HPLT(Protagonist,1)
~ THEN REPLY #5159 /* ~Einen Hammer, der mit beiden Händen geschwungen wird.~ */ GOTO 13
  IF ~  !HPLT(Protagonist,1)
~ THEN REPLY #5160 /* ~Eine Streitaxt.~ */ GOTO 14
  IF ~  HPLT(Protagonist,1)
~ THEN REPLY #5162 /* ~Nichts. Die Hitze ist einfach zuviel für dich.~ */ DO ~DestroyPartyItem("IOre",FALSE)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #5163 /* ~Ein Stilett... einen kleinen Dolch mir dreikantiger Klinge, den man schnell und einfach schmieden kann. Das bedeutet, daß du dieses schmerzerfüllte Inferno sehr bald verlassen kannst. Willst du wirklich ein Stilett schmieden?~ */
  IF ~  CheckStatLT(Protagonist,10,INT)
~ THEN REPLY #5164 /* ~Ja.~ */ DO ~Damage(Protagonist,LOWER,15)
~ GOTO 16
  IF ~  CheckStatGT(Protagonist,9,INT)
CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #5165 /* ~Ja.~ */ DO ~Damage(Protagonist,LOWER,15)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #5166 /* ~Ja.~ */ DO ~Damage(Protagonist,LOWER,15)
~ GOTO 18
  IF ~~ THEN REPLY #5167 /* ~Nein. Ich würde lieber etwas anderes herstellen.~ */ GOTO 11
  IF ~~ THEN REPLY #5168 /* ~Nein. Ich habe erstmal genug von der Schmiede.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY #5169 /* ~Einen Hammer... der ist nämlich im Nu fertig und du kannst dann diese Schmiede ruckzuck wieder verlassen. Willst du wirklich einen Hammer schmieden?~ */
  IF ~  CheckStatLT(Protagonist,10,INT)
~ THEN REPLY #5170 /* ~Ja.~ */ DO ~Damage(Protagonist,LOWER,10)
~ GOTO 19
  IF ~  CheckStatGT(Protagonist,9,INT)
CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #5171 /* ~Ja.~ */ DO ~Damage(Protagonist,LOWER,10)
~ GOTO 20
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #5172 /* ~Ja.~ */ DO ~Damage(Protagonist,LOWER,10)
~ GOTO 21
  IF ~~ THEN REPLY #5173 /* ~Nein. Ich würde lieber etwas anderes herstellen.~ */ GOTO 11
  IF ~~ THEN REPLY #5174 /* ~Nein. Ich habe erstmal genug von der Schmiede.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.2
  SAY #5175 /* ~Eine Axt... das dauert allerdings eine Weile. Bis du damit fertig bist, haben die Flammen dein Fleisch verzehrt. Willst du wirklich eine Axt schmieden?~ */
  IF ~  CheckStatLT(Protagonist,10,INT)
~ THEN REPLY #5176 /* ~Ja.~ */ DO ~Damage(Protagonist,LOWER,20)
DestroyPartyItem("IOre",FALSE)
~ GOTO 22
  IF ~  CheckStatGT(Protagonist,9,INT)
CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #5177 /* ~Ja.
~ */ DO ~Damage(Protagonist,LOWER,20)
DestroyPartyItem("IOre",FALSE)
~ GOTO 23
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #5178 /* ~Ja.~ */ DO ~Damage(Protagonist,LOWER,20)
DestroyPartyItem("IOre",FALSE)
~ GOTO 24
  IF ~~ THEN REPLY #5179 /* ~Nein. Ich würde lieber etwas anderes herstellen.~ */ GOTO 11
  IF ~~ THEN REPLY #5180 /* ~Nein. Ich habe erstmal genug von der Schmiede.~ */ DO ~DestroyPartyItem("IOre",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #5188 /* ~Ungeachtet der Flammen bearbeitest du das Erz in Windeseile, wirfst überschüssiges Material weg und bereitest dich darauf vor, die Teile im danebenstehenden Wassereimer zu kühlen.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.0
  SAY #5189 /* ~Kritisch betrachtest du deine Arbeit. Es ist zwar kein Meisterwerk, aber zumindest hast du eine Waffe hergestellt.~ */
  IF ~  !HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5194 /* ~Das muß für die Prüfung ausreichen.~ */ DO ~SetGlobal("G_Test1","GLOBAL",3)
GiveItemCreate("PStlo",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5195 /* ~Ich schätze, es läßt sich verwenden...~ */ DO ~GiveItemCreate("PStlo",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5196 /* ~Schwacher Trost. Die Hitze ist einfach zuviel. Na, zumindest ist damit die Prüfung der Göttermenschen bestanden.~ */ DO ~SetGlobal("G_Test1","GLOBAL",3)
GiveItemCreate("PStlo",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
  IF ~  HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5197 /* ~Schwacher Trost. Die Hitze ist einfach zuviel.~ */ DO ~GiveItemCreate("PStlo",Protagonist,1,0,0)
Kill(Protagonist)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.1
  SAY #5198 /* ~Du hast ein Stilett geschmiedet. Du gehst einen Schritt zurück und bewunderst deine Arbeit.
~ */
  IF ~  !HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5199 /* ~Es ist ein Stilett. Gut genug für die Prüfung.~ */ DO ~SetGlobal("G_Test1","GLOBAL",4)
GiveItemCreate("Stiletto",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5200 /* ~Es ist ein Stilett. Richtig gut... und wirkt noch dazu verwendbar.~ */ DO ~GiveItemCreate("Stiletto",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5201 /* ~Die Hitze ist einfach zuviel. Die Prüfung ist bestanden, aber dafür muß auch ein Preis gezahlt werden.~ */ DO ~SetGlobal("G_Test1","GLOBAL",4)
GiveItemCreate("Stiletto",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
  IF ~  HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5202 /* ~Die Hitze ist einfach zuviel. Es muß ein Preis gezahlt werden.~ */ DO ~GiveItemCreate("Stiletto",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 12.2
  SAY #5203 /* ~Das ist ja fast schon ein Meisterwerk! Dein Stilett ist nicht nur voll funktionstüchtig, sondern liegt auch ausgezeichnet in der Hand und sieht überaus furchterregend aus. Gute Arbeit!~ */
  IF ~  !HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5204 /* ~Dieses Ding wird mir gute Dienste leisten. Keldor wird bestimmt beeindruckt sein! Zeit, von diesen Flammen wegzukommen.~ */ DO ~SetGlobal("G_Test1","GLOBAL",5)
GiveItemCreate("QStlo",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5205 /* ~Dies wird mir für die nächsten Aufgaben gute Dienste leisten. Und nun raus aus diesen Flammen.~ */ DO ~GiveItemCreate("QStlo",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5206 /* ~Die Hitze ist einfach zuviel.~ */ DO ~SetGlobal("G_Test1","GLOBAL",5)
GiveItemCreate("QStlo",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5207 /* ~Die Hitze ist einfach übermächtig. Kann mich nicht bewegen... nicht atmen...~ */ DO ~GiveItemCreate("QStlo",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 13.0
  SAY #5208 /* ~Der Hammer, den du geschmiedet hast, sieht ungefähr so aus wie ein Klumpen Roheisen. Du wirst ihn aber trotzdem benutzen können.~ */
  IF ~  !HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5209 /* ~Gut genug für meine Zwecke. Und nun zurück, um es Keldor zu zeigen.~ */ DO ~SetGlobal("G_Test1","GLOBAL",3)
GiveItemCreate("PSledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5210 /* ~All die Mühe für ein Stück Metall? Bei den Mächten! Nichts wie raus hier.~ */ DO ~GiveItemCreate("Psledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5211 /* ~Die Hitze erweist sich als überwältigend. Aber zumindest ist die Prüfung bestanden.~ */ DO ~SetGlobal("G_Test1","GLOBAL",3)
GiveItemCreate("Psledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
  IF ~  HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5212 /* ~Die Hitze erweist sich als überwältigend.~ */ DO ~GiveItemCreate("Psledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 13.1
  SAY #5213 /* ~Guck an! Es ist ein Vorschlaghammer... und er sieht genauso aus wie jeder andere Vorschlaghammer, den du in deinem Leben gesehen hast.~ */
  IF ~  !HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5214 /* ~Großartig. Das ist gut genug für Keldor. Ich habe erstmal genug von der Schmiede.~ */ DO ~SetGlobal("G_Test1","GLOBAL",4)
GiveItemCreate("Sledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5215 /* ~Das ist gut genug für meine Zwecke. Wird Zeit, ein paar Köpfe einzuschlagen. Ich habe erstmal genug von der Schmiede.~ */ DO ~GiveItemCreate("Sledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5216 /* ~Die Hitze und Kraft der Gießerei ist überwältigend. Mit der Herstellung des Hammers ist jedoch zumindest die Prüfung bestanden.~ */ DO ~SetGlobal("G_Test1","GLOBAL",4)
GiveItemCreate("Sledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
  IF ~  HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5217 /* ~Die Hitze und Kraft der Gießerei ist überwältigend.~ */ DO ~GiveItemCreate("Sledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 13.2
  SAY #5218 /* ~Das ist ein hübscher Vorschlaghammer... eine schöne Form, ausbalanciert, und er liegt ausgezeichnet in deiner Hand.~ */
  IF ~  !HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5219 /* ~Gut. Ich werd's jetzt erstmal Keldor zeigen... und vielleicht behalt ich diesen Hammer dann, um ein paar Köpfe einzuschlagen.~ */ DO ~SetGlobal("G_Test1","GLOBAL",5)
GiveItemCreate("Qsledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5220 /* ~Gut. Das könnte sich gut verwenden lassen.~ */ DO ~GiveItemCreate("Qsledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5221 /* ~Die pure Kraft der Gießerei ist überwältigend. Zumindest ist die Prüfung der Göttermenschen bestanden; noch dazu glänzend.~ */ DO ~SetGlobal("G_Test1","GLOBAL",5)
GiveItemCreate("Qsledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
  IF ~  HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5222 /* ~Die pure Kraft der Gießerei ist überwältigend.~ */ DO ~GiveItemCreate("Qsledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 14.0
  SAY #5223 /* ~Soll das etwa eine Axt sein? Das Ding sieht eher wie ein Hammer aus, nur mit dem Unterschied, daß es scharfkantig ist. Okay, nennen wir's halt eine Axt.~ */
  IF ~  !HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5224 /* ~Hm. Naja, es genügt Keldors Anforderungen.~ */ DO ~SetGlobal("G_Test1","GLOBAL",3)
GiveItemCreate("PAx",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5225 /* ~Hm. Vielleicht kann ich es als Schrott verkaufen.~ */ DO ~GiveItemCreate("Pax",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5226 /* ~Die Hitze und Macht des Gießerei-Infernos erweist sich als unbezwingbar. Aber zumindest ist die Prüfung bestanden.~ */ DO ~SetGlobal("G_Test1","GLOBAL",3)
GiveItemCreate("Pax",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
  IF ~  HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5227 /* ~Die Hitze und Macht des Gießerei-Infernos erweist sich als unbezwingbar.~ */ DO ~GiveItemCreate("Pax",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 14.1
  SAY #5228 /* ~Das ist eine ordentliche Arbeit. Damit wirst du zwar keinen Preis gewinnen, aber die Waffe ist voll funktionstüchtig und tödlich.~ */
  IF ~  !HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5229 /* ~Gut genug. Keldor wird begeistert sein, da bin ich sicher.~ */ DO ~SetGlobal("G_Test1","GLOBAL",4)
GiveItemCreate("Ax",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5230 /* ~Hauptsache, es taugt für seinen Zweck. Und der besteht darin, Haut zu schneiden und Knochen zu splittern.~ */ DO ~GiveItemCreate("Ax",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5231 /* ~Der stechende, schwarze Qualm und die glühende Hitze der Gießerei sind zuviel. Aber zumindest ist die Prüfung bestanden.~ */ DO ~SetGlobal("G_Test1","GLOBAL",4)
GiveItemCreate("Ax",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
  IF ~  HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5232 /* ~Der stechende, schwarze Qualm und die wütende Hitze der Schmiede sind zuviel.~ */ DO ~IncrementGlobal("Forge","GLOBAL",1)
GiveItemCreate("Ax",Protagonist,1,0,0)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 14.2
  SAY #5233 /* ~Noch einige Verzierungen, und diese Axt würde auch des edelsten Kriegers würdig sein. Sie ist wirklich erste Sahne.~ */
  IF ~  !HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5234 /* ~Ich wußte schon immer, daß ein verborgenes Talent in mir schlummert. Und jetzt werd ich's Keldor zeigen... und diese Waffe vielleicht gar ausprobieren.~ */ DO ~SetGlobal("G_Test1","GLOBAL",5)
GiveItemCreate("AxQual",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5235 /* ~Diese Axt und ich, wir werden uns gut verstehen. Das kann ich direkt fühlen.~ */ DO ~GiveItemCreate("AxQual",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5236 /* ~Ein schönes Stück. Leider erweist sich die Hitze der Gießerei jedoch zu stark, ihr noch länger zu trotzen.~ */ DO ~SetGlobal("G_Test1","GLOBAL",5)
GiveItemCreate("AxQual",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
  IF ~  HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5237 /* ~Leider erweist sich die Hitze der Gießerei zu stark, ihr noch länger zu trotzen.~ */ DO ~GiveItemCreate("AxQual",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 3.0
  SAY #5238 /* ~Was möchtest du zuerst tun?~ */
  IF ~  PartyHasItem("Tongs")
~ THEN REPLY #5239 /* ~Leg die Zange bereit.~ */ GOTO 26
  IF ~  PartyHasItem("Fhammer")
~ THEN REPLY #5240 /* ~Schlag auf den Amboß.
~ */ GOTO 27
  IF ~  PartyHasItem("IOre")
~ THEN REPLY #5241 /* ~Nimm das Erz auf.~ */ GOTO 28
  IF ~  PartyHasItem("Tongs")
PartyHasItem("IOre")
~ THEN REPLY #5242 /* ~Greif das Erz mit der Zange, und halte es ins Schmiedefeuer.~ */ GOTO 29
  IF ~  PartyHasItem("Fhammer")
PartyHasItem("IOre")
~ THEN REPLY #5243 /* ~Leg das Erz auf den Amboß und hämmer drauflos.~ */ GOTO 30
  IF ~~ THEN REPLY #5244 /* ~Tritt von der Schmiede zurück.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0 27.0
  SAY #5249 /* ~Du hältst die Schmiedezange fest in deiner Hand. Schweiß rinnt dir über die Stirn. Was möchtest du jetzt machen?~ */
  IF ~  PartyHasItem("Fhammer")
~ THEN REPLY #5250 /* ~Schlag auf den Amboß.~ */ GOTO 27
  IF ~  PartyHasItem("IOre")
~ THEN REPLY #5251 /* ~Greif das Erz mit der Zange, und halte es in die Flammen.~ */ GOTO 29
  IF ~  PartyHasItem("Fhammer")
PartyHasItem("IOre")
~ THEN REPLY #5252 /* ~Leg das Erz auf den Amboß und hämmer drauflos.~ */ GOTO 30
  IF ~~ THEN REPLY #5253 /* ~Tritt von der Schmiede zurück.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.1 26.0 27.1 28.0
  SAY #5254 /* ~Du schlägst eine Weile auf den leeren Amboß und schickst das Klirren von Metall auf Metall gen Himmel. Harte, kraftraubende Arbeit... und schweißtreibend dazu. Was jetzt?~ */
  IF ~  PartyHasItem("Tongs")
~ THEN REPLY #5255 /* ~Leg die Zange bereit.~ */ GOTO 26
  IF ~  PartyHasItem("FHammer")
~ THEN REPLY #5256 /* ~Schlag auf den Amboß.~ */ GOTO 27
  IF ~  PartyHasItem("IOre")
~ THEN REPLY #5257 /* ~Nimm das Erz auf.~ */ GOTO 28
  IF ~  PartyHasItem("Tongs")
PartyHasItem("IOre")
~ THEN REPLY #5258 /* ~Greif das Erz mit der Zange, und halte es ins Schmiedefeuer.~ */ GOTO 29
  IF ~  PartyHasItem("FHammer")
PartyHasItem("IOre")
~ THEN REPLY #5259 /* ~Leg das Erz auf den Amboß und hämmer drauflos.~ */ GOTO 30
  IF ~~ THEN REPLY #5260 /* ~Tritt von der Schmiede zurück.~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 25.2 27.2
  SAY #5261 /* ~Du hältst den Erzbrocken in deinen Händen. Dort, wo du stehst, ist die Hitze der Schmiede fast stark genug, um das Eisen zu schmelzen... und um dir ordentlich den Pelz zu verbrennen. Nur gut, daß du gegen die Flammen geschützt bist. Was jetzt?~ */
  IF ~  PartyHasItem("FHammer")
~ THEN REPLY #5262 /* ~Schlag auf den Amboß.~ */ GOTO 27
  IF ~  PartyHasItem("Tongs")
PartyHasItem("IOre")
~ THEN REPLY #5263 /* ~Halte das Erz mit der Zange ins Schmiedefeuer.~ */ GOTO 29
  IF ~  PartyHasItem("FHammer")
PartyHasItem("IOre")
~ THEN REPLY #5264 /* ~Leg das Erz auf den Amboß und hämmer drauflos.~ */ GOTO 30
  IF ~~ THEN REPLY #5265 /* ~Halte das Erz mit bloßen Händen ins Feuer.~ */ GOTO 31
  IF ~  CheckStatGT(Protagonist,64,RESISTFIRE)
~ THEN REPLY #5266 /* ~Halte das Erz mit bloßen Händen ins Feuer.~ */ GOTO 45
  IF ~~ THEN REPLY #5267 /* ~Tritt von der Schmiede zurück.~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 25.3 26.1 27.3 28.1
  SAY #5268 /* ~Das Erz wird schnell weich und ist bald weich genug, um es zu bearbeiten. Auf deinen Händen bildet sich Schweiß.~ */
  IF ~  PartyHasItem("Fhammer")
~ THEN REPLY #5269 /* ~Leg das glühende Erz auf den Schmiedeamboß und bring es in Form.~ */ DO ~DestroyPartyItem("IOre",FALSE)
~ GOTO 32
  IF ~  !PartyHasItem("Fhammer")
~ THEN REPLY #5270 /* ~Mein Hammer! Ich hab' den Hammer vergessen, um dieses Zeug zu bearbeiten! Bin gleich zurück!~ */ DO ~DestroyPartyItem("IOre",FALSE)
~ EXIT
  IF ~~ THEN REPLY #5271 /* ~Tritt von der Schmiede zurück.~ */ DO ~DestroyPartyItem("IOre",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 25.4 26.2 27.4 28.2
  SAY #5272 /* ~Du legst das kalte Erz auf den Amboß und schlägst wild mit dem Hammer darauf ein. Du schlägst es in kleine, unbrauchbare Stücke. Die Flammen aus dem Schmiedeofen, der neben dir steht, wüten, und der Gestank verbrannten Metalls steigt gen Himmel.~ */
  IF ~~ THEN REPLY #5273 /* ~Tritt von der Schmiede zurück.~ */ DO ~DestroyPartyItem("IOre",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 28.3
  SAY #5274 /* ~Der durch die Flammen verursachte Schmerz ist unglaublich. Das Erz wird in deiner Faust weich wie Lehm, und der Geruch verbrannten Fleisches erfüllt die Luft. Das Eisen verschmilzt mit deiner Hand, und du fällst vor Schmerz in Ohnmacht.~ */
  IF ~~ THEN REPLY #5276 /* ~Werd ohnmächtig.~ */ DO ~DestroyPartyItem("IOre",FALSE)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 29.0 33.3 34.3 35.3
  SAY #5275 /* ~Was möchtest du schmieden?~ */
  IF ~~ THEN REPLY #5277 /* ~Etwas Kleines, Gefährliches: Ein Stilett!~ */ GOTO 33
  IF ~~ THEN REPLY #5278 /* ~Einen Hammer, der mit beiden Händen geschwungen wird.
~ */ GOTO 34
  IF ~~ THEN REPLY #5279 /* ~Eine Streitaxt.~ */ GOTO 35
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #5281 /* ~Ein Stilett... einen kleinen Dolch mir dreikantiger Klinge, den man schnell und einfach schmieden kann. Das bedeutet, daß du dieses schmerzerfüllte Inferno sehr bald verlassen kannst. Willst du wirklich ein Stilett schmieden?~ */
  IF ~  CheckStatLT(Protagonist,10,INT)
~ THEN REPLY #5282 /* ~Ja.~ */ GOTO 36
  IF ~  CheckStatGT(Protagonist,9,INT)
CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #5283 /* ~Ja.~ */ GOTO 37
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #5284 /* ~Ja.~ */ GOTO 38
  IF ~~ THEN REPLY #5285 /* ~Nein. Ich würde lieber etwas anderes herstellen.~ */ GOTO 32
  IF ~~ THEN REPLY #5286 /* ~Nein. Ich habe erstmal genug von der Schmiede.~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 32.1
  SAY #5287 /* ~Einen Hammer... der ist nämlich im Nu fertig und du kannst dann diesen Glutofen ruckzuck wieder verlassen. Willst du wirklich einen Hammer schmieden?~ */
  IF ~  CheckStatLT(Protagonist,10,INT)
~ THEN REPLY #5288 /* ~Ja.~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,9,INT)
CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #5289 /* ~Ja.~ */ GOTO 40
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #5290 /* ~Ja.~ */ GOTO 41
  IF ~~ THEN REPLY #5291 /* ~Nein. Ich würde lieber etwas anderes herstellen.~ */ GOTO 32
  IF ~~ THEN REPLY #5292 /* ~Nein. Ich habe erstmal genug von der Schmiede.~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 32.2
  SAY #5293 /* ~Eine Axt... das dauert allerdings eine Weile. Du hast dann zwar eine ganze Weile nichts zu lachen, aber wenigstens verbrennst du nicht. Willst du wirklich eine Axt schmieden?~ */
  IF ~  CheckStatLT(Protagonist,10,INT)
~ THEN REPLY #5294 /* ~Ja.~ */ GOTO 42
  IF ~  CheckStatGT(Protagonist,9,INT)
CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #5295 /* ~Ja.~ */ GOTO 43
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #5296 /* ~Ja.~ */ GOTO 44
  IF ~~ THEN REPLY #5297 /* ~Nein. Ich würde lieber etwas anderes herstellen.~ */ GOTO 32
  IF ~~ THEN REPLY #5298 /* ~Nein. Ich habe erstmal genug von der Schmiede.~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 33.0
  SAY #5302 /* ~Kritisch betrachtest du deine Arbeit. Es ist zwar kein Meisterwerk, aber zumindest hast du eine Waffe hergestellt.~ */
  IF ~  Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5303 /* ~Das muß für die Prüfung ausreichen.~ */ DO ~SetGlobal("G_Test1","GLOBAL",3)
GiveItemCreate("PStlo",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5304 /* ~Ich schätze, es läßt sich verwenden...~ */ DO ~GiveItemCreate("PStlo",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 33.1
  SAY #5305 /* ~Du hast ein Stilett geschmiedet. Du gehst einen Schritt zurück und bewunderst deine Arbeit.~ */
  IF ~  Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5306 /* ~Es ist ein Stilett. Gut genug für die Prüfung.~ */ DO ~SetGlobal("G_Test1","GLOBAL",4)
GiveItemCreate("Stiletto",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5307 /* ~Es ist ein Stilett. Richtig gut... und wirkt noch dazu verwendbar.~ */ DO ~GiveItemCreate("Stiletto",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 33.2
  SAY #5308 /* ~Das ist ja fast schon ein Meisterwerk! Dein Stilett ist nicht nur voll funktionstüchtig, sondern liegt auch ausgezeichnet in der Hand und sieht überaus furchterregend aus. Gute Arbeit!~ */
  IF ~  Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5309 /* ~Dieses Ding wird mir gute Dienste leisten. Keldor wird bestimmt beeindruckt sein! Zeit, von diesen Flammen wegzukommen.~ */ DO ~SetGlobal("G_Test1","GLOBAL",5)
GiveItemCreate("QStlo",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5310 /* ~Dies wird mir für die nächsten Aufgaben gute Dienste leisten. Und nun raus aus diesen Flammen.~ */ DO ~GiveItemCreate("QStlo",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 34.0
  SAY #5311 /* ~Der Hammer, den du geschmiedet hast, sieht ungefähr so aus wie ein Klumpen Roheisen. Du wirst ihn aber trotzdem benutzen können... gerade so.~ */
  IF ~  Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5313 /* ~Gut genug für meine Zwecke. Und nun zurück, um es Keldor zu zeigen.~ */ DO ~SetGlobal("G_Test1","GLOBAL",3)
GiveItemCreate("Psledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5312 /* ~All die Mühe für ein Stück Metall? Bei den Mächten! Nichts wie raus hier.~ */ DO ~GiveItemCreate("Psledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 34.1
  SAY #5314 /* ~Guck an! Es ist ein Vorschlaghammer... und er sieht genauso aus wie jeder andere Vorschlaghammer, den du in deinem Leben gesehen hast.~ */
  IF ~  Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5315 /* ~Großartig. Das ist gut genug für Keldor. Ich habe erstmal genug von der Schmiede.~ */ DO ~SetGlobal("G_Test1","GLOBAL",4)
GiveItemCreate("Sledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5316 /* ~Das ist gut genug für meine Zwecke. Wird Zeit, ein paar Köpfe einzuschlagen. Ich habe erstmal genug von der Schmiede.~ */ DO ~GiveItemCreate("Sledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 34.2
  SAY #5317 /* ~Das ist ein hübscher Vorschlaghammer... eine schöne Form, ausbalanciert, und er liegt ausgezeichnet in deiner Hand.~ */
  IF ~  Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5318 /* ~Gut. Ich werd's jetzt erstmal Keldor zeigen... und vielleicht behalt ich diesen Hammer dann, um ein paar Köpfe einzuschlagen.~ */ DO ~SetGlobal("G_Test1","GLOBAL",5)
GiveItemCreate("Qsledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5319 /* ~Gut. Das könnte sich gut verwenden lassen.~ */ DO ~GiveItemCreate("Qsledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 42 // from: 35.0
  SAY #5320 /* ~Soll das etwa eine Axt sein? Das Ding sieht eher wie ein Hammer aus, nur mit dem Unterschied, daß es scharfkantig ist. Okay, nennen wir's halt eine Axt.~ */
  IF ~  Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5321 /* ~Hm. Naja, es genügt Keldors Anforderungen.~ */ DO ~SetGlobal("G_Test1","GLOBAL",3)
GiveItemCreate("PAx",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5322 /* ~Hm. Vielleicht kann ich es als Schrott verkaufen.~ */ DO ~GiveItemCreate("Pax",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 35.1
  SAY #5323 /* ~Das ist eine ordentliche Arbeit. Damit wirst du zwar keinen Preis gewinnen, aber die Waffe ist voll funktionstüchtig und tödlich.~ */
  IF ~  Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5324 /* ~Gut genug. Keldor wird begeistert sein, da bin ich sicher.~ */ DO ~SetGlobal("G_Test1","GLOBAL",4)
GiveItemCreate("Ax",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5325 /* ~Hauptsache, es taugt für seinen Zweck. Und der besteht darin, Haut zu schneiden und Knochen zu splittern.~ */ DO ~GiveItemCreate("Ax",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 35.2
  SAY #5326 /* ~Noch einige Verzierungen, und diese Axt würde auch des edelsten Kriegers würdig sein. Sie ist wirklich erste Sahne.~ */
  IF ~  Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5327 /* ~Ich wußte schon immer, daß ein verborgenes Talent in mir schlummert. Und jetzt werd ich's Keldor zeigen... und diese Waffe vielleicht gar ausprobieren.~ */ DO ~SetGlobal("G_Test1","GLOBAL",5)
GiveItemCreate("AxQual",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5328 /* ~Diese Axt und ich, wir werden uns gut verstehen. Das kann ich direkt fühlen.~ */ DO ~GiveItemCreate("AxQual",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 28.4
  SAY #5329 /* ~Aufgrund deiner angeborenen Unempfindlichkeit gegen Feuer kannst du das Erz solange in die Flamme halten, bis es schmilzt und zwischen deinen Fingern herunterläuft. Die anderen Schmiede in der Gießerei betrachten mit ungläubigem Staunen, wie dir das geschmolzene Erz von den Händen tropft. Leider ist von deinem Erz jetzt nichts mehr übrig.~ */
  IF ~~ THEN REPLY #5330 /* ~Verschwinde.~ */ DO ~DestroyPartyItem("IOre",FALSE)
~ EXIT
END

IF WEIGHT #0 ~  GlobalGT("G_Test1","GLOBAL",0)
GlobalLT("G_Test1","GLOBAL",6)
~ THEN BEGIN 46 // from:
  SAY #5331 /* ~Du gehst zur Schmiede hinauf. Die Hitze ist unglaublich. Was tust du?~ */
  IF ~  !PartyHasItem("LApron")
CheckStatLT(Protagonist,20,RESISTFIRE)
~ THEN REPLY #5332 /* ~Arbeite in der Schmiede.~ */ GOTO 2
  IF ~  PartyHasItem("LApron")
~ THEN REPLY #5333 /* ~Arbeite in der Schmiede.~ */ GOTO 3
  IF ~  !PartyHasItem("LApron")
CheckStatGT(Protagonist,19,RESISTFIRE)
~ THEN REPLY #5334 /* ~Arbeite in der Schmiede.~ */ GOTO 3
  IF ~~ THEN REPLY #5335 /* ~Tritt zurück.~ */ EXIT
END
