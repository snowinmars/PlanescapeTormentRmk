// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHERMIT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DHERMIT~

IF ~  Global("Know_Hermit","GLOBAL",0)
CreatureInArea("AR0708")
~ THEN BEGIN 0 // from:
  SAY #57262 /* ~Du siehst einen schmutzigen Mann, der vor Alter und Dunkelheit gebückt und mürrisch ist. Sein strähniges, fettiges Haar fliegt von seinen Schultern, als er dich erblickt, und seine Augen weiten sich vor Angst. Seine Finger beginnen, in einem obskuren Rhythmus zu zucken...~ */
  IF ~~ THEN REPLY #57263 /* ~"Es ist okay... Ich werde dir nicht weh tun."~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #57264 /* ~Greif ihn an, bevor er den Zauber aussprechen kann.~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #57265 /* ~Warte ab, was passiert.~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 2
END

IF ~  Global("Know_Hermit","GLOBAL",1)
CreatureInArea("AR0708")
~ THEN BEGIN 1 // from:
  SAY #57266 /* ~Der Eremit trippelt eilends von dir weg, wobei seine Hände obskure Muster in der Luft beschreiben. "Weg mit dir, du übles Wesen... Oh, du bist es. Was willst du jetzt schon wieder von dem alten Eremiten, häh?"~ */
  IF ~~ THEN REPLY #57267 /* ~"Erzähl mir noch mal was über dich."~ */ GOTO 3
  IF ~~ THEN REPLY #57268 /* ~"Erzähl mir was über diesen Ort."~ */ GOTO 4
  IF ~~ THEN REPLY #57269 /* ~"Ich bin auf der Suche nach einem Deva."~ */ GOTO 5
  IF ~~ THEN REPLY #15954 /* ~"Ich brauche einen Ort, an dem ich mich ausruhen kann."~ */ GOTO 22
  IF ~~ THEN REPLY #57270 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 0.2
  SAY #57271 /* ~"Ach, noch ein Besucher, häh? Willst den alten Eremiten wohl zu Tode erschrecken, häh? Diese Tunnels sind kein Ort für einen Sonntagsspaziergang, weißt du. Was willst du von mir?"~ */
  IF ~~ THEN REPLY #57272 /* ~"Ich bin auf der Suche nach einem Deva."~ */ GOTO 5
  IF ~~ THEN REPLY #57273 /* ~"Was ist hier unten?"~ */ GOTO 4
  IF ~~ THEN REPLY #57274 /* ~"Das geht dich nichts an."~ */ GOTO 6
  IF ~~ THEN REPLY #57275 /* ~"Wer bist du?"~ */ GOTO 3
  IF ~~ THEN REPLY #15954 /* ~"Ich brauche einen Ort, an dem ich mich ausruhen kann."~ */ GOTO 22
  IF ~~ THEN REPLY #57270 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.3 4.0 5.1
  SAY #57277 /* ~Er seufzt lautstark, dann faßt er sich wieder und sieht sich einen Moment wild um. "Ich kam nach Verdammnis, weil mein Gott nach Carzeri ins Exil gehen mußte. Ich bin nach und nach näher an ihn herangekommen, aber in die Gefängnisebene gehe ich nicht rein. Ich versuche einen Weg zu finden, um ihn zu befreien. Da er eine Macht des Guten ist, sollte er überhaupt nicht dort sein, aber so ist das wohl mit dem Exil."~ */
  IF ~~ THEN REPLY #57278 /* ~"Wie lange bist du schon hier?"~ */ GOTO 7
  IF ~~ THEN REPLY #57279 /* ~"Hast du hier zufällig einen Deva gesehen?"~ */ GOTO 5
  IF ~~ THEN REPLY #57280 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ GOTO 4
  IF ~~ THEN REPLY #57281 /* ~"Du bist ein Priester? Kannst du mich heilen?"~ */ DO ~StartStore("Hermit",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #57282 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1 3.2 5.0
  SAY #57283 /* ~"Dieser Ort? Er wimmelt von Monstern und Verbrechern - ich gehöre aber nicht dazu - und anderen Menschen, die einem an die Gurgel wollen. Aber es ist immer noch sicherer als die Stadt da oben. Hier unten weiß man zumindest, woran man ist. Da oben? Pustekuchen."~ */
  IF ~~ THEN REPLY #57284 /* ~"Was machst du überhaupt hier?"~ */ GOTO 3
  IF ~~ THEN REPLY #57285 /* ~"Hast du hier irgendwo einen Deva gesehen?"~ */ GOTO 5
  IF ~~ THEN REPLY #57286 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2 2.0 3.1 4.1
  SAY #57287 /* ~"Hab darüber Gerüchte gehört, aber dieser alte Einsiedler hat's nicht gesehen. Ich dachte, es könnte unten sein, weil da alles Gute weggesperrt wird, aber ich hab's immer noch nicht gefunden. Wenn ich könnte, würd ich fragen, ob es etwas über meinen Gott gehört hat." Abermals seufzt er rasselnd und blickt den Gang hinunter. "Irgendwie fühlt es sich an, als ob es Richtung Westen wäre. Aber ich hab's immer noch nicht gefunden. Es muß einen Beschützer haben." Er blinzelt dich an.~ */
  IF ~~ THEN REPLY #57288 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ DO ~GiveItem("SPWI704",Protagonist)
