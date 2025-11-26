// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : WSCROLL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~WSCROLL~

IF ~  !Class(Protagonist,MAGE)
~ THEN BEGIN 0 // from:
  SAY #62359 /* ~Die Schriftrolle ist voller fließender, kryptischer Runen, die dir überhaupt nichts sagen. Vielleicht könnte ein Magier sie entziffern.~ */
  IF ~~ THEN REPLY #62360 /* ~Leg die Schriftrolle weg.~ */ EXIT
END

IF ~  CheckStatLT(Protagonist,18,INT)
~ THEN BEGIN 1 // from:
  SAY #62361 /* ~Die Schriftrolle ist voller fließender, magischer Runen. Während deine Augen ihren glühenden Konturen folgen, erfüllt dich ein Gefühl des Dranges und der Macht. Leider übersteigen die in der Schriftrolle beschriebenen Konzepte deine derzeitige Intelligenz.~ */
  IF ~~ THEN REPLY #62362 /* ~Leg die Schriftrolle weg.~ */ EXIT
END

IF ~  ClassLevelLT(Protagonist,MAGE,12)
~ THEN BEGIN 2 // from:
  SAY #62363 /* ~Die Schriftrolle ist voller fließender, magischer Runen. Während deine Augen ihren glühenden Konturen folgen, erfüllt dich ein Gefühl des Dranges und der Macht. In deinen Gedanken siehst du ganz klar, daß dies eine 'Wunsch'-Formel ist... Leider fehlt dir die Erfahrung, sie zu benutzen.~ */
  IF ~~ THEN REPLY #62364 /* ~Leg die Schriftrolle weg.~ */ EXIT
END

IF ~  True()
~ THEN BEGIN 3 // from:
  SAY #62365 /* ~Die Schriftrolle ist voller fließender, magischer Runen. Während deine Augen ihren glühenden Konturen folgen, erfüllt dich ein Gefühl des Dranges und der Macht. In deinen Gedanken siehst du ganz klar, daß dies eine 'Wunsch'-Formel ist... Was wünschst du dir?~ */
  IF ~~ THEN REPLY #62366 /* ~"Ich wünsche mir eine Erhöhung meiner Attribute..."~ */ GOTO 4
  IF ~~ THEN REPLY #62367 /* ~"Ich wünsche mir, daß ich einen mächtigen Gegenstand besitze..."~ */ DO ~GiveItemCreate("Wring",Protagonist,1,0,0)
DestroyPartyItem("Wscroll",TRUE)
~ GOTO 6
  IF ~~ THEN REPLY #62368 /* ~"Ich wünsche mir Reichtum, so daß ich mir meine Träume erfüllen kann..."~ */ DO ~GiveGoldForce(10000)
DestroyPartyItem("Wscroll",TRUE)
~ GOTO 7
  IF ~  False()
~ THEN REPLY #62369 /* ~"Ich wünsche mir Wissen und Erfahrung, denn darin liegt wahre Macht..."~ */ DO ~PermanentStatChange(Protagonist,LEVEL,RAISE,1)
DestroyPartyItem("Wscroll",TRUE)
~ GOTO 8
  IF ~~ THEN REPLY #62370 /* ~"Ich wünsche mir, daß meine Gefährten und ich bei bester Gesundheit sind..."~ */ DO ~FullHeal(Player1)
FullHeal(Player2)
FullHeal(Player3)
FullHeal(Player4)
FullHeal(Player5)
FullHeal(Player6)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
DestroyPartyItem("Wscroll",TRUE)
~ GOTO 9
  IF ~~ THEN REPLY #62371 /* ~"Ich wünsche mir mehr überliefertes Wissen und die Macht, die es mit sich bringt..."~ */ DO ~GiveItemCreate("SPWI705",Protagonist,1,1,0)
GiveItemCreate("SPWI802",Protagonist,1,1,0)
GiveItemCreate("SPWI909",Protagonist,1,1,0)
DestroyPartyItem("Wscroll",TRUE)
~ GOTO 10
  IF ~~ THEN REPLY #62372 /* ~Leg die Schriftrolle weg.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #62373 /* ~Die Runen fangen an, vor Kraft zu glühen und zu pulsieren. Dein Geist ist ausgefüllt mit einem Bild von dir, einem Bild, das du nach deinen Wünschen gestalten kannst... Welches Attribut möchtest du erhöhen?~ */
  IF ~~ THEN REPLY #62374 /* ~Stärke.~ */ DO ~DestroyPartyItem("Wscroll",TRUE)