~ GOTO 4
  IF ~~ THEN REPLY #57289 /* ~"Was machst du überhaupt hier?"~ */ DO ~GiveItem("SPWI704",Protagonist)
~ GOTO 3
  IF ~~ THEN REPLY #57290 /* ~"Danke. Leb wohl."~ */ DO ~GiveItem("SPWI704",Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY #57291 /* ~"Hmpf! Sich an einen alten Mann einfach so ranzuschleichen. Weg mit dir, Schwachkopf!" Er wedelt dich mit der Hand weg und trippelt wieder durch den Untergrund davon.~ */
  IF ~~ THEN REPLY #57292 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.0
  SAY #57293 /* ~"Zu lang, zu lang, im Dienste eines Gottes, der schon längst vergessen ist. Aber ich erinnere mich an ihn... Ich werde ihn finden, und wenn ich alle Monster hier umgehen muß, ich werde ihn finden." Er stapft murmelnd davon.~ */
  IF ~~ THEN REPLY #57294 /* ~"Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~  Global("Know_Hermit","GLOBAL",0)
Global("Current_Area","GLOBAL",900)
GlobalLT("Curst_Counter","GLOBAL",3)
~ THEN BEGIN 8 // from:
  SAY #57295 /* ~Du erblickst einen schmutzigen alten Mann, der vor Alter und Dunkelheit ganz gebückt und mürrisch ist. Sein strähniges, fettiges Haar fliegt von seinen Schultern, als er sich umsieht. Als er dich erblickt, brüllt er los: "Kyse, der Verwalter, hat mir gesagt, daß du kommen würdest. Der Deva ist stark, Reisender, zu stark. Da würdest du lieber dein eigenes Todesurteil unterschreiben, als ihm zu begegnen. Du kannst ihn jedoch schwächen, indem du das Chaos in der Stadt minderst... Er zieht seine Energie daraus."~ */
  IF ~~ THEN REPLY #57296 /* ~"Woher weißt du das?"~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #57297 /* ~"Ich gehe trotzdem zu ihm."~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #57298 /* ~"Geh mir aus dem Weg, alter Mann."~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 16
END

IF ~  Global("Know_Hermit","GLOBAL",0)
Global("Current_Area","GLOBAL",900)
GlobalGT("Curst_Counter","GLOBAL",2)
GlobalLT("Curst_Counter","GLOBAL",6)
~ THEN BEGIN 9 // from:
  SAY #57299 /* ~Du erblickst einen dreckigen alten Mann, der vor Alter und Dunkelheit ganz gebückt und mürrisch ist. Sein strähniges, fettiges Haar fliegt von seinen Schultern, als er sich umsieht. Als er dich erblickt, brüllt er los: "Kyse, der Verwalter, hat mir gesagt, daß du kommen würdest. Der Deva ist immer noch stark, aber du hast ihn etwas gebremst. Du kannst ihn schwächen, indem du das Chaos in der Stadt weiter minderst... Er zieht seine Energie daraus."~ */
  IF ~~ THEN REPLY #57300 /* ~"Woher weißt du das?"~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #57301 /* ~"Ich bin bereit, ihm gegenüberzutreten."~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #57302 /* ~"Geh mir aus dem Weg, alter Mann."~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 16
END

IF ~  Global("Know_Hermit","GLOBAL",0)
Global("Current_Area","GLOBAL",900)
GlobalGT("Curst_Counter","GLOBAL",5)
~ THEN BEGIN 10 // from:
  SAY #57303 /* ~Du erblickst einen dreckigen alten Mann, der vor Alter und Dunkelheit ganz gebückt und mürrisch ist. Sein strähniges, fettiges Haar fliegt von seinen Schultern, als er sich umsieht. Als er dich erblickt, brüllt er los: "Kyse, der Verwalter, hat mir gesagt, daß du kommen würdest. Du hast den Deva ziemlich geschwächt... Das Chaos in der Stadt ist zurückgegangen, und sein Plan geht nicht auf. Kopf hoch, und bringe deine Aufgabe zu Ende."~ */
  IF ~~ THEN REPLY #57304 /* ~"Woher weißt du das?"~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #57305 /* ~"Mach ich. Leb wohl."~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 15
END

IF ~  Global("Know_Hermit","GLOBAL",1)
Global("Current_Area","GLOBAL",900)
GlobalLT("Curst_Counter","GLOBAL",3)
~ THEN BEGIN 11 // from:
  SAY #57306 /* ~Du siehst den alten Eremiten aus dem Untergrund. Als er dich erblickt, ruft er: "Kyse, der Verwalter, hat mir gesagt, daß du kommen würdest. Der Deva ist stark, Reisender, zu stark. Da würdest du lieber dein eigenes Todesurteil unterschreiben, als ihm jetzt gegenüberzutreten. Du kannst ihn schwächen, indem du das Chaos in der Stadt minderst... Er zieht daraus seine Energie."~ */
  IF ~~ THEN REPLY #57307 /* ~"Woher weißt du das?"~ */ GOTO 14
  IF ~~ THEN REPLY #57308 /* ~"Ich gehe trotzdem zu ihm."~ */ GOTO 15
  IF ~~ THEN REPLY #57309 /* ~"Geh mir aus dem Weg, alter Mann."~ */ GOTO 16
END

IF ~  Global("Know_Hermit","GLOBAL",1)
Global("Current_Area","GLOBAL",900)
GlobalGT("Curst_Counter","GLOBAL",2)
GlobalLT("Curst_Counter","GLOBAL",6)
~ THEN BEGIN 12 // from:
  SAY #57310 /* ~Du siehst den alten Eremiten aus dem Untergrund. Als er dich erblickt, ruft er: "Kyse, der Verwalter, hat mir gesagt, daß du kommen würdest. Der Deva ist immer noch stark, Reisender, stark, aber du hast ihn etwas gebremst. Du kannst ihn schwächen, indem du das Chaos in der Stadt weiter minderst. Er zieht daraus seine Energie."~ */
  IF ~~ THEN REPLY #57311 /* ~"Woher weißt du das?"~ */ GOTO 14
  IF ~~ THEN REPLY #57312 /* ~"Ich bin bereit, ihm gegenüberzutreten."~ */ GOTO 15
  IF ~~ THEN REPLY #57313 /* ~"Geh mir aus dem Weg, alter Mann."~ */ GOTO 16
END