PermanentStatChange(Protagonist,STR,RAISE,2)
~ GOTO 5
  IF ~~ THEN REPLY #62375 /* ~Intelligenz.~ */ DO ~DestroyPartyItem("Wscroll",TRUE)
PermanentStatChange(Protagonist,INT,RAISE,2)
~ GOTO 5
  IF ~~ THEN REPLY #62376 /* ~Weisheit.~ */ DO ~DestroyPartyItem("Wscroll",TRUE)
PermanentStatChange(Protagonist,WIS,RAISE,2)
~ GOTO 5
  IF ~~ THEN REPLY #62377 /* ~Geschicklichkeit.~ */ DO ~DestroyPartyItem("Wscroll",TRUE)
PermanentStatChange(Protagonist,DEX,RAISE,2)
~ GOTO 5
  IF ~~ THEN REPLY #62378 /* ~Konstitution.~ */ DO ~DestroyPartyItem("Wscroll",TRUE)
PermanentStatChange(Protagonist,CON,RAISE,2)
~ GOTO 5
  IF ~~ THEN REPLY #62379 /* ~Charisma.~ */ DO ~DestroyPartyItem("Wscroll",TRUE)
PermanentStatChange(Protagonist,CHR,RAISE,2)
~ GOTO 5
  IF ~~ THEN REPLY #62380 /* ~Leg die Schriftrolle weg.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1 4.2 4.3 4.4 4.5
  SAY #62381 /* ~Vor deinem geistigen Auge siehst du dich, wie du bist und wie du sein willst. Die Kraft der Schriftrolle durchfließt dein Wesen und die Wirklichkeit verformt sich, um dem geistigen Bild zu entsprechen, das du geschaffen hast. Die Schriftrolle verbrennt in einem Feuer aus Energie.~ */
  IF ~~ THEN REPLY #62382 /* ~Geschafft.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY #62383 /* ~Vor deinem geistigen Auge ballst du die Faust. In deinem Griff befindet sich Macht in Form eines Objekts, das dich besser macht, als du bist. Die Kraft der Schriftrolle durchfließt dich, und die Wirklichkeit verformt sich, um dem geistigen Bild zu entsprechen, das du geschaffen hast. Die Schriftrolle verbrennt in einem Feuer aus Energie.~ */
  IF ~~ THEN REPLY #62384 /* ~Geschafft.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY #62385 /* ~Vor deinem geistigen Auge siehst du dich überschüttet mit Reichtümern, der Reichtum eines Königs liegt vor dir. Die Kraft der Schriftrolle durchfließt dich, und die Wirklichkeit verformt sich, um dem geistigen Bild zu entsprechen, das du geschaffen hast. Die Schriftrolle verbrennt in einem Feuer aus Energie.~ */
  IF ~~ THEN REPLY #62386 /* ~Geschafft.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.3
  SAY #62387 /* ~Vor deinem geistigen Auge siehst du, wie du viele Erfahrungen machst. Die Visionen sind flüchtig, immer fast unkenntlich, aber trotzdem lernst du aus ihnen. Die Kraft der Schriftrolle durchfließt dich, und die Wirklichkeit verformt sich, um dem geistigen Bild zu entsprechen, das du geschaffen hast. Die Schriftrolle verbrennt in einem Feuer aus Energie.~ */
  IF ~~ THEN REPLY #62388 /* ~Geschafft.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.4
  SAY #62389 /* ~Vor deinem geistigen Auge siehst du, wie deine Gruppe an den vielen Wunden leidet, die man dir beigebracht hat. Plötzlich verheilen die Wunden und die Gesundheit kehrt zu euch allen zurück. Die Kraft der Schriftrolle durchfließt dich, und die Wirklichkeit verformt sich, um dem geistigen Bild zu entsprechen, das du geschaffen hast. Die Schriftrolle verbrennt in einem Feuer aus Energie.~ */
  IF ~~ THEN REPLY #62390 /* ~Geschafft.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 3.5
  SAY #62391 /* ~Vor deinem geistigen Auge siehst du eine uralte Bibliothek, die mit dem Wissen des Erzmagiers gefüllt ist. Du streckst die Hand aus und ziehst verschiedene Schriftrollen aus den Regalen. Die Kraft der Schriftrollen durchfließt dich, und die Wirklichkeit verformt sich, um dem geistigen Bild zu entsprechen, das du geschaffen hast. Die Schriftrolle verbrennt in einem Feuer aus Energie.~ */
  IF ~~ THEN REPLY #62392 /* ~Geschafft.~ */ EXIT
END