IF ~  Global("Know_Hermit","GLOBAL",1)
Global("Current_Area","GLOBAL",900)
GlobalGT("Curst_Counter","GLOBAL",5)
~ THEN BEGIN 13 // from:
  SAY #57317 /* ~Du erblickst einen dreckigen alten Mann, der vor Alter und Dunkelheit ganz gebückt und mürrisch ist. Sein strähniges, fettiges Haar fliegt von seinen Schultern, als er sich umsieht. Als er dich erblickt, brüllt er los: "Kyse, der Verwalter, hat mir gesagt, daß du kommen würdest. Du hast den Deva ziemlich geschwächt... Das Chaos in der Stadt ist zurückgegangen, und sein Plan geht nicht auf. Kopf hoch, und bringe deine Aufgabe zu Ende."~ */
  IF ~~ THEN REPLY #57315 /* ~"Woher weißt du das?"~ */ GOTO 14
  IF ~~ THEN REPLY #57316 /* ~"Mach ich. Leb wohl."~ */ GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 8.0 9.0 10.0 11.0 12.0 13.0
  SAY #57318 /* ~"Ich kann ihn da oben *fühlen*, zunehmend und abnehmend wie ein brennender Mond. Ich kann *hören*, wie er sich fragt, wann du kommst. Er sehnt sich nach einer Konfrontation."~ */
  IF ~~ THEN REPLY #57319 /* ~"Die kann er bald haben. Nur jetzt noch nicht. Leb wohl."~ */ GOTO 15
  IF ~~ THEN REPLY #57320 /* ~"Dann soll er sie haben."~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 8.1 9.1 10.1 11.1 12.1 13.1 14.0 14.1
  SAY #57321 /* ~"Bevor du gehst... würdest du den Segen eines alten Mannes empfangen? Er könnte dir gegen den Deva und andere Schrecken helfen, die dir begegnen. Soll ich dich heilen?"~ */
  IF ~~ THEN REPLY #57322 /* ~"Nein danke."~ */ GOTO 18
  IF ~~ THEN REPLY #57323 /* ~"Nein. Und jetzt geh mir aus dem Weg."~ */ GOTO 17
  IF ~  NumInParty(1)
~ THEN REPLY #57324 /* ~"Ja."~ */ GOTO 19
  IF ~  NumInPartyGT(1)
~ THEN REPLY #57325 /* ~"Ja."~ */ GOTO 20
END

IF ~~ THEN BEGIN 16 // from: 8.2 9.2 11.2 12.2
  SAY #57326 /* ~Er legt dir eine überraschend starke Hand auf die Brust. "Bevor du gehst, empfängst du meinen Segen? Ich mag zwar dein vernarbtes Gesicht nicht besonders, aber es ist meine Pflicht, dafür zu sorgen, daß du gut vorbereitet bist... Es geht hier nicht nur um dich. Laß mich deine Wunden heilen."~ */
  IF ~~ THEN REPLY #57327 /* ~"Ich will deinen Segen nicht. Geh mir aus dem Weg."~ */ GOTO 17
  IF ~  NumInParty(1)
~ THEN REPLY #57328 /* ~"In Ordnung."~ */ GOTO 19
  IF ~  NumInPartyGT(1)
~ THEN REPLY #57329 /* ~"In Ordnung."~ */ GOTO 20
END

IF ~~ THEN BEGIN 17 // from: 15.1 16.0
  SAY #57331 /* ~"Dann denke daran, wenn du blutend vor ihm liegst." Er zieht eine Grimasse. "So sehr es mich schmerzt, das zu sagen: Alles Gute."~ */
  IF ~~ THEN REPLY #57332 /* ~"Ja, danke. Leb wohl."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 15.0
  SAY #57334 /* ~"Dann gehst du auf eigene Verantwortung. Versage nicht, vernarbter Mann." Er verbeugt sich vor dir.~ */
  IF ~~ THEN REPLY #57335 /* ~"Danke. Leb wohl."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 15.2 16.1
  SAY #57338 /* ~Er schließt die Augen und konzentriert sich.. "Erlaube mir, deine Wunden zu heilen." Er öffnet die Augen. "Nun geh."~ */
  IF ~~ THEN REPLY #57340 /* ~"Danke."~ */ DO ~FullHeal(Protagonist)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.3 16.2 21.0 21.1 21.2 21.3 21.4 21.5 21.6 21.7
  SAY #57342 /* ~"Wer braucht meine Fürsorge?"~ */
  IF ~  HPPercentLT(Protagonist,100)
~ THEN REPLY #57344 /* ~"Ich."~ */ DO ~FullHeal(Protagonist)
~ GOTO 21
  IF ~  NearbyDialog("DAnnah")
HPPercentLT("Annah",100)
~ THEN REPLY #57349 /* ~"Annah."~ */ DO ~FullHeal("Annah")
~ GOTO 21
  IF ~  NearbyDialog("DMorte")
HPPercentLT("Morte",100)
~ THEN REPLY #57351 /* ~"Morte."~ */ DO ~FullHeal("Morte")
~ GOTO 21
  IF ~  NearbyDialog("DDakkon")
HPPercentLT("Dakkon",100)
~ THEN REPLY #57355 /* ~"Dak'kon."~ */ DO ~FullHeal("Dakkon")
~ GOTO 21
  IF ~  NearbyDialog("DNordom")
HPPercentLT("Nordom",100)
~ THEN REPLY #57356 /* ~"Nordom."~ */ DO ~FullHeal("Nordom")
~ GOTO 21
  IF ~  NearbyDialog("DGrace")
HPPercentLT("Grace",100)
~ THEN REPLY #57358 /* ~"Grace, die Gefallene."~ */ DO ~FullHeal("Grace")
~ GOTO 21
  IF ~  NearbyDialog("DIgnus")
HPPercentLT("Ignus",100)
~ THEN REPLY #57360 /* ~"Ignus."~ */ DO ~FullHeal("Ignus")
~ GOTO 21
  IF ~  NearbyDialog("DVhail")
HPPercentLT("Vhail",100)
~ THEN REPLY #57362 /* ~"Vhailor."~ */ DO ~FullHeal("Vhail")
~ GOTO 21
  IF ~~ THEN REPLY #57366 /* ~"Keiner von uns. Aber danke für den Segen. Leb wohl."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.1 20.2 20.3 20.4 20.5 20.6 20.7
  SAY #57367 /* ~"So. Hat sonst noch jemand Wunden für mich?"~ */
  IF ~  HPPercentLT(Protagonist,100)
~ THEN REPLY #57368 /* ~"Ich."~ */ DO ~FullHeal(Protagonist)
~ GOTO 20
  IF ~  NearbyDialog("DAnnah")
HPPercentLT("Annah",100)
~ THEN REPLY #57369 /* ~"Annah."~ */ DO ~FullHeal("Annah")
~ GOTO 20
  IF ~  NearbyDialog("DMorte")
HPPercentLT("Morte",100)
~ THEN REPLY #57370 /* ~"Morte."~ */ DO ~FullHeal("Morte")
~ GOTO 20
  IF ~  NearbyDialog("DDakkon")
HPPercentLT("Dakkon",100)
~ THEN REPLY #57372 /* ~"Dak'kon."~ */ DO ~FullHeal("Dakkon")
~ GOTO 20
  IF ~  NearbyDialog("DNordom")
HPPercentLT("Nordom",100)
~ THEN REPLY #57373 /* ~"Nordom."~ */ DO ~FullHeal("Nordom")
~ GOTO 20
  IF ~  NearbyDialog("DGrace")
HPPercentLT("Grace",100)
~ THEN REPLY #57374 /* ~"Grace, die Gefallene."~ */ DO ~FullHeal("Grace")
~ GOTO 20
  IF ~  NearbyDialog("DIgnus")
HPPercentLT("Ignus",100)
~ THEN REPLY #57375 /* ~"Ignus."~ */ DO ~FullHeal("Ignus")
~ GOTO 20
  IF ~  NearbyDialog("DVhail")
HPPercentLT("Vhail",100)
~ THEN REPLY #57376 /* ~"Vhailor."~ */ DO ~FullHeal("Vhail")
~ GOTO 20
  IF ~~ THEN REPLY #57377 /* ~"Keiner von uns. Aber danke für den Segen. Leb wohl."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 1.3 2.4
  SAY #68484 /* ~"Ja, was? Also gut. Ich habe da drüben einen Platz, wo du's dir gemütlich machen kannst... Ich sag dir Bescheid, wenn irgendwelche Monster vorbeikommen."~ */
  IF ~~ THEN REPLY #32017 /* ~"Danke."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
END
